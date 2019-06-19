module TestWIn;

 

reg [8:0] xin, oin;

wire [8:0] xout, oout;

 

DetectWinner dut(xin, oin, xout) ;

  DetectWinner opponent(oin, xin, oout) ;

 

  initial begin

    // all zeros,

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x can win across the top

    xin = 9'b101 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // near-win: o made a mistake

    xin = 9'b101 ; oin = 9'b1000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x wins along the bottom

    xin = 9'b111 ; oin = 9'b1000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // all zeros,

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x set to win across middle

    xin = 9'b101000 ; oin = 9'b00110 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x win across middle

    xin = 9'b111000 ; oin = 9'b00110 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    //  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x set to win across bottom

    xin = 9'b101000000 ; oin = 9'b11000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x win across bottom

    xin = 9'b111000000 ; oin = 9'b11000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // all zeros,

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x set to win across left column

    xin = 9'b100100 ; oin = 9'b0011 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x win across left column

    xin = 9'b100100100 ; oin = 9'b00110 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    //  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x set to win across middle column

    xin = 9'b010010000 ; oin = 9'b101000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // x win across middle column

    xin = 9'b010010010 ; oin = 9'b11000 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    //  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // o set to win across right column

    xin = 9'b010100100 ; oin = 9'b1001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // o win across right column

    xin = 9'b010100100 ; oin = 9'b1001001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

    //  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // setup tie1

    xin = 9'b110001100 ; oin = 9'b001110010 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // tie1

    xin = 9'b110001101 ; oin = 9'b001110010 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

//  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // setup tie2

    xin = 9'b011100100 ; oin = 9'b100011010 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // tie2

    xin = 9'b011100101 ; oin = 9'b100011010 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

//  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // setup tie3

    xin = 9'b101100010 ; oin = 9'b010011100 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // tie3

    xin = 9'b101100011 ; oin = 9'b010011100 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

//  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // setup tie4

    xin = 9'b001001110 ; oin = 9'b010110001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // tie4

    xin = 9'b101001110 ; oin = 9'b010110001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

//  reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // setup tie5

    xin = 9'b110001100 ; oin = 9'b001110001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

    // tie5

    xin = 9'b110001110 ; oin = 9'b001110001 ;

    #100 $display("%b %b -> %b", xin, oin, xout) ;

 

 

 

end

endmodule
