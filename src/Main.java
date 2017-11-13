/**
 * Created by Jeyanthasingam on 11/12/2017.
 */
import java.io.*;
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
            StringBuilder mainModel = new StringBuilder();
            StringBuilder idModel = new StringBuilder();
            mainModel.append("package ");
            mainModel.append(packageName);
            idModel.append("package ");
            idModel.append(packageName);
            mainModel.append(";\n" +
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
            idModel.append(";\n" +
                    "\n" +
                    "import lombok.Data;\n" +
                    "import java.io.Serializable;\n" +
                    "\n" +
                    "@Data\n" +
                    "public class ");
            String[] tabl_con = tables[i].split(" \\(");
            String[] tableName = tabl_con[0].split("`");
            mainModel.append(tableName[1]);
            mainModel.append("\")\n" +
                    "@IdClass(");
            String className=tableName[1].substring(1);
            mainModel.append(className);
            mainModel.append("Id.class)\n" +
                    "public class ");
            mainModel.append(className);
            idModel.append(className);
            idModel.append("Id implements Serializable {\n" +
                    "\n" +
                    "    ");
            mainModel.append(" {\n" +
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
                    mainModel.append("@Id\n" +
                            "    ");
                    idModel.append("    private ");
                    idModel.append(data[a].substring(0,1).toLowerCase()+data[a].substring(1));
                    idModel.append(";\n" +
                            "    ");
                }
                mainModel.append("@Column(name = \"");
                mainModel.append(data[a]);
                mainModel.append("\")\n" +
                        "    private ");

                if(data[a+1].contains("char")){
                    mainModel.append("String ");
                    idModel.append("String ");
                }
                else if(data[a+1].contains("tinyint")){
                    mainModel.append("Boolean ");
                    idModel.append("Boolean ");
                }
                else if(data[a+1].contains("blob")){
                    mainModel.append("Blob ");
                    idModel.append("Blob ");
                }
                else if(data[a+1].contains("int")){
                    mainModel.append("Integer ");
                    idModel.append("Integer ");
                }
                else if(data[a+1].contains("timestamp")){
                    mainModel.append("Date ");
                    idModel.append("Date ");
                }
                else if(data[a+1].contains("double")){
                    mainModel.append("Double ");
                    idModel.append("Double ");
                }
                else System.out.println(data[a+1]);
                mainModel.append(data[a].substring(0,1).toLowerCase()+data[a].substring(1));
                mainModel.append(";\n" +
                        "    ");

            }
            mainModel.append("\n" +
                    "\n" +
                    "}\n");
            idModel.append("\n" +
                    "\n" +
                    "}\n");



            BufferedWriter bw = null;
            try {

                //Specify the file name and path here
                File file = new File("models/"+className+".java");

	 /* This logic will make sure that the file
	  * gets created if it is not present at the
	  * specified location*/
                if (!file.exists()) {
                    file.createNewFile();
                }

                FileWriter fw = new FileWriter(file);
                bw = new BufferedWriter(fw);
                bw.write(mainModel.toString());
                System.out.println("File written Successfully");

            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
            finally
            {
                try{
                    if(bw!=null)
                        bw.close();
                }catch(Exception ex){
                    System.out.println("Error in closing the BufferedWriter"+ex);
                }
            }




            try {

                //Specify the file name and path here
                File file = new File("models/"+className+"Id.java");

	 /* This logic will make sure that the file
	  * gets created if it is not present at the
	  * specified location*/
                if (!file.exists()) {
                    file.createNewFile();
                }

                FileWriter fw = new FileWriter(file);
                bw = new BufferedWriter(fw);
                bw.write(idModel.toString());
                System.out.println("File written Successfully");

            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
            finally
            {
                try{
                    if(bw!=null)
                        bw.close();
                }catch(Exception ex){
                    System.out.println("Error in closing the BufferedWriter"+ex);
                }
            }
        }
    }
}
