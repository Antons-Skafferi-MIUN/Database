package entity;

import entity.OrderRows;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Drinks.class)
public class Drinks_ { 

    public static volatile CollectionAttribute<Drinks, OrderRows> orderRowsCollection;
    public static volatile SingularAttribute<Drinks, Integer> drinkId;
    public static volatile SingularAttribute<Drinks, String> drinkType;
    public static volatile SingularAttribute<Drinks, Integer> drinkPrice;
    public static volatile SingularAttribute<Drinks, String> drinkCategory;
    public static volatile SingularAttribute<Drinks, String> drinkName;

}