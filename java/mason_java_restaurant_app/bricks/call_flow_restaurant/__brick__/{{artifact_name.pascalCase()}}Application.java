package {{package_name}};


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class {{artifact_name.pascalCase()}}Application{

public static void main(String[]args){
                    
        SpringApplication.run({{artifact_name.pascalCase()}}Application.class,args);
        
        }
}
