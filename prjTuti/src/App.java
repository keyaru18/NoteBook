public class App {
    public static void main(String[] args) throws Exception {
        Persona oP = new Persona();
        Persona oP2 = new Persona("1723456789", null, null);
        Cliente oCl = new Cliente("100");
        Cajero oCa = new Cajero ();
        Supervisor oS= new Supervisor();

        oP.setNombre("Keyaru");
        oP.setCedula(null);
        oP.setApellido("Shinomiya");

        //oCl.setDinero(100)

        
        System.out.println(oP.getNombre());
        System.out.println(oP.getApellido());
        System.out.println(oP.getCedula());
        //System.out.println(oCl.getDinero());
        
        System.out.println(oP2.getNombre());
        System.out.println(oP2.getApellido());
        System.out.println(oP2.getCedula());
    }
}
