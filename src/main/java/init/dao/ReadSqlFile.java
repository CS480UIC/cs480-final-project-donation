package init.dao;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

public class ReadSqlFile {
	
	@SuppressWarnings("resource")
	public static void main(String[] args) throws IOException {
		String temp = "";
		ArrayList<String> sqls = new ArrayList<String>();
		String onesql ="";
		File file = new File("/home/kq/Desktop/CS480donation/cs480-final-project-donation/sql/testqueries.sql"); /*your sql file absolute path*/
		if(!file.exists()) {
			System.out.println("Cannot find the sql files.");
			System.exit(0);
		}
        FileReader fd = new FileReader(file);
		BufferedReader reader=null;
		
	    reader = new BufferedReader(fd);
		while((temp=reader.readLine())!=null){
			onesql += temp;
			if (onesql.indexOf(";")!= -1) {
			  onesql= onesql.substring(0,onesql.indexOf(";"));
			  sqls.add(onesql);
			  onesql="";
			}
		}
		int numSqls = sqls.size();
		for(String s:sqls) {
			System.out.println(s);
		}
  }
	
}
