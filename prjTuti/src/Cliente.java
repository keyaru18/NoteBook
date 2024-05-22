
public class Cliente {
    private Float dinero;

    public Cliente() {
        dinero = (float) 0;
    }

    public Cliente(Float dinero) {
        setDinero(dinero); 
    }


    public Float getDinero() {
        return dinero;
    }

    public void setDinero(Float dinero) {
        if (dinero == null)
            this.dinero = (float) 0;
        else
            this.dinero = dinero.floatValue();
    }

    // public void seleccionarProductoPerchero(){

    // }

    // public Boolean pagarProductoSeleccionado(String listaProducto){
    //     return true;
    // }

    // public Boolean cancelarCompra(){
    //     return true;
    // }

    // public String seleccionarProductoOnline(String listaProducto){
    //     return "";
    // }

    // public Boolean pagarProductoSeleccionado(){
    //     return true;
    // }

    // public Boolean pagarTC(){
    //     return true;
    // }
    
    // public Boolean pagarTD(){
    //     return true;
    // }
}
