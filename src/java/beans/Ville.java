
package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Ville {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;
    private double lat;
    private double lng;
    @ManyToOne
    private Paye paye;

    public Ville(int id, String nom, double lat, double lng, Paye paye) {
        this.id = id;
        this.nom = nom;
        this.lat = lat;
        this.lng = lng;
        this.paye = paye;
    }

    public Ville() {
    }

    public Ville(String nom, double lat, double lng, Paye paye) {
        this.nom = nom;
        this.lat = lat;
        this.lng = lng;
        this.paye = paye;
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

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public Paye getPaye() {
        return paye;
    }

    public void setPaye(Paye paye) {
        this.paye = paye;
    }
    
    
}
