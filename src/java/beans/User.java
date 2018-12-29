
package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String nom;
    private String email;
    private String tel;
    private String pass;
    private String img;
    private String cle;
    private int active;

    public User() {
    }

    public User(int id, String nom, String email, String tel, String pass, String img, String cle, int active) {
        this.id = id;
        this.nom = nom;
        this.email = email;
        this.tel = tel;
        this.pass = pass;
        this.img = img;
        this.cle = cle;
        this.active = active;
    }

    public User(String nom, String email, String tel, String pass, String img, String cle, int active) {
        this.nom = nom;
        this.email = email;
        this.tel = tel;
        this.pass = pass;
        this.img = img;
        this.cle = cle;
        this.active = active;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCle() {
        return cle;
    }

    public void setCle(String cle) {
        this.cle = cle;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
    
    
}
