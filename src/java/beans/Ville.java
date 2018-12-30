/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author imadeddine
 */
@Entity
public class Ville {
    @Id
    @GeneratedValue
    private int id;
    private String Nom;
    private int lang;
    private int lat;
    private int idPays;

    public Ville() {
    }

    public Ville(String Nom, int lang, int lat, int idPays) {
        this.Nom = Nom;
        this.lang = lang;
        this.lat = lat;
        this.idPays = idPays;
    }

    public Ville(int id, String Nom, int lang, int lat, int idPays) {
        this.id = id;
        this.Nom = Nom;
        this.lang = lang;
        this.lat = lat;
        this.idPays = idPays;
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

    public int getLang() {
        return lang;
    }

    public void setLang(int lang) {
        this.lang = lang;
    }

    public int getLat() {
        return lat;
    }

    public void setLat(int lat) {
        this.lat = lat;
    }

    public int getIdPays() {
        return idPays;
    }

    public void setIdPays(int idPays) {
        this.idPays = idPays;
    }

    @Override
    public String toString() {
        return "Ville{" + "id=" + id + ", Nom=" + Nom + ", lang=" + lang + ", lat=" + lat + ", idPays=" + idPays + '}';
    }
    
    
    
    
    
}
