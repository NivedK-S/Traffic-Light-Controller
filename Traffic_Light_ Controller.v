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

always @(posedge clk) //State change at positive edge of the clock
begin
  if(clear)
    state<=S0;
  else
    state<=next_state;     
end
// Computing value of Highway signal and Country signal
always@(state)
begin
 case (state)
    S0 : begin
        hwy=GREEN;
        cntry=RED;
         end
    S1 : begin
        hwy=YELLOW;
        cntry=RED;
         end
    S2 : begin
        hwy=RED;
        cntry=RED;
         end  
    S3 : begin
        hwy=RED;
        cntry=GREEN;
         end
    S4 : begin
        hwy=RED;
        cntry=YELLOW;
         end        
    default: 
 endcase
end  
endmodule