package com.portfolio.restaurant.dataAccess;


import com.portfolio.restaurant.entity.Restaurant;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.List;

@Repository
public class MySqlRestaurantDal implements IRestaurantDal{

    private EntityManager  entityManager;

    public MySqlRestaurantDal(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


    @Override
    @Transactional
    public List<Restaurant> getAllRestaurant() {
        Session session = entityManager.unwrap(Session.class);
        List<Restaurant> restaurants = session.createQuery("from Restaurant", Restaurant.class).getResultList();
        return restaurants;

    }

    @Override
    @Transactional
    public String createRestaurant(Restaurant restaurant) {
        Session session = entityManager.unwrap(Session.class);
        session.saveOrUpdate(restaurant);
        //return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully created "+ restaurant.getDocumentId();
        return "Successfully created ";


    }

    @Override
    @Transactional

    public String updateRestaurant(Restaurant restaurant) {
        Session session = entityManager.unwrap(Session.class);
        session.saveOrUpdate(restaurant);
        //return collectionsApiFuture.get().getUpdateTime().toString() +"\n"+"Successfully updated " + restaurant.getDocumentId();
        return "Successfully updated";


    }

    @Override
    @Transactional

    public String deleteRestaurant(String id) {
        Session session = entityManager.unwrap(Session.class);
        Restaurant restaurantToDelete = session.get(Restaurant.class, Integer.parseInt(id));
        session.delete(restaurantToDelete);

        return "Successfully deleted " + id;


    }

    @Override
    @Transactional

    public Restaurant getById(String id) {
        Session session = entityManager.unwrap(Session.class);
        Restaurant restaurant = session.get(Restaurant.class, Integer.parseInt(id));
        return restaurant;

    }
}
