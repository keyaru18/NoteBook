package animalEcosistema;

import animalClasificacion.Mamifero;
import animalEcosistema.animalEcosistema.IAccion1;
import animalEcosistema.animalEcosistema.IAccionCarnivora;

public class Leon extends Mamifero implements IAccionCarnivora, IAccion1 {

    public Pato alimentoPatuno;

    public Leon(String nombre) {
        setNombre(nombre);
        alimentoPatuno = new Pato("Lucas");
    }

    @Override
    public void comer() {
        System.out.println("Leon come...");
    }

    @Override
    public void comer(Pato alimentoPatuno) {
        System.out.println("Leon come: " + alimentoPatuno.toString());
    }

    @Override
    public void correr() {
        System.out.println("Leon corre...");
    }

    @Override
    public String toString() {
        return "\n Clase: " + getClass().getName()
                + "\n Nombre: " + getNombre();
    }

}
