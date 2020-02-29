/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.service;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 *
 * @author Rosen
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(entity.service.DrinksFacadeREST.class);
        resources.add(entity.service.EventsFacadeREST.class);
        resources.add(entity.service.FoodsFacadeREST.class);
        resources.add(entity.service.LunchesFacadeREST.class);
        resources.add(entity.service.OrderRowsFacadeREST.class);
        resources.add(entity.service.OrdersFacadeREST.class);
        resources.add(entity.service.PersonnelFacadeREST.class);
        resources.add(entity.service.ReservationsFacadeREST.class);
        resources.add(entity.service.RestaurantTablesFacadeREST.class);
        resources.add(entity.service.ShiftsFacadeREST.class);
    }
    
}
