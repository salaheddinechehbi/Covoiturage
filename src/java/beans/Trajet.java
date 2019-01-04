
package beans;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Trajet {
  
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String heureDepart;
    private Date dateDepart;
    private int nbrPlace;
    private String commentaire;
    private int route;
    @OneToOne
    private User user;

    public Trajet() {
    }

    public Trajet(int id, String heureDepart, Date dateDepart, int nbrPlace, String commentaire, int route, User user) {
        this.id = id;
        this.heureDepart = heureDepart;
        this.dateDepart = dateDepart;
        this.nbrPlace = nbrPlace;
        this.commentaire = commentaire;
        this.route = route;
        this.user = user;
    }

    public Trajet(String heureDepart, Date dateDepart, int nbrPlace, String commentaire, int route, User user) {
        this.heureDepart = heureDepart;
        this.dateDepart = dateDepart;
        this.nbrPlace = nbrPlace;
        this.commentaire = commentaire;
        this.route = route;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHeureDepart() {
        return heureDepart;
    }

    public void setHeureDepart(String heureDepart) {
        this.heureDepart = heureDepart;
    }

    public Date getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(Date dateDepart) {
        this.dateDepart = dateDepart;
    }

    public int getNbrPlace() {
        return nbrPlace;
    }

    public void setNbrPlace(int nbrPlace) {
        this.nbrPlace = nbrPlace;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public int getRoute() {
        return route;
    }

    public void setRoute(int route) {
        this.route = route;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    
    
}
