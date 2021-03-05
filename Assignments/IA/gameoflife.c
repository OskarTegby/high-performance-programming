#include <stdlib.h>
#include <stdio.h>
//#include <pthread.h>
#include <math.h>
#include "graphics/graphics.h"

/*

 Rules of the game:

 1. If there are three neighbors, then it spawns. 
 2. If there are one or no neighbors, then it dies.
 3. If there are more than three neighbors, then it dies.
 4. If there are two or three neighbors, then it survives.

  Grid:
  _ _ _
 |_|_|_|
 |_|_|_|
 |_|_|_|

 Step 1: Write it sequentially.
 Step 2: Optimize it.
 Step 3: Parallelize it.
 Step 4: Check for memory leaks.
 Step 5: Write the report.
 (Step 6: Write a FEM solver.)

 Part 1:
 * Allocate memory where you store the world.
 * Initialize the world according to some configuration file.
 * Implement the rules.
 * Make sure that everything works.
 * Check for memory leaks.

*/

int** create_world(int n) {
	// Allocating the world to the set size.
	int** world = malloc(n * sizeof(&world));	
	
	for (int i = 0; i < n; i++)
		world[i] = malloc(n * sizeof(&world[i]));

	// Initializing the world as all zeros.
	for (int i = 0; i < n; i++)
		for (int j = 0; j < n; j++)
			world[i][j] = 0;

	return world;
}

void print_world(int n, int** world) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++)
			printf(" %d", world[i][j]);
		printf("\n");
	}

}

// void intialize_world_from_file(int** world) {

// }

void initialize_world_randomly(int n, int*** worlds) {
	for (int i = 1; i < n-1; i++) {
		for (int j = 1; j < n-1; j++) {
			int random = rand();
			worlds[0][i][j] = random & 1;
			worlds[1][i][j] = random & 1;
		}
	}
}

int main(int argc, char *argv[])
{
	/*
	The world will either be cut off here as we don't have infinite memory,
	or reflected in the boundary in each axis. Try both alternatives.
	*/
    if(argc != 4){
        printf("Usage: ./main n T graphics\n");
        return -1;
    }
	int n = atoi(argv[1]);
	int T = atoi(argv[2]);
	int graphics = atoi(argv[3]);

	int sum = 0;

	int*** worlds = malloc(2 * sizeof(*worlds));
	int** world = create_world(n + 2);
	worlds[0] = world;
	int** copy = create_world(n + 2);
	worlds[1] = copy;
	int** temp;

	initialize_world_randomly(n, worlds);
	// print_world(n, world);

    if(graphics) {
        InitializeGraphics(argv[0], 800, 800);
        SetCAxes(0, 1);
        ClearScreen();
        usleep(3000);
    }

	for (int i = 1; i < n-1; i++) {
		for (int j = 1; j < n-1; j++) {
			if(graphics) {
				if (world[i][j] == 1)
	    			DrawRectangle(i - 0.75, j - 0.75, n-2, n-2, 0.5, 0.5, 0);
	    	}
    	}
	}

   for (int t = 0; t < T; t++) {
    	if(graphics) {
            Refresh();
            ClearScreen();
        }

        for (int i = 1; i < n-1; i++) {
        	for (int j = 1; j < n-1; j++) {
        		sum = 0;
				sum += world[i-1][j] + world[i+1][j] +     // Left and right
        			 + world[i][j-1] + world[i][j+1]       // Up and down
        			 + world[i-1][j-1] + world[i-1][j+1] + // Left up and down
        			 + world[i+1][j-1] + world[i+1][j+1];  // Right up and down

        		if (world[i][j] == 1) {
        			if (sum == 0 || sum == 1 || sum >= 4)
        				copy[i][j] = 0;
	    			if (sum == 2 || sum == 3)
    					copy[i][j] = 1;
        		} else {
					if (sum == 3)
    					copy[i][j] = 1;
    				else copy[i][j] = 0;
        		}
        	}
        }

        temp = copy;
        copy = world;
        world = temp;

        if(graphics) {
      		for (int i = 1; i < n-1; i++) {
				for (int j = 1; j < n-1; j++) {
					if (world[i][j] == 1)
		    			DrawRectangle(i - 0.75, j - 0.75, n-2, n-2, 0.5, 0.5, 0);
	    		}
        	}
            Refresh();
            usleep(10000);
        }
   }

    if(graphics) {
		printf("Animation complete, press Q in the window to quit.\n");

        while (!CheckForQuit()) {
            usleep(3000);
        }

        FlushDisplay();
        CloseDisplay();
    }

	return 0;
}