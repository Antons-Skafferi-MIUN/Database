
package beans;

import Model.Orders;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Stateless
public class OrdersFacade extends AbstractFacade<Orders> {

	@PersistenceContext(unitName = "SampleDBAppPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	public OrdersFacade() {
		super(Orders.class);
	}

}
