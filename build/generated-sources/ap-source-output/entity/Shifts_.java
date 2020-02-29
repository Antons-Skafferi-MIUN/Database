package entity;

import entity.Personnel;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-02-29T02:07:01")
@StaticMetamodel(Shifts.class)
public class Shifts_ { 

    public static volatile SingularAttribute<Shifts, Integer> shiftId;
    public static volatile SingularAttribute<Shifts, String> shiftType;
    public static volatile SingularAttribute<Shifts, Personnel> personnelId;
    public static volatile SingularAttribute<Shifts, Date> shiftDate;

}