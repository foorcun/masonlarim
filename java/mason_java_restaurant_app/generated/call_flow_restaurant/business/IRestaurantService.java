package com.portfolio.restaurant.business;

import com.portfolio.restaurant.entity.Restaurant;

import java.util.List;
import java.util.concurrent.ExecutionException;

public interface IRestaurantService {
    List<Restaurant> getAllRestaurant() throws ExecutionException, InterruptedException;

    String createRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException;

    Restaurant getById(String documentId) throws ExecutionException, InterruptedException;

    String updateRestaurant(Restaurant restaurant) throws ExecutionException, InterruptedException;

    String deleteRestaurant(String id) throws ExecutionException, InterruptedException;

}
