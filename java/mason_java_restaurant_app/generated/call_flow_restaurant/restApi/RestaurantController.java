
package com.portfolio.restaurant.restApi;

import com.portfolio.restaurant.business.IRestaurantService;
import com.portfolio.restaurant.entity.Restaurant;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.concurrent.ExecutionException;

@CrossOrigin
@RestController
@RequestMapping("/api")
public class RestaurantController {

@Autowired
private IRestaurantService restaurantManager;

public RestaurantController(IRestaurantService restaurantManager) {
        this.restaurantManager = restaurantManager;
        }


@GetMapping("/getAllRestaurant")
public List<Restaurant> getAllRestaurant() throws InterruptedException, ExecutionException {
        return restaurantManager.getAllRestaurant();
        }

        
    @GetMapping("/getRestaurant")
    public Restaurant getById(@RequestParam String id)throws InterruptedException, ExecutionException{
        return restaurantManager.getById(id);
    }

    @PostMapping("/createRestaurant")
    public String createRestaurant(@RequestBody Restaurant restaurant)throws InterruptedException, ExecutionException{
        return restaurantManager.createRestaurant(restaurant);
    }

    @PutMapping("/updateRestaurant")
    public String updateRestaurant(@RequestBody Restaurant restaurant) throws ExecutionException, InterruptedException {
        return restaurantManager.updateRestaurant(restaurant);
    }

    @PutMapping("/deleteRestaurant")
    public String deleteRestaurant(@RequestParam String id) throws ExecutionException, InterruptedException{
        return restaurantManager.deleteRestaurant(id);
    }


    @GetMapping("/test")
    public ResponseEntity<String> testEndpoint() {
        return ResponseEntity.ok("Restaurant Test  Endpoint is Working");
    }

}


