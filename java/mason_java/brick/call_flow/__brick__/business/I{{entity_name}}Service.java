package {{package_name}}.business;

import {{package_name}}.entity.{{entity_name}};

import java.util.List;
import java.util.concurrent.ExecutionException;

public interface I{{entity_name}}Service {
    List<{{entity_name}}> getAll{{entity_name}}() throws ExecutionException, InterruptedException;

    String create{{entity_name}}({{entity_name}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException;

    {{entity_name}} getById(String documentId) throws ExecutionException, InterruptedException;

    String update{{entity_name}}({{entity_name}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException;

    String delete{{entity_name}}(String documentId);
}
