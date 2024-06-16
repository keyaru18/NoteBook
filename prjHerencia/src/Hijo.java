public class Hijo extends Padre {
    private String nombre;
    public Hijo (String nombre){
        super("Keyaru");
        this.nombre = nombre;
    }

    

    @Override
    public void saludar() {
        System.out.println("Klk mi lidel, soy "+nombre);
        System.out.println("Soy hijo de : " + getNombre());
    }
}
