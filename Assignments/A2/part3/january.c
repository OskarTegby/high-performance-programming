#include <stdlib.h>
#include <stdio.h>

typedef struct node {
	int day;
	float min;
	float max;
	struct node * next;
} node_t;

void insertNode(node_t **list, int day, float min, float max) {
	node_t *insert;

	if (*list == NULL) {
		insert = malloc(sizeof(node_t));
		insert->day = day;
		insert->min = min;
		insert->max = max;
		insert->next = NULL;
		*list = insert;
	} else if ((*list)->day == day) {
		(*list)->min = min;
		(*list)->max = max;
	} else if ((*list)->day > day) {
		insert = malloc(sizeof(node_t));
		insert->day = day;
		insert->min = min;
		insert->max = max;
		insert->next = *list;
		*list = insert;
	} else if ((*list)->day < day) {
		insertNode(&((*list)->next), day, min, max);
	}
}

void delete(node_t **list, int day) {
	if (*list == NULL) {
		return;
	} else if ((*list)->next == NULL && (*list)->day == day) {
		free(*list);
		*list = NULL;
	} else if ((*list)->day == day) {
		node_t *coming = (*list)->next;
		free(*list);
		*list = coming;
	} else {
		delete(&((*list)->next), day);
	}
}

void print(node_t *list) {
	printf("day\tmin\t\tmax\n");
	while (list != NULL) {
		printf("%d\t%.6f\t%.6f\n", list->day, list->min, list->max);
		list = list->next; 
	}
}

int main(int argc, char const *argv[]) {
	char command;
	int day;
	float min, max;

	node_t * head = NULL;

	printf("Enter command: ");

	while (command != 'Q') {
		scanf("%c", &command);

		while (command == '\n') {
			printf("Enter command: ");
			scanf("%c", &command);
		}

		if (command == 'A') {
			scanf("%d %f %f", &day, &min, &max);
			if (day < 1 || day > 31) {
				printf("Please enter a date from 1 to 31.\n");
			} else {
				insertNode(&head, day, min, max);
			}
		} else if (command == 'D') {
			scanf("%d", &day);
			if (day < 1 || day > 31) {
				printf("Please enter a date from 1 to 31.\n");
			} else {
				delete(&head, day);
			}
		} else if (command == 'P') {
			print(head);
		}
	}
	return 0;
}
