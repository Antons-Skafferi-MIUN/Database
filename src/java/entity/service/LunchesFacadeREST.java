/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.service;

import entity.Lunches;
import java.util.List;
import javax.ejb.Asynchronous;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.container.AsyncResponse;
import javax.ws.rs.container.Suspended;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author Rosen
 */
@Stateless
@Path("entity.lunches")
public class LunchesFacadeREST extends AbstractFacade<Lunches> {

    @PersistenceContext(unitName = "AntonAPIPU")
    private EntityManager em;

    public LunchesFacadeREST() {
        super(Lunches.class);
    }


    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Response edit(@PathParam("id") Integer id, Lunches entity) {
        super.edit(entity);
        return Response.status(200)
               .entity("Lunch with id: " + id + " is edited.").build();
    }

    @DELETE
    @Path("{id}")
    public Response remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
        return Response.status(200)
               .entity("Lunch with id: " + id + " is removed.").build();
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Lunches find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Lunches> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public List<Lunches> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    @POST
    @Consumes(value = {MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    @Asynchronous
    public void create(@Suspended final AsyncResponse asyncResponse, final Lunches entity) {
        asyncResponse.resume(doCreate(entity));
    }

    private Response doCreate(Lunches entity) {
        super.create(entity);
        return Response.status(200)
                .entity("Lunch is added.").build();
    }
    
}
