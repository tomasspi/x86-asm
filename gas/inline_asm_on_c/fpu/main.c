/*
  floating point registers are used as a stack
  f: any fp reg
  t: top fp reg
  u: second fp reg

  use of fsincos instruction
*/

#include <stdio.h>

int main(int argc, char const *argv[])
{
  float angle = 90;
  float radian, cosine, sine;

  radian = angle / 180 * 3.14159;

  __asm__
  (
    "fsincos"
    : "=t"(cosine), "=u"(sine)
    : "0"(radian) //input
  );

  printf("cos(%f)= %f\nsin(%f)= %f\n", angle, cosine, angle, sine);

  return 0;
}
