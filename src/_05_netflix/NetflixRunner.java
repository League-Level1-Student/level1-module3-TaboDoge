package _05_netflix;

public class NetflixRunner {
	public static void main(String[] args) {
		Movie movie1 = new Movie("The Farewell", 5);
		Movie movie2 = new Movie("Spirited Away", 5);
		Movie movie3 = new Movie("The Wind Rises", 3);
		Movie movie4 = new Movie("Castle In The Sky", 4);
		Movie movie5 = new Movie("Grave of the Fireflies", 4);
		System.out.println(movie1.getTitle());
		System.out.println(movie1.getRating());
		System.out.println(movie1.getTicketPrice());
		System.out.println(movie2.getTitle());
		System.out.println(movie2.getRating());
		System.out.println(movie2.getTicketPrice());	
		System.out.println(movie3.getTitle());
		System.out.println(movie3.getRating());
		System.out.println(movie3.getTicketPrice());	
		System.out.println(movie4.getTitle());
		System.out.println(movie4.getRating());
		System.out.println(movie4.getTicketPrice());	
		System.out.println(movie5.getTitle());
		System.out.println(movie5.getRating());
		System.out.println(movie5.getTicketPrice());
		NetflixQueue queue = new NetflixQueue();
		queue.addMovie(movie1);	
		queue.addMovie(movie2);
		queue.addMovie(movie3);
		queue.addMovie(movie4);
		queue.addMovie(movie5);
		queue.sortMoviesByRating();
		queue.printMovies();
		System.out.println("The best movie is "+ queue.getMovie(0));
		System.out.println("The second best movie is" + queue.getMovie(1));
		}
}
