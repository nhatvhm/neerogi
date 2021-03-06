// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.neerogi.domain;

import java.util.Calendar;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.neerogi.domain.Allergy;
import org.neerogi.domain.Consultation;
import org.neerogi.domain.MedicalCondition;
import org.neerogi.domain.Patient;
import org.neerogi.domain.SocialHistory;
import org.neerogi.domain.Title;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Patient_Roo_DbManaged {
    
    @OneToMany(mappedBy = "patient", cascade = CascadeType.ALL)
    private Set<Allergy> Patient.allergies;
    
    @OneToMany(mappedBy = "patient")
    private Set<Consultation> Patient.consultations;
    
    @OneToMany(mappedBy = "patient", cascade = CascadeType.ALL)
    private Set<MedicalCondition> Patient.medicalConditions;
    
    @OneToMany(mappedBy = "patient", cascade = CascadeType.ALL)
    private Set<SocialHistory> Patient.socialHistories;
    
    @ManyToOne
    @JoinColumn(name = "title", referencedColumnName = "id", nullable = false)
    private Title Patient.title;
    
    @Column(name = "clinic_no", length = 100)
    @NotNull
    private String Patient.clinicNo;
    
    @Column(name = "name", length = 1000)
    @NotNull
    private String Patient.name;
    
    @Column(name = "address", length = 1000)
    private String Patient.address;
    
    @Column(name = "gender", length = 1000)
    private String Patient.gender;
    
    @Column(name = "occupation", length = 1000)
    private String Patient.occupation;
    
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Patient.dateOfBirth;
    
    @Column(name = "age", length = 100)
    private String Patient.age;
    
    public Set<Allergy> Patient.getAllergies() {
        return allergies;
    }
    
    public void Patient.setAllergies(Set<Allergy> allergies) {
        this.allergies = allergies;
    }
    
    public Set<Consultation> Patient.getConsultations() {
        return consultations;
    }
    
    public void Patient.setConsultations(Set<Consultation> consultations) {
        this.consultations = consultations;
    }
    
    public Set<MedicalCondition> Patient.getMedicalConditions() {
        return medicalConditions;
    }
    
    public void Patient.setMedicalConditions(Set<MedicalCondition> medicalConditions) {
        this.medicalConditions = medicalConditions;
    }
    
    public Set<SocialHistory> Patient.getSocialHistories() {
        return socialHistories;
    }
    
    public void Patient.setSocialHistories(Set<SocialHistory> socialHistories) {
        this.socialHistories = socialHistories;
    }
    
    public Title Patient.getTitle() {
        return title;
    }
    
    public void Patient.setTitle(Title title) {
        this.title = title;
    }
    
    public String Patient.getClinicNo() {
        return clinicNo;
    }
    
    public void Patient.setClinicNo(String clinicNo) {
        this.clinicNo = clinicNo;
    }
    
    public String Patient.getName() {
        return name;
    }
    
    public void Patient.setName(String name) {
        this.name = name;
    }
    
    public String Patient.getAddress() {
        return address;
    }
    
    public void Patient.setAddress(String address) {
        this.address = address;
    }
    
    public String Patient.getGender() {
        return gender;
    }
    
    public void Patient.setGender(String gender) {
        this.gender = gender;
    }
    
    public String Patient.getOccupation() {
        return occupation;
    }
    
    public void Patient.setOccupation(String occupation) {
        this.occupation = occupation;
    }
    
    public Calendar Patient.getDateOfBirth() {
        return dateOfBirth;
    }
    
    public void Patient.setDateOfBirth(Calendar dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    
    public String Patient.getAge() {
        return age;
    }
    
    public void Patient.setAge(String age) {
        this.age = age;
    }
    
}
