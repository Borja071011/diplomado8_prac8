/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.mycompany.model.Persona;
import org.apache.logging.log4j.*;
import java.util.ArrayList;
import com.mycompany.model.*;
import java.util.List;
/**
 *
 * @author Admin
 */

public class PersonasAction extends ActionSupport {
    Logger log= LogManager.getLogger(PersonasAction.class);
  public Persona persona;
  public ArrayList<Persona> personas;


    @Override
    public String execute(){
    personas = new ArrayList<Persona>();
    
    if(this.persona != null){
    log.info("\n");
    log.info("personas"+persona);
   this.personas.add(persona);
    
    } else{
    log.info("Persona con valor nulo");
    }
    return SUCCESS;
    
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public ArrayList<Persona> getPersonas() {
        return personas;
    }

    public void setPersonas(ArrayList<Persona> personas) {
        this.personas = personas;
    }

   
    
}
