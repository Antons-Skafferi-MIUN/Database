package General;

import General.Shifts;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-13T16:16:02")
@StaticMetamodel(Personnel.class)
public class Personnel_ { 

    public static volatile SingularAttribute<Personnel, String> personnelName;
    public static volatile ListAttribute<Personnel, Shifts> shiftsList;
    public static volatile SingularAttribute<Personnel, Integer> personnelId;
    public static volatile SingularAttribute<Personnel, String> personnelPhone;
    public static volatile SingularAttribute<Personnel, String> personnelType;

}