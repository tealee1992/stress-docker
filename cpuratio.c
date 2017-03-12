#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <time.h>

int main()
{
 int timeuse=0;
        struct timeval tpstart,tpend;

        while (1)
        {
                gettimeofday(&tpstart,NULL);
                while (1)
                {
                        gettimeofday(&tpend,NULL);
                        timeuse = 1000000 * (tpend.tv_sec - tpstart.tv_sec) + (tpend.tv_usec - tpstart.tv_usec);
                        timeuse /= 1000;
                        usleep(10);
                }

                sleep(20 / 1000);
                
        }
        return 0;
}
