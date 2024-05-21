public class Supervisor extends Cajero{
    private String llaveAutorizacion;

    public Supervisor() {
        llaveAutorizacion = "";
    }

    public Supervisor(String llaveAutorizacion) {
        setLlaveAutorizacion(llaveAutorizacion); 
    }


    public String getLlaveAutorizacion() {
        return llaveAutorizacion;
    }

    public void setLlaveAutorizacion(String llaveAutorizacion) {
        if (llaveAutorizacion != null) {
            this.llaveAutorizacion = llaveAutorizacion;
        } else {
            this.llaveAutorizacion = "";
        }
    }
}
