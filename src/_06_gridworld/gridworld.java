package _06_gridworld;

import java.awt.Color;

import javax.swing.JFrame;
import javax.swing.JPanel;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworld {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Bug bug = new Bug();
		Location location = new Location(5, 4);
		world.add(location, bug);
		Bug bug2 = new Bug();
		bug2.setColor(Color.blue);
		bug2.turn();
		Location location2 = new Location(7,8);
		world.add(location2, bug2);
		
		for(int x = 0; x < 10; x++) {
			for(int u = 0; u < 10; u++) {
				Flower flower = new Flower();
				Location location5 = new Location(x, u);
				world.add(location5, flower);
				
			}
			
		   
		}
	}
}
