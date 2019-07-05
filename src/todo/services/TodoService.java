package todo.services;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;

import todo.forms.EntryForm;
import todo.forms.IndexForm;
import todo.utils.DBUtils;

public class TodoService {
	public List<IndexForm> findAll() throws ServletException{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;

		try{
			//データベースの接続を確立
			con = DBUtils.getConnection();

			//sql
			sql = "SELECT id,title,importance,deadline FROM todolist ORDER BY id";

			//select命令の準備
			ps = con.prepareStatement(sql);

			//select命令を実行
			rs = ps.executeQuery();
			List<IndexForm> result = new ArrayList<>();

			while(rs.next()){

				IndexForm form = new IndexForm();

				result.add(form);

				form.setId(rs.getInt("id"));
				form.setTitle(rs.getString("title"));
				form.setImportance(rs.getInt("importance"));
				form.setDeadline(rs.getDate("deadline"));

			}
			return result;

		}catch(Exception e){
			throw new ServletException(e);
		}finally{
			DBUtils.close(con, ps, rs);
		}
	}

	public void register(EntryForm form){

		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;

		try{
			//データベースの接続を確立
			con = DBUtils.getConnection();
		//sql
			sql = "INSERT INTO todolist (title, details, importance, deadline)"
					+ "VALUES(?, ?, ?, ?)";

			// プレースホルダに値を設定
			ps = con.prepareStatement(sql);

			ps.setString(1, form.getTitle());
			ps.setString(2, form.getDetails());
			ps.setString(3, form.getImportance());
			ps.setString(4, form.getDeadline().equals("") ? null : form.getDeadline());;

			//select命令を実行
			ps.executeUpdate();


		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtils.close(con,ps, rs);
		}
	}
}
