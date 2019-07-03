<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:include page="header.jsp">
	<jsp:param name="title" value="TODOリスト｜更新" />
</jsp:include>

			<form action="index.html" method="post">

			<div class="alert alert-success alert-dismissible fade in" role="alert" id="seiko">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
				<strong> 完了しました!</strong>
				<ul>
			  		<li>No.27のTodoを更新しました。</li>
				</ul>
			</div>
			<div class="alert alert-danger alert-dismissible fade in" role="alert" id="sippai">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
				<strong > エラーが発生しました!</strong>
				<ul>
			  		<li>題名は必須入力です。</li>
			  		<li>題名は100文字以内にしてください。</li>
			  		<li>期限は「YYYY/MM/DD」形式で入力してください。</li>
			  	</ul>
			</div>
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-11"><h2 class="dai">登録フォーム</h2></div>
			</div>
							<hr>

	 		<div class="form-group ">
				<label class="col-sm-1 control-label"></label>
	    		<label for="daimei" class="col-sm-2 control-label">題名</label>
	    		<div class="col-sm-9">
	      		<input type="text" class="form-control" id="daimei" placeholder="題名" value="テストテスト"></div>
	    	</div>

	    	<div class="form-group">
			  	<label class="col-sm-1 control-label"></label>
			    <label for="syosai" class="col-sm-2 control-label">詳細</label>
	  			<div class="col-sm-9">
				<textarea class="form-control" id="syosai" placeholder="備考" rows="3">SQLの確認テストの採点と報告書を作成する。</textarea></div>
	  		</div>

			<div class="form-group">
			  	<label class="col-sm-1 control-label"></label>
			    <label class="col-sm-2 control-label">重要度</label>


			    <div class="col-sm-9">

					<label class="radio-inline">
			  			<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked> ★★★
					</label><br>
					<label class="radio-inline">
				  		<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> ★★
					</label><br>
					<label class="radio-inline">
				  		<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> ★
					</label><br>
				</div>
			</div>
			<div class="form-group ">
				<label class="col-sm-1 control-label"></label>
	    		<label for="kigen" class="col-sm-2 control-label">期限</label>
	    		<div class="col-sm-9">
	      		<input type="text" class="form-control" id="kigen" placeholder="期限" value="2015/06/15">
	      		</div>
	    	</div>

	    	<div class="col-sm-3 control-label"></div>

		    	<button type="submit" class="btn btn-default button" >キャンセル</button>
			    <button type="submit" class="btn btn-info button" >追加</button>
			    <button type="submit" class="btn btn-danger button" id="right" >削除</button>
			</form>
<jsp:include page="footer.jsp"></jsp:include>