module Traffic_Light_Controller (
    input traffic,// traffic is the output from sensor on Country Road
    input clk,
    input clear,
    output reg [1:0] hwy,
    output reg [1:0] cntry,

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
        hwy<=GREEN;
        cntry<=RED;
         end
    S1 : begin
        hwy<=YELLOW;
        cntry<=RED;
         end
    S2 : begin
        hwy<=RED;
        cntry<=RED;
         end  
    S3 : begin
        hwy<=RED;
        cntry<=GREEN;
         end
    S4 : begin
        hwy<=RED;
        cntry<=YELLOW;
         end        
    default:  begin
                hwy<=GREEN;
                cntry<=RED;
              end
         
 endcase
end
//State Machine using case assignments
    always@(state or traffic)
begin
    case(state)
     S0: if(traffic)
           next_state <= S1;
         else
           next_state <= S0;
     S1:next_state<=S2;
     S2:next_state<=S3;
     S3:begin
        if(traffic)
        next_state<=S3;
        else
        next_state<=S4;
        end
     S4:next_state<=S0;

     endcase
end  
endmodule
