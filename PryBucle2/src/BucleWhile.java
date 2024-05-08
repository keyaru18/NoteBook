public class BucleWhile {
    // metodo : +-+-+-+-
    public void signoAlterno() {
        System.out.println("WHILE: ");
        int i = 1;
        while (i < 10) {
            if (i % 2 == 0)
                System.out.print("- ");
            else
                System.out.print("+ ");
            i++;
        }
        System.out.println();
    }

    public void signoAlternoGenerativoMe() {
        System.out.println("WHILE:");
        int i = 1 ;
        while (i < 10) {
            int s = 1;
            while (s < i) {
                System.out.print((i % 2 == 0) ? "-" : "+");
                s++;
            }
            System.out.print("  ");
            i++;
        }
        System.out.println("  ");
    }
}

