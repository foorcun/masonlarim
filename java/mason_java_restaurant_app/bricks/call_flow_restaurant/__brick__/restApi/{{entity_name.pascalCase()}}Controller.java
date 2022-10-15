
package {{package_name}}.restApi;

import {{package_name}}.business.I{{entity_name.pascalCase()}}Service;
import {{package_name}}.entity.{{entity_name.pascalCase()}};


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.concurrent.ExecutionException;

@CrossOrigin
@RestController
@RequestMapping("/api")
public class {{entity_name.pascalCase()}}Controller {

@Autowired
private I{{entity_name.pascalCase()}}Service {{entity_name.camelCase()}}Manager;

public {{entity_name.pascalCase()}}Controller(I{{entity_name.pascalCase()}}Service {{entity_name.camelCase()}}Manager) {
        this.{{entity_name.camelCase()}}Manager = {{entity_name.camelCase()}}Manager;
        }


@GetMapping("/getAll{{entity_name.pascalCase()}}")
public List<{{entity_name.pascalCase()}}> getAll{{entity_name.pascalCase()}}() throws InterruptedException, ExecutionException {
        return {{entity_name.camelCase()}}Manager.getAll{{entity_name.pascalCase()}}();
        }

        
    @GetMapping("/get{{entity_name.pascalCase()}}")
    public {{entity_name.pascalCase()}} getById(@RequestParam String id)throws InterruptedException, ExecutionException{
        return {{entity_name.camelCase()}}Manager.getById(id);
    }

    @PostMapping("/create{{entity_name.pascalCase()}}")
    public String create{{entity_name.pascalCase()}}(@RequestBody {{entity_name.pascalCase()}} {{entity_name.camelCase()}})throws InterruptedException, ExecutionException{
        return {{entity_name.camelCase()}}Manager.create{{entity_name.pascalCase()}}({{entity_name.camelCase()}});
    }

    @PutMapping("/update{{entity_name.pascalCase()}}")
    public String update{{entity_name.pascalCase()}}(@RequestBody {{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException {
        return {{entity_name.camelCase()}}Manager.update{{entity_name.pascalCase()}}({{entity_name.camelCase()}});
    }

    @PutMapping("/delete{{entity_name.pascalCase()}}")
    public String delete{{entity_name.pascalCase()}}(@RequestParam String id) throws ExecutionException, InterruptedException{
        return {{entity_name.camelCase()}}Manager.delete{{entity_name.pascalCase()}}(id);
    }


    @GetMapping("/test")
    public ResponseEntity<String> testEndpoint() {
        return ResponseEntity.ok("{{entity_name.pascalCase()}} Test  Endpoint is Working");
    }

}


