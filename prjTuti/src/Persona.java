public class Persona {
    private String cedula;
    private String nombre;
    private String apellido;

    // Constructro de la clase persona
    public Persona() {
        cedula = "";
        nombre = "";
        apellido = "";
    }

    public Persona(String cedula, String nombre, String apellido) {
        setNombre(nombre); // this.nombre = nombre;
        setApellido(apellido); // this.apellido = apellido;
        setCedula(cedula); // this.cedula = cedula;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        if (cedula == null || cedula.length() != 10)
            this.cedula = "no valido";
        else
            this.cedula = cedula;

        // if (cedula != null)
        // if (cedula.length() == 10) {
        // this.cedula = cedula;
        // } else {
        // this.cedula = "Cédula no valida";
        // }
        // else
        // this.cedula = "Cédula no valida";

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {

        if (nombre != null) {
            this.nombre = nombre.toUpperCase();
        } else {
            this.nombre = "";
        }
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        if (apellido != null) {
            this.apellido = apellido.toUpperCase();
        } else {
            this.apellido = "";
        }
    }
}
