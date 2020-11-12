#!/usr/bin/env instantfpc
{

Program Title: Drunkard’s Walk Simulation

Written By: James Hill

Date Written: November, 2020

Written For: Self-Directed Project


Program Summary: This program simulates the random staggering of Sam the Drunk
 across a bridge. Starting from the center, he takes steps towards the right or 
 left banks in one-foot increments. Happily, he will stay on the bridge and not 
 fall to the water below to be devoured by alligators, piranha fish, and snapping
  turtles. The program will calculate how many steps it takes for Sam to reach 
  either the right or left bank. 


‘In mathematics, a random walk is a mathematical object, known as a stochastic
 or random process, that describes a path that consists of a number of random
  steps on some mathematical space such as the integers.’
- Wikipedia, ‘Random Walk’. 

}

program drunkardsWalk (input,output);
uses crt;

var
    numberOfRuns, bridgePosition, stepsCount, count: integer;
    direction:real;

begin
    Randomize(); {activate random number generator}

    {Get user input - number of iterations}
    writeln ('How many times would you like to run the simulation?');
    writeln ('');
    writeln ('More iterations provide a more accurate statistical model.');
    writeln ('Enter the number of iterations: ');
    readln (numberOfRuns);
    clrscr;

    {Simulation loop}
    for count := 1 to numberOfRuns do {Repeat loop numberOfRuns times}
    
    begin
        bridgePosition := 20; {Sam's start position at center of bridge}
        stepsCount := 0; {intialize the stepsCount variable}
        {These variables reset at the start of every iteration
    }
        repeat
            direction := random; {Get random number between 0 and 1}
            
            {Sam's motion to the left or right on the bridge}
            if direction < 0.5 then
            bridgePosition := bridgePosition - 1;
            if direction > 0.5 then
            bridgePosition := bridgePosition + 1;

            stepsCount := stepsCount + 1; {increment steps counter}

            {Prints results when Sam reaches either bank}
            if bridgePosition = 40 then 
             writeln ('Sam reaches the right bank in ',stepsCount,' steps.');
            if bridgePosition = 0 then 
            writeln ('Sam reaches the left bank in ',stepsCount,' steps.');  
        
        {Repeat loop breaks when Sam reaches one bank or the other}
        until (bridgePosition = 0) or (bridgePosition = 40);

    end; {Terminate simulation loop}
end. {Terminate program}
