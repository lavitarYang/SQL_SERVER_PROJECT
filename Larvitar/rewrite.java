
import java.util.*;
import java.io.*;
public class rewrite {
	public static void main(String args[]) throws IOException {
		List<String> list = new ArrayList<>();
		try {
			File text = new File("CAREER.txt");
			Scanner sc= new Scanner(text);
			sc.nextLine();
			while(sc.hasNextLine()) {
				list.add("insert into CAREER values(".concat("\'".concat(sc.nextLine().replace("\t","\',\'").concat("\')\n"))));
			}
			
			FileWriter query = new FileWriter("Query.txt",true);
			for(String s:list) {
				System.out.print(s);
				query.write(s);
			}
			query.close();
			sc.close();
		}catch(FileNotFoundException ex) {
			System.out.print("no such file");
		}
	}
}
