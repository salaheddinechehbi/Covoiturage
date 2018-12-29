
package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Paye {
    @Id
    @GeneratedValue
    private int id;
    private String Nom;

    public Paye() {
    }

    public Paye(String Nom) {
        this.Nom = Nom;
    }

    public Paye(int id, String Nom) {
        this.id = id;
        this.Nom = Nom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    @Override
    public String toString() {
        return "Paye{" + "id=" + id + ", Nom=" + Nom + '}';
    }
    
    
    
    
}
