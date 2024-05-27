import java.util.Arrays;
import java.util.Scanner;

public class App {
    public static Scanner sc   = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        //argumentoMain(args);
        //flujoTeclado();
        //flujoTeclado();
        //flujoString();

        // int total =0; // Nombrar como flujoDato
        // String numeros ="12,343,65,767,676";
        // Scanner scan = new Scanner(numeros);
        // scan.useDelimiter(",");
        // while(scan.hasNext()){
        //         total += scan.nextInt();
        // }
        // System.out.println("Total es: "+ total);
        // scan.close();

        Persona oP = new Persona();
        Persona oP2 = new Persona(null, null, null);
        // Cliente oCl = new Cliente();
        // Cajero oCa = new Cajero ();
        // Supervisor oS= new Supervisor();

        oP.setNombre("Keyaru");
        oP.setCedula(null);
        oP.setApellido("Shinomiya");

        // oCl.setDinero(100)

        System.out.println(oP.getNombre());
        System.out.println(oP.getApellido());
        System.out.println(oP.getCedula());
        // System.out.println(oCl.getDinero());

        System.out.println(oP2.getNombre());
        System.out.println(oP2.getApellido());
        System.out.println(oP2.getCedula());
    }

    private static void flujoString() {
        int total = 0;
        String datos = "1-2-10";
        Scanner sc = new Scanner(datos);
        sc.useDelimiter("-");

        while (sc.hasNextInt()) {
            total +=sc.nextInt();
        }
        System.out.println("total es: " + total);
        sc.close();
    }

    private static void flujoTeclado() {
        int total   = 0;
        System.out.println("Ingresa numeros para sumar: ");
        while (sc.hasNextInt()) {
            total += sc.nextInt();
        }
        System.out.println("La suma de todos los numeros es: " + total);
        sc.next();
    }

    private static void argumentoMain(String[] args) {
        if ( (args.length == 2) && (args[0].equals("Keyaru") && args[1].equals("123")) ){
            var entrada = Arrays.toString(args);
            System.out.println("Buen dia Maestro, estoy lista para servirle uwu...");
            System.err.println("Los parametros que ingresaste son: " + entrada );
        }
        else {
            System.out.println("Fuera mrd...!!");
            System.exit(0);
        }
    }
}
