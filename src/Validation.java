import java.util.Random;

import javax.swing.JOptionPane;

public class Validation {
	public static void main(String[] args) {

	// 1. Watch the first 2 minutes of this movie: http://vimeo.com/2485018
			// 2. On paper, write all the numbers that get printed when you run this class
			

			// 3. Use the randomNumber to give the user a random compliment.
			for (int i = 0; i < 10; i++) {
				
				int randomNumber = new Random().nextInt(5);
			
				System.out.println(randomNumber);
				
			
if(randomNumber == 0) {
	JOptionPane.showMessageDialog(null, "You have wonderful hair");
}
if(randomNumber == 1) {
	JOptionPane.showMessageDialog(null, "Your so smart");
}
if (randomNumber==2) {
	JOptionPane.showMessageDialog(null, "If you were an animal you would be all of them");
}
if(randomNumber==3) {
	JOptionPane.showMessageDialog(null, "everyday is wonderful because your the person living it");
}
if(randomNumber==4) {
	JOptionPane.showMessageDialog(null, "i like you room");
}
	}
	}
			// 4. Repeat all the code above 10 times
			
			// 5. Find someone to test out your program. They will like it :)
	}


