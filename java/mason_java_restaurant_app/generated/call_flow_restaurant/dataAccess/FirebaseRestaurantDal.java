package com.portfolio.restaurant.dataAccess;


import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.*;
import com.google.firebase.cloud.FirestoreClient;
import com.portfolio.restaurant.entity.Restaurant;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Repository
public class FirebaseRestaurantDal implements IRestaurantDal {
    Firestore dbFirestore = FirestoreClient.getFirestore();


String collection_root= "dizi_ayraci";
    @Override
    @Transactional
    public List<Restaurant> getAllRestaurant() throws ExecutionException, InterruptedException {
        CollectionReference collectionReference = dbFirestore.collection(collection_root);

//        ApiFuture<DocumentSnapshot> future = documentReference.get();
        Iterable<DocumentReference> listDoc = collectionReference.listDocuments();

        List<Restaurant> listMyUser = new ArrayList<>();
        for(DocumentReference d: listDoc){
            ApiFuture<DocumentSnapshot> future = d.get();
            DocumentSnapshot document = future.get();

            Restaurant restaurant;
            if(document.exists()){
                restaurant = document.toObject(Restaurant.class);
                listMyUser.add(restaurant);
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
    public String createRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException {
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection(collection_root).document(restaurant.getDocumentId()).set(restaurant);

        return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully created "+ restaurant.getDocumentId();

    }

    @Override
    @Transactional
    public Restaurant getById(String documentId) throws ExecutionException, InterruptedException {
        DocumentReference documentReference = dbFirestore.collection(collection_root).document(documentId);
        ApiFuture<DocumentSnapshot> future = documentReference.get();
        DocumentSnapshot document = future.get();
        Restaurant restaurant;
        if(document.exists()){
            restaurant = document.toObject(Restaurant.class);
            return restaurant;
        }
        return null;
    }

    @Override
    public String updateRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException {
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection(collection_root).document(restaurant.getDocumentId()).set(restaurant);
        return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully updated " + restaurant.getDocumentId();

    }

    @Override
    public String deleteRestaurant(String documentId) {
        ApiFuture<WriteResult> writeResult =
                dbFirestore.collection(collection_root).document(documentId).delete();
        return "Successfully deleted " + documentId;
    }


}
