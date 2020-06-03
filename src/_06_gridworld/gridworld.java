package _06_gridworld;

import javax.swing.JFrame;
import javax.swing.JPanel;

import info.gridworld.actor.Bug;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworld {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Bug bug = new Bug();
		Location location = new Location(5, 4);
		world.add(location, bug);
	}
}
