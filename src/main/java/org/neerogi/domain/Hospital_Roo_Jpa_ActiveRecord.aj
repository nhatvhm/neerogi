// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.neerogi.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.neerogi.domain.Hospital;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Hospital_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Hospital.entityManager;
    
    public static final EntityManager Hospital.entityManager() {
        EntityManager em = new Hospital().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Hospital.countHospitals() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Hospital o", Long.class).getSingleResult();
    }
    
    public static List<Hospital> Hospital.findAllHospitals() {
        return entityManager().createQuery("SELECT o FROM Hospital o", Hospital.class).getResultList();
    }
    
    public static Hospital Hospital.findHospital(Integer id) {
        if (id == null) return null;
        return entityManager().find(Hospital.class, id);
    }
    
    public static List<Hospital> Hospital.findHospitalEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Hospital o", Hospital.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Hospital.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Hospital.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Hospital attached = Hospital.findHospital(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Hospital.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Hospital.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Hospital Hospital.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Hospital merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
