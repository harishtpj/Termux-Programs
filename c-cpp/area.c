#include <stdio.h>
#define pi 3.14

float square(float s){
  return s * s;
}

float circle(float r){
 return pi * r * r;
}

int main(void) {
  unsigned int opt;
  float side, radius;
  printf("Square and Circle area calculator");
  printf("\n 1.Square\n 2.Circle");
  printf("\n Enter your option: ");
  scanf("%d", &opt);

  if(opt == 1){
	printf("\nEnter side: ");
	scanf("%f", &side);
	printf("\nArea of square of side %f is %f\n", side, square(side));
  }
  else if(opt == 2){
	printf("\nEnter Radius: ");
	scanf("%f", &radius);
	printf("\nArea of circle of radius %f is %f\n",     radius, circle(radius));
  }
  else{
	  printf("\nnInvalid input\n");
  }
  return 0;
}
