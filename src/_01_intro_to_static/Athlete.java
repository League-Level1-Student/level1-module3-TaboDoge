package _01_intro_to_static;

public class Athlete {

	    static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;
	

	     Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	    }

	    public static void main(String[] args) {
	        Athlete q = new Athlete("tom", 4);
	        Athlete w =new Athlete("jim", 6);
	      System.out.println(q.name);
	      System.out.println(q.bibNumber);
	      System.out.println(q.speed);
	      System.out.println(q.raceLocation);
	      System.out.println(w.name);
	      System.out.println(w.bibNumber);
	      System.out.println(w.speed);
	      System.out.println(w.raceLocation);
	        //print their names, bibNumbers, and the location of their race. 
	    }
	}

