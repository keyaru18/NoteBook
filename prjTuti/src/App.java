public class App {
    public static void main(String[] args) throws Exception {
        Persona oP = new Persona();
        Persona oP2 = new Persona("1723456789", null, null);
        Supervisor oS= new Supervisor();

        oP.setNombre("Keyaru");
        oP.setCedula(null);
        oP.setApellido("Shinomiya");

        System.out.println(oP.getNombre());
        System.out.println(oP.getApellido());
        System.out.println(oP.getCedula());
        
        System.out.println(oP2.getNombre());
        System.out.println(oP2.getApellido());
        System.out.println(oP2.getCedula());
    }
}
