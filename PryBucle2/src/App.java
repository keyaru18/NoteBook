public class App {
    public static void main(String[] args) throws Exception {
       //declarar
        BucleFor bf;
        BucleWhile bw;

        //instanciar
        bf = new BucleFor();
        bw = new BucleWhile();

        //llamar al metodo
        bf.signoAlterno();
        bf.signoAlternoGenerativo();
        bf.signoAlternoGenerativoMe();
        bf.escalera();
        bw.signoAlterno();
        bw.signoAlternoGenerativoMe();
    }
    
}
