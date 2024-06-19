import animalEcosistema.Leon;
import animalEcosistema.Pato;

public class App {
    public static void main(String[] args) throws Exception {
        Pato p = new Pato ("Zora");
        Leon l = new Leon("Mufasa");

        System.out.println(p.toString());
        System.out.println(l.toString());
    }
}
