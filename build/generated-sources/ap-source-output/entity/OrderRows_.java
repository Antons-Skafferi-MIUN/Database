package entity;

import entity.Drinks;
import entity.Foods;
import entity.Orders;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(OrderRows.class)
public class OrderRows_ { 

    public static volatile SingularAttribute<OrderRows, Drinks> drinkId;
    public static volatile SingularAttribute<OrderRows, Orders> orderId;
    public static volatile SingularAttribute<OrderRows, Foods> foodId;
    public static volatile SingularAttribute<OrderRows, Integer> orderRowId;
    public static volatile SingularAttribute<OrderRows, String> orderChange;

}