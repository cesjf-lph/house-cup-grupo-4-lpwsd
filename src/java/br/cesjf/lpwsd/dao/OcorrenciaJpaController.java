/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lpwsd.dao;

import br.cesjf.lpwsd.Aluno;
import br.cesjf.lpwsd.Ocorrencia;
import br.cesjf.lpwsd.Professor;
import br.cesjf.lpwsd.dao.exceptions.NonexistentEntityException;
import br.cesjf.lpwsd.dao.exceptions.RollbackFailureException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;

/**
 *
 * @author aluno
 */
public class OcorrenciaJpaController implements Serializable {

    public OcorrenciaJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Ocorrencia ocorrencia) throws RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            em.persist(ocorrencia);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Ocorrencia ocorrencia) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            ocorrencia = em.merge(ocorrencia);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = ocorrencia.getId();
                if (findOcorrencia(id) == null) {
                    throw new NonexistentEntityException("The ocorrencia with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            Ocorrencia ocorrencia;
            try {
                ocorrencia = em.getReference(Ocorrencia.class, id);
                ocorrencia.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The ocorrencia with id " + id + " no longer exists.", enfe);
            }
            em.remove(ocorrencia);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Ocorrencia> findOcorrenciaEntities() {
        return findOcorrenciaEntities(true, -1, -1);
    }
    
    public List<Ocorrencia> findOcorrenciaEntities(int maxResults, int firstResult) {
        return findOcorrenciaEntities(false, maxResults, firstResult);
    }

    private List<Ocorrencia> findOcorrenciaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Ocorrencia.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    
    public List<Ocorrencia> findOcorrenciaEntitiesByAluno(Aluno aluno) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT o FROM Ocorrencia AS o WHERE o.aluno.id =?1");
            q.setParameter(1, aluno.getId());
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    
    public List<Ocorrencia> findOcorrenciaEntitiesByProfessor(Professor professor) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT o FROM Ocorrencia AS o WHERE o.professor.id =?1");
            q.setParameter(1, professor.getId());
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    
    public List<Object[]> findOcorrenciaEntitiesByGrupo() {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT SUM(o.pontos) AS pontuacao, o.aluno.grupo FROM Ocorrencia AS o  GROUP BY o.aluno.grupo");
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    
    public List<Object[]> findOcorrenciaEntitiesByGrupoPeriodo(Date dataInicio, Date dataFim) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT SUM(o.pontos) AS pontuacao, o.aluno.grupo FROM Ocorrencia AS o WHERE o.data BETWEEN :data1 AND :data2 GROUP BY o.aluno.grupo");
            q.setParameter("data1", dataInicio);
            q.setParameter("data2", dataFim);
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    

    public Ocorrencia findOcorrencia(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Ocorrencia.class, id);
        } finally {
            em.close();
        }
    }

    public int getOcorrenciaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Ocorrencia> rt = cq.from(Ocorrencia.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
