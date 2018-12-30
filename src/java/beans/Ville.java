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
    private String nom;
    private Double lang;
    private Double lat;
    private int idPays;

    public Ville() {
    }

    public Ville(String Nom, Double lang, Double lat, int idPays) {
        this.nom = Nom;
        this.lang = lang;
        this.lat = lat;
        this.idPays = idPays;
    }

    public Ville(int id, String Nom, Double lang, Double lat, int idPays) {
        this.id = id;
        this.nom = Nom;
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
        return nom;
    }

    public void setNom(String Nom) {
        this.nom = Nom;
    }

    public Double getLang() {
        return lang;
    }

    public void setLang(Double lang) {
        this.lang = lang;
    }

    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
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
        return "Ville{" + "id=" + id + ", Nom=" + nom + ", lang=" + lang + ", lat=" + lat + ", idPays=" + idPays + '}';
    }
  
}
