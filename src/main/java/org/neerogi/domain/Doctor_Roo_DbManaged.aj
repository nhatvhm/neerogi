// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.neerogi.domain;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import org.neerogi.domain.Consultation;
import org.neerogi.domain.Doctor;
import org.neerogi.domain.Hospital;

privileged aspect Doctor_Roo_DbManaged {
    
    @OneToMany(mappedBy = "doctor")
    private Set<Consultation> Doctor.consultations;
    
    @ManyToOne
    @JoinColumn(name = "hospital", referencedColumnName = "id", nullable = false)
    private Hospital Doctor.hospital;
    
    @Column(name = "designation", length = 200)
    private String Doctor.designation;
    
    @Column(name = "name", length = 1000)
    @NotNull
    private String Doctor.name;
    
    @Column(name = "specialization", length = 200)
    private String Doctor.specialization;
    
    public Set<Consultation> Doctor.getConsultations() {
        return consultations;
    }
    
    public void Doctor.setConsultations(Set<Consultation> consultations) {
        this.consultations = consultations;
    }
    
    public Hospital Doctor.getHospital() {
        return hospital;
    }
    
    public void Doctor.setHospital(Hospital hospital) {
        this.hospital = hospital;
    }
    
    public String Doctor.getDesignation() {
        return designation;
    }
    
    public void Doctor.setDesignation(String designation) {
        this.designation = designation;
    }
    
    public String Doctor.getName() {
        return name;
    }
    
    public void Doctor.setName(String name) {
        this.name = name;
    }
    
    public String Doctor.getSpecialization() {
        return specialization;
    }
    
    public void Doctor.setSpecialization(String specialization) {
        this.specialization = specialization;
    }
    
}
