package {{package_name}}.business;

import {{package_name}}.dataAccess.I{{entity_name.pascalCase()}}Dal;

import {{package_name}}.entity.{{entity_name.pascalCase()}};
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.ExecutionException;

@Service
public class {{entity_name.pascalCase()}}Manager implements  I{{entity_name.pascalCase()}}Service{

    @Autowired
    private I{{entity_name.pascalCase()}}Dal {{entity_name.camelCase()}}Dal;
    @Override
    public List<{{entity_name.pascalCase()}}> getAll{{entity_name.pascalCase()}}() throws ExecutionException, InterruptedException {
        return {{entity_name.camelCase()}}Dal.getAll{{entity_name.pascalCase()}}();
    }

    @Override
    public String create{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException {
        return {{entity_name.camelCase()}}Dal.create{{entity_name.pascalCase()}}({{entity_name.camelCase()}});
    }

    @Override
    public {{entity_name.pascalCase()}} getById(String documentId) throws ExecutionException, InterruptedException {
        return {{entity_name.camelCase()}}Dal.getById(documentId);
    }

    @Override
    public String update{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException {
        return {{entity_name.camelCase()}}Dal.update{{entity_name.pascalCase()}}({{entity_name.camelCase()}});
    }

    @Override
    public String delete{{entity_name.pascalCase()}}(String documentId) {
        return {{entity_name.camelCase()}}Dal.delete{{entity_name.pascalCase()}}(documentId);
    }


}
