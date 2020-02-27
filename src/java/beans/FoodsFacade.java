
package beans;

import Model.Foods;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Stateless
public class FoodsFacade extends AbstractFacade<Foods> {

	@PersistenceContext(unitName = "SampleDBAppPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	public FoodsFacade() {
		super(Foods.class);
	}

}
