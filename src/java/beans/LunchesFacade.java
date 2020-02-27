
package beans;

import Model.Lunches;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Stateless
public class LunchesFacade extends AbstractFacade<Lunches> {

	@PersistenceContext(unitName = "SampleDBAppPU")
	private EntityManager em;

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

	public LunchesFacade() {
		super(Lunches.class);
	}

}
