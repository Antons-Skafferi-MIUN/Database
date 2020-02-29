package entity;

import entity.Shifts;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Personnel.class)
public class Personnel_ { 

    public static volatile SingularAttribute<Personnel, String> personnelName;
    public static volatile SingularAttribute<Personnel, Integer> personnelId;
    public static volatile SingularAttribute<Personnel, String> personnelPhone;
    public static volatile SingularAttribute<Personnel, String> personnelType;
    public static volatile CollectionAttribute<Personnel, Shifts> shiftsCollection;

}