public class Juego {
    Jugador usuario;
    private String[] ladoIzq;
    private String[] ladoDer;
    private boolean vikingoEstadoIzq;
    private String barca;
    private String rio;

    public Juego() {
        this.usuario = new Jugador();
        this.rio = "-".repeat(20);
        this.barca = "\\_V_;_?_//";
        this.vikingoEstadoIzq = true;
        this.ladoIzq = new String[] { "V", "L", "C", "U" }; // Personajes del juego: vikingo, lobo, caperucita y uvas
        this.ladoDer = new String[] { "", "", "", "" };
    }

    int opc=-1;
    public short mostrarMenu(){
        System.out.println(" ".repeat(10)+barca+rio);
        System.out.print("\n 0 Vikingo va solo"+ "\n 1 Lobo" + "\n2 Caperucita" + "\n 3 Uvas" + "\n 4 Salir");
        
        do{
            try{
                opc=-1;
                System.out.println("\n [+] Ingrese una opc: ");
                opc = App.sc.nextInt();
                if (opc ==4) {
                    System.out.println("Te vere pronto ... cobarde..!");
                    System.exit(0);
                }
            }catch (Exception e){App.sc.next();}
        }
        while (opc>=4 || opc<0);
        return (short) opc;
    }
}

// verificarRegla
// jugarLobito


