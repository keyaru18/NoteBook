public class Padre {
    private String nombre;
    
    public Padre(String nombre) {
        setNombre(nombre);
    }

    public void saludar() {
        System.out.println("Good morning, Im "+ this.nombre);
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = "";
        if (nombre != null)
            this.nombre = nombre.toUpperCase();
    }

}
