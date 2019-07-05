package todo.utils;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class HTMLUtils {
	public static String LOCALDATE_FORMAT = "uuuu/MM/dd";

	public static String important(int importance) {
		String star;
		if(importance == 1) {
			star = "★";
		}else if(importance == 2) {
			star = "★★";
		}else{
			star = "★★★";
		}

		return star;
	}
	public static String date(Date date){
		if(date == null) {
			return "";
		}
        //SimpleDateFormatクラスでフォーマットパターンを設定する
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		return sdf.format(date);
	}
}
