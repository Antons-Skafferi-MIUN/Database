/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rosen
 */
@Entity
@Table(name = "ORDER_ROWS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderRows.findAll", query = "SELECT o FROM OrderRows o")
    , @NamedQuery(name = "OrderRows.findByOrderRowId", query = "SELECT o FROM OrderRows o WHERE o.orderRowId = :orderRowId")
    , @NamedQuery(name = "OrderRows.findByOrderChange", query = "SELECT o FROM OrderRows o WHERE o.orderChange = :orderChange")})
public class OrderRows implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ORDER_ROW_ID")
    private Integer orderRowId;
    @Size(max = 250)
    @Column(name = "ORDER_CHANGE")
    private String orderChange;
    @JoinColumn(name = "DRINK_ID", referencedColumnName = "DRINK_ID")
    @ManyToOne
    private Drinks drinkId;
    @JoinColumn(name = "FOOD_ID", referencedColumnName = "FOOD_ID")
    @ManyToOne
    private Foods foodId;
    @JoinColumn(name = "ORDER_ID", referencedColumnName = "ORDER_ID")
    @ManyToOne(optional = false)
    private Orders orderId;

    public OrderRows() {
    }

    public OrderRows(Integer orderRowId) {
        this.orderRowId = orderRowId;
    }

    public Integer getOrderRowId() {
        return orderRowId;
    }

    public void setOrderRowId(Integer orderRowId) {
        this.orderRowId = orderRowId;
    }

    public String getOrderChange() {
        return orderChange;
    }

    public void setOrderChange(String orderChange) {
        this.orderChange = orderChange;
    }

    public Drinks getDrinkId() {
        return drinkId;
    }

    public void setDrinkId(Drinks drinkId) {
        this.drinkId = drinkId;
    }

    public Foods getFoodId() {
        return foodId;
    }

    public void setFoodId(Foods foodId) {
        this.foodId = foodId;
    }

    public Orders getOrderId() {
        return orderId;
    }

    public void setOrderId(Orders orderId) {
        this.orderId = orderId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderRowId != null ? orderRowId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderRows)) {
            return false;
        }
        OrderRows other = (OrderRows) object;
        if ((this.orderRowId == null && other.orderRowId != null) || (this.orderRowId != null && !this.orderRowId.equals(other.orderRowId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderRows[ orderRowId=" + orderRowId + " ]";
    }
    
}
