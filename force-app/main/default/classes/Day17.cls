public class Day17 implements system.schedulable  {
   /**
    * 
    schedule jobs:
    system.schedulable :
    methods:
    void execute (system.schedulableContext){

    }

    syntax:

    <public/global> class <className> implements  system.schedulable{

        <public/global>void execute (system.schedulableContext){
            //logic
    }
    }

    */
    public void execute(system.schedulableContext ctx){
        MyfirstBatch b= new MyfirstBatch();
database.executeBatch(b,5);
    }


}


