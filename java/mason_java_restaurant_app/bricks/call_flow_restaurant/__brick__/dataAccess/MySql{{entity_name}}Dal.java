package {{package_name}}.dataAccess;


import {{package_name}}.entity.{{entity_name.pascalCase()}};
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.List;

@Repository
public class MySql{{entity_name.pascalCase()}}Dal implements I{{entity_name.pascalCase()}}Dal{

    private EntityManager  entityManager;

    public MySql{{entity_name.pascalCase()}}Dal(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


    @Override
    @Transactional
    public List<{{entity_name.pascalCase()}}> getAll{{entity_name.pascalCase()}}() {
        Session session = entityManager.unwrap(Session.class);
        List<{{entity_name.pascalCase()}}> {{entity_name.camelCase()}}s = session.createQuery("from {{entity_name.pascalCase()}}", {{entity_name.pascalCase()}}.class).getResultList();
        return {{entity_name.camelCase()}}s;

    }

    @Override
    @Transactional
    public String create{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) {
        Session session = entityManager.unwrap(Session.class);
        session.saveOrUpdate({{entity_name.camelCase()}});
        //return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully created "+ {{entity_name.camelCase()}}.getDocumentId();
        return "Successfully created ";


    }

    @Override
    @Transactional

    public String update{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) {
        Session session = entityManager.unwrap(Session.class);
        session.saveOrUpdate({{entity_name.camelCase()}});
        //return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully updated " + {{entity_name.camelCase()}}.getDocumentId();
        return "Successfully updated";


    }

    @Override
    @Transactional

    public String delete{{entity_name.pascalCase()}}(String id) {
        Session session = entityManager.unwrap(Session.class);
        {{entity_name.pascalCase()}} {{entity_name.camelCase()}}ToDelete = session.get({{entity_name.pascalCase()}}.class, Integer.parseInt(id));
        session.delete({{entity_name.camelCase()}}ToDelete);

        return "Successfully deleted " + id;


    }

    @Override
    @Transactional

    public {{entity_name.pascalCase()}} getById(String id) {
        Session session = entityManager.unwrap(Session.class);
        {{entity_name.pascalCase()}} {{entity_name.camelCase()}} = session.get({{entity_name.pascalCase()}}.class, Integer.parseInt(id));
        return {{entity_name.camelCase()}};

    }
}
