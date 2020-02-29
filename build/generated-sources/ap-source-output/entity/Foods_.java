package entity;

import entity.OrderRows;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Foods.class)
public class Foods_ { 

    public static volatile SingularAttribute<Foods, Integer> foodPrice;
    public static volatile CollectionAttribute<Foods, OrderRows> orderRowsCollection;
    public static volatile SingularAttribute<Foods, String> foodName;
    public static volatile SingularAttribute<Foods, Integer> foodId;
    public static volatile SingularAttribute<Foods, String> foodCategory;

}