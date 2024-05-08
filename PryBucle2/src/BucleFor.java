public class BucleFor {
    // metodo : +-+-+-+-
    public void signoAlterno() {
        System.err.println("FOR: ");
        for (int i = 1; i < 10; i++) {
            if (i % 2 == 0)
                System.out.print("- ");
            else
                System.out.print("+ ");
        }
        System.out.println("");
    }

    public void signoAlternoGenerativo() {
        System.out.println("FOR: ");
        for (int i = 1; i < 10; i++) {
            if (i % 2 == 0)
                for (int sn = 1; sn < i; sn++)
                    System.out.print("-");
            else
                for (int sp = 1; sp < i; sp++)
                    System.out.print("+");
            System.out.print("  ");
        }
        System.out.println("");
    }
    //metodo - ++ --- ++++ ----- ++++++
    public void signoAlternoGenerativoMe() {
        System.err.println("FOR:");
        for (int i = 1; i < 10; i++) {
            for (int s = 1; s < i; s++)
            System.out.print((i % 2 == 0) ? "-" : "+");
            System.out.print("  ");
        }
        System.out.println("  ");
    }
    
    //metodo - ++ --- ++++ ----- ++++++
    public void escalera() {
        int level = 10;
        String escalon = "|_";
        for (int i = 1; i < level; i++) {
            for (int s = 1; s < i; s++) {
                    System.out.print("  ");
            }
            System.out.println(escalon);
        }

    }
}