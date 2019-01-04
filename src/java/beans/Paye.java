
package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Paye {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;

    public Paye(int id, String nom) {
        this.id = id;
        this.nom = nom;
    }

    public Paye() {
    }

    public Paye(String nom) {
        this.nom = nom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    
}
