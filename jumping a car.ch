/* File: getaccelerometer.ch
   get the accelerometer data */
#include <linkbot.h>
#include<math.h>
CLinkbotI robot,b2;
double x, y, z, x1, y1, z1;
robot.setSpeed(4,1.75);
b2.setSpeed(4,1.75);
robot.driveDistanceNB(72,1.75);
delay(1000);
robot.getAccelerometerData(x1, y1, z1);


while(1) {
    robot.getAccelerometerData(x, y, z);
    printf("Accelerometer: x: %lf y: %lf z: %lf\n", x, y, z);
    
    if (abs(y1-y)>0.2) {
            printf("y!=0");
            robot.driveDistance(-0.01,1.75);
            break;
    }
}
b2.driveDistance(8.2,1.75);






















/* Here's an outdated back up: 
#include <linkbot.h>
CLinkbotI robot,b2;
double x, y, z, x1, y1, z1;
robot.setSpeed(4,1.75);
b2.setSpeed(4,1.75);
robot.driveDistanceNB(72,1.75);
delay(1000);
robot.getAccelerometerData(x1, y1, z1);


while(1) {
    robot.getAccelerometerData(x, y, z);
    printf("Accelerometer: x: %lf y: %lf z: %lf\n", x, y, z);
    
    if (y>0.19) {
            printf("y!=0");
            robot.driveDistance(-0.01,1.75);
            break;
    }
}
b2.driveDistance(8.2,1.75);
*/


