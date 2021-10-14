/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Objects;

/**
 *
 * @author quasi
 */
public class Ticket {
  private String id;
  private String nombre;
  private String apellido;
  private String asunto;
  private int prioridad;
  private int area;

  public Ticket(String id, String nombre, String apellido, String asunto, int prioridad, int area) {
    this.id = id;
    this.nombre = nombre;
    this.apellido = apellido;
    this.asunto = asunto;
    this.prioridad = prioridad;
    this.area = area;
  }
  
  

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getApellido() {
    return apellido;
  }

  public void setApellido(String apellido) {
    this.apellido = apellido;
  }

  public String getAsunto() {
    return asunto;
  }

  public void setAsunto(String asunto) {
    this.asunto = asunto;
  }

  public int getPrioridad() {
    return prioridad;
  }

  public void setPrioridad(int prioridad) {
    this.prioridad = prioridad;
  }

  public int getArea() {
    return area;
  }
  public String getAreaTxt(){
    String area = "";
    switch (this.area){
      case 1: area = "Facturacion";
              break;
      case 2: area = "Ventas";
              break;
      case 3: area = "Desarrollo de software";
              break;
      case 4: area = "Hardware";
              break;
      case 5: area = "Equipos";
              break;
      case 6: area = "Servidores";
              break;
    }
    return area;
  }

  public void setArea(int area) {
    this.area = area;
  }

  @Override
  public int hashCode() {
    int hash = 3;
    hash = 17 * hash + Objects.hashCode(this.id);
    return hash;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    final Ticket other = (Ticket) obj;
    return Objects.equals(this.id, other.id);
  }
}
