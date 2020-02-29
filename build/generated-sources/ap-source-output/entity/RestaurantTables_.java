package entity;

import entity.Orders;
import entity.Reservations;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(RestaurantTables.class)
public class RestaurantTables_ { 

    public static volatile CollectionAttribute<RestaurantTables, Reservations> reservationsCollection;
    public static volatile SingularAttribute<RestaurantTables, Integer> tableAvailableSeats;
    public static volatile SingularAttribute<RestaurantTables, Integer> tableTotalSeats;
    public static volatile SingularAttribute<RestaurantTables, Integer> tableId;
    public static volatile CollectionAttribute<RestaurantTables, Orders> ordersCollection;
    public static volatile SingularAttribute<RestaurantTables, String> tableStatus;

}