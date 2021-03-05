#include <stdlib.h>
#include <stdio.h>
#include <math.h>
// #include "graphics/graphics.h"

typedef struct {
	double x, y, m, vx, vy, b;
} t_particle;

int main(int argc, char const *argv[]) {
	if (argc != 6) {
		printf("Usage: ./galsim N filename nsteps delta_t graphics\n");
		return -1;
	}

	const int N = atoi(argv[1]);
	const char *filename = argv[2];
	const int nsteps = atoi(argv[3]);
	const double dt = atof(argv[4]);
	// const char graphics = atoi(argv[5]);

	FILE* in_data = fopen(filename, "r");

	if (in_data == NULL) {
		printf("Could not open file.\n");
		return -1;
	}

	t_particle *particles = (t_particle*)malloc(N * sizeof(t_particle));
	t_particle *updated_particles = (t_particle*)malloc(N * sizeof(t_particle));

	const double G = 100.0 / N;
	const double e0 = 1e-3;

	// if (graphics) {
	// 	InitializeGraphics((char*)argv[0], 800, 800);
	// 	SetCAxes(0, 1);
	// }

	for (int i = 0; i < N; i++) {
		t_particle particle;
		fread(&(particle.x), sizeof(double), 1, in_data);
		fread(&(particle.y), sizeof(double), 1, in_data);
		fread(&(particle.m), sizeof(double), 1, in_data);
		fread(&(particle.vx), sizeof(double), 1, in_data);
		fread(&(particle.vy), sizeof(double), 1, in_data);
		fread(&(particle.b), sizeof(double), 1, in_data);
		particles[i] = particle;
	}
	fclose(in_data);

	double sumx;
	double sumy;
	double m;
	double rx;
	double ry;
	double r;
	double w;
	for (int t = 0; t < nsteps; t ++) {
		// if (graphics) ClearScreen();

		for (int p = 0; p < N; p++) {
			sumx = 0, sumy = 0;
			for (int q = 0; q < N; q++) {
				m = particles[q].m;
				rx = particles[p].x - particles[q].x;
				ry = particles[p].y - particles[q].y;
				r = sqrt(rx*rx + ry*ry);
				w = m / powf(r + e0, 3);

				sumx += w * rx; // The force in the x
				sumx += w * ry; // and y direction, respectively.
			}
			updated_particles[p] = particles[p];
			updated_particles[p].vx += dt * -G * sumx;
			updated_particles[p].vy += dt * -G * sumy;
			updated_particles[p].x += dt * updated_particles[p].vx;
			updated_particles[p].y += dt * updated_particles[p].vy;

			// if (graphics) DrawCircle(updated_particles[p].x, updated_particles[p].y, 1, 1, 0.005, 0);
		}

		t_particle *tmp_particles = particles;
		particles = updated_particles;
		updated_particles = tmp_particles;

		// if (graphics) {
		// 	Refresh();
		// 	usleep(10000);
		// }
	}

	FILE* out = fopen("result.gal", "wb");
	double *buffer = (double*)malloc(6 * N * sizeof(double));

	for (int i = 0; i < 6 * N; i += 6) {
		int j = i / 6;
		buffer[i] = particles[j].x;
		buffer[i + 1] = particles[j].y;
		buffer[i + 2] = particles[j].m;
		buffer[i + 3] = particles[j].vx;
		buffer[i + 4] = particles[j].vy;
		buffer[i + 5] = particles[j].b;
	}
	fwrite(buffer, sizeof(double), 6 * N, out);

	// if (graphics) {
	// 	printf("Animation complete: Press Q to quit.\n");

	// 	while (!CheckForQuit()) usleep(3000);

	// 	FlushDisplay();
	// 	CloseDisplay();
	// }

	free(particles);

	return 0;
}