/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Ticket;
import java.util.ArrayList;

/**
 *
 * @author quasi
 */
public class GestionTicket {
  private ArrayList<Ticket> tickets;
  
  public GestionTicket(){
    this.tickets = new ArrayList<>();
  }
  
  public ArrayList<Ticket> getTickets(){
    return this.tickets;
  }
  
    
  public boolean agregarTicket(Ticket t){
    if(!tickets.contains(t)){
      tickets.add(t);
      return true;
    }
    return false;
  }
  
  
  /**
   * retorna un array con la cantidad de tickets en cada area, 
   * pos[0] = area1
   * pos[1] = area2 
   * etc...
   * Se hace asi por facilidad y para no usar una ED mas avanzada o mapear las areas :D
   */
  public int[] estadisticas(){
    int cntArea[] = new int[6];
    for (Ticket t : tickets) {
      cntArea[ t.getArea() - 1 ]++;
    }
    return cntArea;
  }
  
}
