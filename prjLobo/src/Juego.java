public class Juego {
    Jugador usuario;
    private String[] ladoIzq;
    private String[] ladoDer;
    private boolean vikingoEstadoIzq;
    private String barca;
    private String rio;

    public Juego() {
        this.usuario    = new Jugador();

        this.rio        = ".".repeat(20);
        this.barca = "\\_V_,_?_/";
        this.ladoIzq    = new String[] { "V", "L", "C", "U" }; // Personajes del juego: vikingo, lobo, caperucita y uvas
        this.ladoDer    = new String[] { "", "", "", "" };
        this.vikingoEstadoIzq = true;
    }
// jugarLobito
public boolean jugarLobito(){
    while(mostrarMenu());

    return true;
}

    private boolean mostrarMenu(){
        int opc=-1;
        System.out.println(" ".repeat(10)+barca+rio);
        System.out.println( "\n 0 Vikingo va solo " 
                        + "\n 1 Lobo             " 
                        + "\n 2 Caperucita        " 
                        + "\n 3 Uvas             " 
                        + "\n 4 Salir            ");
        
        do{
            try{
                opc=-1;
                System.out.print("\n[+] Ingrese una opc: ");
                opc = App.sc.nextInt();
                if (opc ==4) {
                    System.out.println("Te vere pronto ... cobarde..!");
                    System.exit(0);
                }
            }catch (Exception e){App.sc.next();}
        }
        while (opc>=4 || opc<0);
        //opc 0,1,2,3
        String individuo = "";
        individuo   = (vikingoEstadoIzq)
                    ?ladoIzq[opc]
                    :ladoDer[opc];
        moverBarca(individuo);
        vikingoEstadoIzq=!vikingoEstadoIzq;
        return true;
    }

    private void moverBarca(String individuo){
        //barca = "\\_V_,_?_/";
        
        if(vikingoEstadoIzq)
            for(int i = 0; i<rio.length(); i++)
                setBarcaRio(i,individuo);
        else    
            for (int i = rio.length()-1; i>=0;i--)
                setBarcaRio(i,individuo);
    }
    private void setBarcaRio(int posicionBarca, String individuo){
        //barca = "\\_V_,_?_/";
        String rioBarca =   "\r"
                            +".".repeat(posicionBarca)
                            +barca.replace("?", individuo)
                            +".".repeat(rio.length()-posicionBarca);
        System.out.print(rioBarca);
        try{
            Thread.sleep(100);
        }catch(InterruptedException e){}
    }
}

// verificarRegla

