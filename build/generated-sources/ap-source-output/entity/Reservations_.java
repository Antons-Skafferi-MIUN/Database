package entity;

import entity.RestaurantTables;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Reservations.class)
public class Reservations_ { 

    public static volatile SingularAttribute<Reservations, String> reservationPhone;
    public static volatile SingularAttribute<Reservations, Integer> reservationId;
    public static volatile SingularAttribute<Reservations, RestaurantTables> tableId;
    public static volatile SingularAttribute<Reservations, String> reservationName;
    public static volatile SingularAttribute<Reservations, Date> reservationDate;

}