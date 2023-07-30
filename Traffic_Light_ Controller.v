module Traffic_Light_Controller (
    input x;
    input clk;
    input clear;
    output reg [1:0] hwy;
    output reg [1:0] cntry;

);
//Status of lights
parameter RED = 2'd0,
          YELLOW = 2'd1,
          GREEN =2'd2;
//State Definition      HWY             CNTRY
parameter S0 = 3'd0,// GREEN             RED
          S1 = 3'd1,// YELLOW            RED
          S2 = 3'd2,// RED               RED
          S3 = 3'd3,// RED               GREEN
          S4 = 3'd4;// RED               YELLOW

reg [2:0] state;
reg [2:0] next_state;

    
endmodule