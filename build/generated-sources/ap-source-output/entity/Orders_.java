package entity;

import entity.OrderRows;
import entity.RestaurantTables;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Orders.class)
public class Orders_ { 

    public static volatile CollectionAttribute<Orders, OrderRows> orderRowsCollection;
    public static volatile SingularAttribute<Orders, Date> orderTime;
    public static volatile SingularAttribute<Orders, Integer> orderId;
    public static volatile SingularAttribute<Orders, RestaurantTables> tableId;

}