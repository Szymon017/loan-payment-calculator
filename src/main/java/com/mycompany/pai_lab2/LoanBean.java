/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pai_lab2;

import java.io.Serializable;

/**
 *
 * @author Szymon
 */
public class LoanBean implements Serializable{
    private double kwota = 0;
    private double procent = 0;
    private int liczba_rat = 0;

    public double getRata(){
        double wynik = (kwota * procent) / (1 - Math.pow((1 / (1 + procent)), liczba_rat));

        return wynik;
    }

    public double getKwota() {
        return kwota;
    }

    public void setKwota(double kwota) {
        this.kwota = kwota;
    }

    public double getProcent() {
        return procent;
    }

    public void setProcent(double procent) {
        this.procent = procent;
    }

    public int getLiczba_rat() {
        return liczba_rat;
    }

    public void setLiczba_rat(int liczba_rat) {
        this.liczba_rat = liczba_rat;
    }
    
     
    
}
