package todo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todo.forms.EntryForm;
import todo.services.TodoService;

@WebServlet("/entry.html")
public class EntryServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//初期値
		EntryForm form = new EntryForm();
		form.setImportance("3");
		req.setAttribute("form", form);

		getServletContext().getRequestDispatcher("/WEB-INF/entry.jsp")
			.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		try {
			//フォームへ値をセット
			EntryForm form = new EntryForm();
			form.setTitle(req.getParameter("title"));
			form.setDetails(req.getParameter("details"));
			form.setImportance(req.getParameter("importance"));
			form.setDeadline(req.getParameter("deadline"));

			//バリデーション
			List<String> errors = validate(req);

			if(errors.size() != 0) {
				//jspへデータを送る
				req.setAttribute("errors", errors);
				req.setAttribute("form", form);
				getServletContext().getRequestDispatcher("/WEB-INF/entry.jsp").forward(req, resp);
				return;
			}

			// DBへ登録
			TodoService service = new TodoService();
			service.register(form);


			// リダイレクト
			resp.sendRedirect("index.html");

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	private List<String> validate(HttpServletRequest req){
		List<String> errors = new ArrayList<>();

		String title = req.getParameter("title");
		String importance =req.getParameter("importance");

		//題名の必須入力チェック
		if(title == null || title.equals("")) {
			errors.add("題名は必須入力です。");
		}
		if(title.length() > 100) {
			errors.add("題名は100文字以内にしてください。");
		}

		//重要度のチェック
		try {
			int imp = Integer.parseInt(importance);
			if(1 > imp || imp > 3) {
				errors.add("重要度は★～★★★を選択して下さい。");
			}
		}catch(NumberFormatException e) {
			errors.add("重要度は★～★★★を選択して下さい。");
		}

		return errors;

	}

}
