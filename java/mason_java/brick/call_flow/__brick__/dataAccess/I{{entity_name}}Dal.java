package {{package_name}}.dataAccess;



import {{package_name}}.entity.{{entity_name.pascalCase()}};

import java.util.List;
import java.util.concurrent.ExecutionException;

public interface I{{entity_name.pascalCase()}}Dal {
    List<{{entity_name.pascalCase()}}> getAll{{entity_name.pascalCase()}}() throws ExecutionException, InterruptedException;

    String create{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException;

    {{entity_name.pascalCase()}} getById(String documentId) throws ExecutionException, InterruptedException;

    String update{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException;

    String delete{{entity_name.pascalCase()}}(String documentId);
}

