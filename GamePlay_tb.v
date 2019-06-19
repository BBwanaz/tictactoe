module TestGame;

reg[8:0] xin, oin; // defines inputs as 9 bit buses

wire[8:0] oout; // defines output as a 9 bit bus

 

 

  PlayAdjacentEdge DUT(xin, oin, oout) ; // initializes the function we want to test

  //TicTacToe OPP(oin,xin,oout);

  initial begin

 

    // all zeros,

    xin = 0 ; oin = 0 ;

    // waits and displays the positions of x and o in a 9 bit code

    #100 $display("%b %b -> %b", xin, oin, oout) ;

    // x makes the first move in the  bottom right corner

    xin = 9'b000000001; oin = 9'b000000000;

    // waits and displays new 9 bit code based on the inputs

    #100 $display("%b %b -> %b",xin,oin,oout);

    // o makes a move in the middle (as per the game logic)

    xin = 9'b000000001; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // x makes a move on the top right corner

    xin = 9'b100000001; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // o's next move depends on what the PlayAdjacentEdge program dictates

    oin =(oout | oin);

    // should be 000110000 for o displayed

    #100 $display("%b %b -> %b",xin,oin,oout);

    // reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, oout) ;

    // x makes the first move in bottom right corner

    xin = 9'b000000100; oin = 9'b000000000;

    // o responds as per game logic

    #100 $display("%b %b -> %b",xin,oin,oout);

    xin = 9'b000000100; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // x plays in the top right corner

    xin = 9'b001000100; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // o's next move depends on what the PlayAdjacentEdge program dictates

    oin =(oout | oin);

    // should be 000110000 for o displayed

    #100 $display("%b %b -> %b",xin,oin,oout);

    // reset

    xin = 0 ; oin = 0 ;

    #100 $display("%b %b -> %b", xin, oin, oout) ;

    // x plays in bottom left corner

    xin = 9'b000000100; oin = 9'b000000000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // o responds

    xin = 9'b000000100; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // x plays in the middle of the top row

    xin = 9'b010000100; oin = 9'b000010000;

    #100 $display("%b %b -> %b",xin,oin,oout);

    // o's o's next move depends on what the PlayAdjacentEdge program dictates

    oin =(oout | oin);

    // should be 000000000 displayed for o since PlayAdjacentEdge never activates

    #100 $display("%b %b -> %b",xin,oin,oout);

 

end // ends begin statement

 

endmodule // ends test module
