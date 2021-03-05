#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define QT_NODE_CAPACITY = 4;

typedef struct {
	double x, y, m, vx, vy, b;
} t_particle;

typedef struct {
	double width, x, y, mx, my; // What about height?
	particle_t* particle;
	struct quadnode *nw, *ne, *sw, *se;
} quad_node_t;

int quadtree_insert(quad_tree_t* node, t_particle* new_particle) {
	double px = new_particle->x; // What's up with the index?
	double nx = node->x;
	double py = new_particle->y;
	double ny = node->y;
	double w = node->width;

	// Checking if the particle is outside in any direction (up, down, left, or
	// right. If so, then we don't do anything as it's not our business.
	if (px < nx || px => nx + w || py < ny || py => ny + w) {
		return 0; // If the node doesn't belong to the quadnode.
	}

	// If there are no particles or subquadtrees, then we just add the particle
	// without any further action.
	if (node->particle == NULL && node->nw == NULL) {
		node->particle = new_particle;
	}

	// However, if there are particles in the quadnode, then we split it into four
	// nodes, but we haven't added anything yet.
	if (node->nw == NULL) {
		double new_node_width = 0.5 * node->width;

		node->nw = malloc(sizeof *node->nw);
        node->nw->x = node->x;
        node->nw->y = node->y + new_node_width;
        node->nw->width = new_node_width;
        node->nw->particle = NULL;
        node->nw->nw = NULL;
        node->nw->sw = NULL;
        node->nw->ne = NULL;
        node->nw->se = NULL;

        node->sw = malloc(sizeof *node->sw);
        node->sw->x = node->x;
        node->sw->y = node->y;
        node->sw->width = new_node_width;
        node->sw->particle = NULL;
        node->sw->nw = NULL;
        node->sw->sw = NULL;
        node->sw->ne = NULL;
        node->sw->se = NULL;

        node->ne = malloc(sizeof *node->ne);
        node->ne->x = node->x + new_node_width;
        node->ne->y = node->y + new_node_width;
        node->ne->width = new_node_width;
        node->ne->particle = NULL;
        node->ne->nw = NULL;
        node->ne->sw = NULL;
        node->ne->ne = NULL;
        node->ne->se = NULL;

        node->se = malloc(sizeof *node->se);
        node->se->x = node->x + new_node_width;
        node->se->y = node->y;
        node->se->width = new_node_width;
        node->se->particle = NULL;
        node->se->nw = NULL;
        node->se->sw = NULL;
        node->se->ne = NULL;
        node->se->se = NULL;

        // Drawing the quadnode.
        if(graphics) {
            DrawRectangle(node->x, node->y + new_node_width, 1, 1, node->width, 0.001, 0.5);
            DrawRectangle(node->x + new_node_width, node->y, 1, 1, 0.001, node->width, 0.5);
        }

        // Inserting the particle by calling the function recursively as we will
        // now end up in the case when only one of the remaining if statements
        // can be true.
        particle_t * particle_to_move = node->particle;
        node->particle = NULL;
        quadtree_insert(node, particle_to_move);
    }

    // Inserting the particle in the correct subnode after having created the subnodes.
    if(quadtree_insert(node->nw, new_particle)) return 1;
    if(quadtree_insert(node->sw, new_particle)) return 1;
    if(quadtree_insert(node->ne, new_particle)) return 1;
    if(quadtree_insert(node->se, new_particle)) return 1;

    return 0;
}

void quadtree_compute_mass(quad_node_t * node) {
	// If we are dealing with an empty tree, then we have to initialize all masses as zero.
    if(node->particle == NULL && node->nw == NULL) {
        node->m = 0;
        node->mx = 0;
        node->my = 0;
    } else if(node->particle != NULL) { // If we only have one particle, that's all our mass.
        node->m = node->particle->m;
        node->mx = node->particle->x[index];
        node->my = node->particle->y[index];
    } else { // Otherwise, we have to split things up into our different subnodes to get a correct assessment.
        quadtree_compute_mass(node->nw);
        quadtree_compute_mass(node->sw);
        quadtree_compute_mass(node->ne);
        quadtree_compute_mass(node->se);

        // Summing the mass of all the subnodes to get the mass of the entire node.
        node->m = node->nw->m + node->sw->m + node->ne->m + node->se->m;
        // Not really sure what kind of averaging are being done here for each mass direction.
        node->mx = (node->nw->m * node->nw->mx + node->sw->m * node->sw->mx +
                        node->ne->m * node->ne->mx + node->se->m * node->se->mx) / node->m;
        node->my = (node->nw->m * node->nw->my + node->sw->m * node->sw->my +
                        node->ne->m * node->ne->my + node->se->m * node->se->my) / node->m;
    }
}

void quadtree_compute_force_on_node(quad_node_t * affected_node, quad_node_t * examined_node, double * F) { // Computes all individual force contributions.
    if(examined_node->particle == NULL && examined_node->nw == NULL) {
        // If the node is empty, then it doesn't add any force and we don't have to do anything.
    } else if(examined_node->particle != NULL) { // Otherwise, we compute the mass-distance components and add them each component force.
        double rx = affected_node->particle->x[index] - examined_node->particle->x[index];
        double ry = affected_node->particle->y[index] - examined_node->particle->y[index];
        double r = sqrt(rx*rx + ry*ry);
        double mass_over_dist = examined_node->particle->mass / powf(r + e0, 3);
        F[0] += mass_over_dist * rx;
        F[1] += mass_over_dist * ry;
    } else { 
        double x_dist = affected_node->particle->x[index] - (examined_node->x + examined_node->width * 0.5);
        double y_dist = affected_node->particle->y[index] - (examined_node->y + examined_node->width * 0.5);
        double distance = sqrt(y_dist * y_dist + x_dist * x_dist);
        double theta = examined_node->width / distance;

        if(theta <= theta_max) {
            double rx = affected_node->particle->x[index] - examined_node->mass_x;
            double ry = affected_node->particle->y[index] - examined_node->mass_y;
            double r = sqrt(rx*rx + ry*ry);
            double mass_over_dist = examined_node->mass / powf(r + e0, 3);
            F[0] += mass_over_dist * rx;
            F[1] += mass_over_dist * ry;
        } else {
            quadtree_compute_force_on_node(affected_node, examined_node->nw, F);
            quadtree_compute_force_on_node(affected_node, examined_node->sw, F);
            quadtree_compute_force_on_node(affected_node, examined_node->ne, F);
            quadtree_compute_force_on_node(affected_node, examined_node->se, F);
        }
    }
}

void quadtree_compute_forces(quad_node_t * node, quad_node_t * root) { // Adds together all forces.
    double velocity[2];
    double position[2];
    char node_updated = 0;

    if(node->particle == NULL && node->nw == NULL) {
    	// If the node is empty, then it exerts no force and we do nothing.
    } else if(node->particle != NULL) { // Otherwise, we compute the force on this particle.
        double sum[2] = {0, 0};
        quadtree_compute_force_on_node(node, root, sum);
        double F[2];
        F[0] = -G * node->particle->mass * sum[0];
        F[1] = -G * node->particle->mass * sum[1];
        velocity[0] = node->particle->vx[index] + dt * F[0]/node->particle->mass;
        velocity[1] = node->particle->vy[index] + dt * F[1]/node->particle->mass;

        position[0] = node->particle->x[index] + dt * velocity[0];
        position[1] = node->particle->y[index] + dt * velocity[1];
        node_updated = 1;
    } else { // Then, we go through the each subnode until we are done and end up in the do-nothing case.
        quadtree_compute_forces(node->nw, root);
        quadtree_compute_forces(node->sw, root);
        quadtree_compute_forces(node->ne, root);
        quadtree_compute_forces(node->se, root);
    }

    if(node_updated){ // When that is done, we update the respective velocities and positions accordingly.
        node->particle->vx[1 - index] = velocity[0];
        node->particle->vy[1 - index] = velocity[1];
        node->particle->x[1 - index] = position[0];
        node->particle->y[1 - index] = position[1];

        if(graphics) {
            DrawCircle(position[0], position[1], 1, 1, 0.005, 0);
        }
    }
}


int main(int argc, char* argv[]) {
    /*if(argc != 6){
        printf("Usage: ./galsim N filename nsteps delta_t graphics\n");
        return -1;
    }
    int N = atoi(argv[1]);
    char *filename = argv[2];
    int nsteps = atoi(argv[3]);
    double delta_t = atof(argv[4]);
    char graphics = atoi(argv[5]);
    FILE* in_data = fopen(filename, "r");
    if(in_data == NULL) {
        printf("Could not open file.\n");
        return -1;
    }*/

    int N = 2;
    char *filename = "../input_data/circles_N_2.gal";
    char *compare_filename = NULL;//"../ref_output_data/ellipse_N_00010_after200steps.gal";
    int nsteps = 200;
    dt = 1e-5;
    graphics = 1;
    FILE* in_data = fopen(filename, "r");
    theta_max = 0;

    quad_node_t * root = malloc(sizeof * root);
    root->x = 0;
    root->y = 0;
    root->width = 1;
    root->particle = NULL;
    root->nw = NULL;
    root->sw = NULL;
    root->ne = NULL;
    root->se = NULL;

    particle_t *particles = (particle_t*)malloc(sizeof(particle_t)*N);
    particle_t *particles_new = (particle_t*)malloc(sizeof(particle_t)*N);

    G = 100.0/N;

    if(graphics) {
        InitializeGraphics(argv[0], 800, 800);
        SetCAxes(0,1);
        ClearScreen();
        usleep(10000);
    }

    for(int i = 0; i < N; i++) {
        particle_t particle;
        fread(&(particle.x[0]), sizeof(double), 1, in_data);
        fread(&(particle.y[0]), sizeof(double), 1, in_data);
        fread(&(particle.mass), sizeof(double), 1, in_data);
        fread(&(particle.vx[0]), sizeof(double), 1, in_data);
        fread(&(particle.vy[0]), sizeof(double), 1, in_data);
        fread(&(particle.b), sizeof(double), 1, in_data);
        particles[i] = particle;

        /*printf("Particle %d\n", i + 1);
        printf("Position: %lf, %lf\n", particle.x, particle.y);
        printf("Velocity: %lf, %lf\n", particle.v_x, particle.v_y);
        printf("Mass: %lf\n", particle.mass);
        printf("Brightness: %lf\n", particle.brightness);
        printf("\n");*/

        if(graphics) {
            DrawCircle(particles[i].x[0], particles[i].y[0], 1, 1, 0.005, 0);
        }

        /*if(!quadtree_insert(root, &particles[i])){
            printf("Something went wrong\n");
            return -1;
        }*/
    }

    //quadtree_compute_mass(root);
    //DrawCircle(root->mx, root->my, 1, 1, 0.02, 0.2); // Display center of mass

    fclose(in_data);

    for(int t = 0; t < nsteps; t++) {
        if(graphics) {
            Refresh();
            ClearScreen();
        }
        index = t % 2;

        for(int i = 0; i < N; i++) {
            if(!quadtree_insert(root, &particles[i])){
                printf("Something went wrong\n");
                return -1;
            }
            //printf("Particle %d: (%lf, %lf)\n", i, particles[i].x, particles[i].y);
        }
        quadtree_compute_mass(root);
        quadtree_compute_forces(root, root);

        root->x = 0;
        root->y = 0;
        root->width = 1;
        root->particle = NULL;
        root->nw = NULL;
        root->sw = NULL;
        root->ne = NULL;
        root->se = NULL;

        if(graphics) {
            Refresh();
            usleep(10000);
        }
    }

    FILE* out = fopen("result.gal", "wb");
    double *buffer = (double*) malloc(sizeof(double)*N*6);
    for(int i = 0; i < N*6; i+=6){
        int j = i/6;
        buffer[i] = particles[j].x[index];
        buffer[i+1] = particles[j].y[index];
        buffer[i+2] = particles[j].mass;
        buffer[i+3] = particles[j].v_x[index];
        buffer[i+4] = particles[j].v_y[index];
        buffer[i+5] = particles[j].brightness;
        printf("Particle at (%lf, %lf)\n", particles[j].x[index], particles[j].y[index]);
    }
    fwrite(buffer, sizeof(double), N*6, out);

    if(graphics) {
        if(compare_filename != NULL) {
            FILE *compare_data = fopen(compare_filename, "rb");
            for (int i = 0; i < N; i++) {
                double position[2];
                fread(&(position[0]), sizeof(double), 1, compare_data);
                fread(&(position[1]), sizeof(double), 1, compare_data);
                DrawCircle(position[0], position[1], 1, 1, 0.005, 0.5);
            }
            Refresh();
        }

        printf("Animation complete, press Q to quit.\n");

        while (!CheckForQuit()) {
            usleep(3000);
        }
        FlushDisplay();
        CloseDisplay();
    }

    free(particles);

    return 0;

}