package {{package_name}}.dataAccess;


import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.*;
import com.google.firebase.cloud.FirestoreClient;
import {{package_name}}.entity.{{entity_name.pascalCase()}};
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Repository
public class Firebase{{entity_name.pascalCase()}}Dal implements I{{entity_name.pascalCase()}}Dal {
    Firestore dbFirestore = FirestoreClient.getFirestore();


String collection_root= "{{collection_root}}";
    @Override
    @Transactional
    public List<{{entity_name.pascalCase()}}> getAll{{entity_name.pascalCase()}}() throws ExecutionException, InterruptedException {
        CollectionReference collectionReference = dbFirestore.collection(collection_root);

//        ApiFuture<DocumentSnapshot> future = documentReference.get();
        Iterable<DocumentReference> listDoc = collectionReference.listDocuments();

        List<{{entity_name.pascalCase()}}> listMyUser = new ArrayList<>();
        for(DocumentReference d: listDoc){
            ApiFuture<DocumentSnapshot> future = d.get();
            DocumentSnapshot document = future.get();

            {{entity_name.pascalCase()}} {{entity_name.camelCase()}};
            if(document.exists()){
                {{entity_name.camelCase()}} = document.toObject({{entity_name.pascalCase()}}.class);
                listMyUser.add({{entity_name.camelCase()}});
            }

//                listMyUser.add(d.get().get());
        }
        if(!listMyUser.isEmpty()){
            return listMyUser;
        }

        return null;
    }

    @Override
    @Transactional
    public String create{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException {
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection(collection_root).document({{entity_name.camelCase()}}.getDocumentId()).set({{entity_name.camelCase()}});

        return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully created "+ {{entity_name.camelCase()}}.getDocumentId();

    }

    @Override
    @Transactional
    public {{entity_name.pascalCase()}} getById(String documentId) throws ExecutionException, InterruptedException {
        DocumentReference documentReference = dbFirestore.collection(collection_root).document(documentId);
        ApiFuture<DocumentSnapshot> future = documentReference.get();
        DocumentSnapshot document = future.get();
        {{entity_name.pascalCase()}} {{entity_name.camelCase()}};
        if(document.exists()){
            {{entity_name.camelCase()}} = document.toObject({{entity_name.pascalCase()}}.class);
            return {{entity_name.camelCase()}};
        }
        return null;
    }

    @Override
    public String update{{entity_name.pascalCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) throws ExecutionException, InterruptedException {
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection(collection_root).document({{entity_name.camelCase()}}.getDocumentId()).set({{entity_name.camelCase()}});
        return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully updated " + {{entity_name.camelCase()}}.getDocumentId();

    }

    @Override
    public String delete{{entity_name.pascalCase()}}(String documentId) {
        ApiFuture<WriteResult> writeResult =
                dbFirestore.collection(collection_root).document(documentId).delete();
        return "Successfully deleted " + documentId;
    }


}
