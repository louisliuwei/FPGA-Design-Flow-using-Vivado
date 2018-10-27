`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: lab1_tb
/////////////////////////////////////////////////////////////////
module lab1_tb(

    );
    
    reg [3:0] btns;
    wire [3:0] leds;
    reg [3:0] e_led;
    
    integer i;
    
    lab1 dut(.led(leds),.btn(btns));
 
    function [3:0] expected_led;
       input [3:0] btn;
    begin      
       expected_led[0] = ~btn[0];
       expected_led[1] = btn[1] & ~btn[2];
       expected_led[3] = btn[2] & btn[3];
       expected_led[2] = expected_led[1] | expected_led[3];
    end   
    endfunction   
    
    initial
    begin
        for (i=0; i < 15; i=i+1)
        begin
            #50 btns=i;
            #10 e_led = expected_led(btns);
            if(leds == e_led)
                $display("LED output matched at", $time);
            else
                $display("LED output mis-matched at ",$time,": expected: %b, actual: %b", e_led, leds);
        end
    end
      
endmodule
