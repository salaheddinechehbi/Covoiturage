
package beans;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Trajet {
  
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @OneToOne
    private Ville villeDepart;
    @Temporal(TemporalType.DATE)
    private Date dateDepart;
    private String heureDepart;
    @OneToOne
    private Ville villeArriver;
    @Temporal(TemporalType.DATE)
    private Date dateArriver;
    private String heureArriver;
    private int nbrPlace;
    private String commentaire;
    private int route;
    @OneToOne
    private User user;

    public Trajet() {
    }

    public Trajet(int id, Ville villeDepart, Date dateDepart, String heureDepart, Ville villeArriver, Date dateArriver, String heureArriver, int nbrPlace, String commentaire, int route, User user) {
        this.id = id;
        this.villeDepart = villeDepart;
        this.dateDepart = dateDepart;
        this.heureDepart = heureDepart;
        this.villeArriver = villeArriver;
        this.dateArriver = dateArriver;
        this.heureArriver = heureArriver;
        this.nbrPlace = nbrPlace;
        this.commentaire = commentaire;
        this.route = route;
        this.user = user;
    }

    public Trajet(Ville villeDepart, Date dateDepart, String heureDepart, Ville villeArriver, Date dateArriver, String heureArriver, int nbrPlace, String commentaire, int route, User user) {
        this.villeDepart = villeDepart;
        this.dateDepart = dateDepart;
        this.heureDepart = heureDepart;
        this.villeArriver = villeArriver;
        this.dateArriver = dateArriver;
        this.heureArriver = heureArriver;
        this.nbrPlace = nbrPlace;
        this.commentaire = commentaire;
        this.route = route;
        this.user = user;
    }

    public Date getDateArriver() {
        return dateArriver;
    }

    public void setDateArriver(Date dateArriver) {
        this.dateArriver = dateArriver;
    }

    public String getHeureArriver() {
        return heureArriver;
    }

    public void setHeureArriver(String heureArriver) {
        this.heureArriver = heureArriver;
    }

    

    public Ville getVilleDepart() {
        return villeDepart;
    }

    public void setVilleDepart(Ville villeDepart) {
        this.villeDepart = villeDepart;
    }

    public Ville getVilleArriver() {
        return villeArriver;
    }

    public void setVilleArriver(Ville villeArriver) {
        this.villeArriver = villeArriver;
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
