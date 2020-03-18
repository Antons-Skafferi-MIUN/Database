package General;

import General.Reservations;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-18T09:28:54")
@StaticMetamodel(RestaurantTables.class)
public class RestaurantTables_ { 

    public static volatile SingularAttribute<RestaurantTables, Integer> tableAvailableSeats;
    public static volatile ListAttribute<RestaurantTables, Reservations> reservationsList;
    public static volatile SingularAttribute<RestaurantTables, Integer> tableTotalSeats;
    public static volatile SingularAttribute<RestaurantTables, Integer> tableId;
    public static volatile SingularAttribute<RestaurantTables, String> tableStatus;

}