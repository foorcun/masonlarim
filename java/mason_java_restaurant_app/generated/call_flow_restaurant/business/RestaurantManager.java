package com.portfolio.restaurant.business;

import com.portfolio.restaurant.dataAccess.IRestaurantDal;

import com.portfolio.restaurant.entity.Restaurant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.ExecutionException;

@Service
public class RestaurantManager implements  IRestaurantService{

    @Autowired
    private IRestaurantDal restaurantDal;
    @Override
    public List<Restaurant> getAllRestaurant() throws ExecutionException, InterruptedException {
        return restaurantDal.getAllRestaurant();
    }

    @Override
    public String createRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException {
        return restaurantDal.createRestaurant(restaurant);
    }

    @Override
    public Restaurant getById(String documentId) throws ExecutionException, InterruptedException {
        return restaurantDal.getById(documentId);
    }

    @Override
    public String updateRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException {
        return restaurantDal.updateRestaurant(restaurant);
    }

    @Override
    public String deleteRestaurant(String id) throws ExecutionException, InterruptedException{
        return restaurantDal.deleteRestaurant(id);
    }


}
