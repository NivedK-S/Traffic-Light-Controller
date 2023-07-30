
# Traffic Light Controller

This is the verilog implementation of Traffic Light Controller using Finite State Machine.


## Logic used in modeling FSM
+ There is a Sensor installed in country road which will analyze the traffic in country road, if there is traffic the output of sensor becomes logic one,
+ If there is no traffic the output of the sensor is logic zero.
+ The Finite State Machine Used here is Mealy Machine, since output depend on present state and input.

      



## Here are the states
|STATE|SIGNAL ON HIGHWAY ROAD|SIGNAL ON COUNTRY ROAD|
|:----|:---------------------|:---------------------|
|S0|GREEN|RED|
|S1|YELLOW|RED|
|S2|RED|RED|
|S3|RED|GREEN|
|S4|RED|YELLOW|


## State Description
There are 5 states hence 3 bits are required to represent the states they are:
|STATE|Binary Description|
|:----|:---------------------|
|S0|000|
|S1|001|
|S2|010|
|S3|011|
|S4|100|
