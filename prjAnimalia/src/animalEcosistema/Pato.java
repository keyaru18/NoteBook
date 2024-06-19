package animalEcosistema;

import animalClasificacion.Ave;
import animalEcosistema.animalEcosistema.IAccion1;
import animalEcosistema.animalEcosistema.IAccion2;
import animalEcosistema.animalEcosistema.IAccion3;

public class Pato  extends Ave implements IAccion1, IAccion2, IAccion3{
    public Halcon amigoHalcon;

    public Pato (String nombre) {
        setNombre(nombre);
        amigoHalcon = new Halcon("Maokai");
    }


    @Override
    public String toString(){
        return "\n Clase: " + getClass().getName()
                + "\n Nombre: " + getNombre()
                + "\n NroAlas: " + getNroAlas();
    }


    @Override
    public void volar(){
        System.out.println("Pato esta volando...!");
    }

    @Override
    public void correr(){
        System.out.println("Pato esta corriendo...!");
    }

    @Override
    public void nadar(){
        System.out.println("Pato esta nadando...!");
    }

    

}
