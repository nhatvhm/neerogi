// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.neerogi.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.neerogi.domain.AllergyType;

privileged aspect AllergyType_Roo_Jpa_Entity {
    
    declare @type: AllergyType: @Entity;
    
    declare @type: AllergyType: @Table(name = "allergy_type");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer AllergyType.id;
    
    public Integer AllergyType.getId() {
        return this.id;
    }
    
    public void AllergyType.setId(Integer id) {
        this.id = id;
    }
    
}
