package Sintactico;
import java.util.ArrayList;

public class Nodo {
    public String lexema;
    public String tipo;
    public String operador;
    public String temp;
    public ArrayList<Nodo> hijos;

    public Nodo(String lexema) {
        this.lexema = lexema;
        this.tipo = "";
        this.operador = null;
        this.temp = null;
        this.hijos = new ArrayList<Nodo>();
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTipo() {
        return this.tipo;
    }

    public void setOperador(String op) {
        this.operador = op;
    }

    public String getOperador() {
        return operador;
    }

    public void setTemp(String temp) {
        this.temp = temp;
    }

    public String getTemp() {
        return temp;
    }

    public void addHijo(Nodo hijo) {
        this.hijos.add(hijo);
    }

}