
package beans;

import Model.RestaurantTables;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Stateless
public class RestaurantTablesFacade extends AbstractFacade<RestaurantTables> {

	@PersistenceContext(unitName = "SampleDBAppPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	public RestaurantTablesFacade() {
		super(RestaurantTables.class);
	}

}
