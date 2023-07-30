## 🚀 About Me
I'm a VLSI enthusiast who recently qualified GATE 2023 with an  AIR of 5411. I possess sound knowledge in ASIC design flow, Digital System Design, CMOS, Verilog, and Digital Electronics. Passionate about creating innovative solutions and excited to contribute to the world of VLSI. Let's connect and collaborate on exciting projects!
## 🛠 Skills
Verilog, Digital Electronics, Digital System Design, CMOS, ASIC Design Flow, VLSI.
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
