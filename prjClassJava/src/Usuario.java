public class Usuario {
    private String name;
    private Integer edad;
    

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        if (edad > 0) {
            this.edad = edad;        
        } else {
            this.edad = 0;
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name.toUpperCase(); 
    }

    public Boolean login (){
        String nameString;

        System.out.println("Say me you name: "  );
        nameString = App.sc.nextLine();
        setName(nameString);
        return true ;
    }

    public void createDino(){
        
        System.out.println("Create Dino");
        if (login()){
            System.out.println("I going to create a dino");
        }
        else{
            System.out.println("First, You need login");

        }
    }   
}
