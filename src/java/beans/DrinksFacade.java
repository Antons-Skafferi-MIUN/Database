
package beans;

import Model.Drinks;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Stateless
public class DrinksFacade extends AbstractFacade<Drinks> {

	@PersistenceContext(unitName = "SampleDBAppPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	public DrinksFacade() {
		super(Drinks.class);
	}

}
