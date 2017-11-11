import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Main {


    public static void main(String[] args) throws IOException {
        System.out.print("Enter package:");
        Scanner scan = new Scanner(System.in);
        String packageName = scan.nextLine();
        BufferedReader br = new BufferedReader(new FileReader("polixia_db_v6.0.1.sql"));
        String everything;
        try {
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();

            while (line != null) {
                sb.append(line);
                sb.append(System.lineSeparator());
                line = br.readLine();
            }
            everything = sb.toString();
        } finally {
            br.close();
        }
        String[] tables = everything.split("CREATE TABLE");
        for(int i=1;i<tables.length;i++){
            StringBuilder sb = new StringBuilder();
            sb.append("package ");
            sb.append(packageName);
            sb.append(";\n" +
                    "\n" +
                    "import com.fasterxml.jackson.annotation.JsonView;\n" +
                    "import com.polixia.policywallet.server.jview.DataView;\n" +
                    "import lombok.Data;\n" +
                    "\n" +
                    "import javax.persistence.*;\n" +
                    "import java.util.Set;\n" +
                    "\n" +
                    "@Entity\n" +
                    "@Data\n" +
                    "@Table(name = \"");
                    String[] tabl_con = tables[i].split(" \\(");
                    String[] tableName = tabl_con[0].split("`");
                    sb.append(tableName[1]);
                    sb.append("\")\n" +
                            "@IdClass(");
                    String className=tableName[1].substring(1);
                    sb.append(className);
                    sb.append("Id.class)\n" +
                            "public class ");
                    sb.append(className);
                    sb.append(" {\n" +
                            "\n" +
                            "    ");
                    String[] primary=tabl_con[2].split("\\)")[0].split("`");
                    List<String> prime=new ArrayList<>();
                    for(int j=1;j<primary.length;j+=2){
                        prime.add(primary[j]);
                    }


            String[] data =tabl_con[1].split("`");
            for(int a=1;a+1<data.length;a+=2){
                if(prime.contains(data[a])){
                    sb.append("@Id\n" +
                            "    ");
                    sb.append("@JsonView(DataView.Key.class)\n" +
                            "    ");
                }
                else sb.append("@JsonView(DataView.Basic.class)\n" +
                        "    ");
                sb.append("@Column(name = \"");
                sb.append(data[a]);
                sb.append("\")\n" +
                        "    private ");
                if(data[a+1].contains("char")){
                    sb.append("String ");
                }
                sb.append(data[a].substring(0,1).toLowerCase()+data[a].substring(1));
                sb.append(";\n" +
                        "    ");
            }
            sb.append("\n" +
                    "\n" +
                    "}\n");
            System.out.println(sb);
            break;



        }


    }
}
