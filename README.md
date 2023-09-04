# sugar_elicited_search
This repository contains codes for calculating parameters to analyze local search behaviour elicited by the intake of sugar in flies.

The following parameters can be calculated:

x_nor_y_nor: normalizes the x and y coordinates to strating position
velocity: caluculates the velocity 
feeding_final: calculates feeding time based on velocity threshold
walk: removes the feeding phase and retains the search path
path_length: calcultes the walking trajectory (in mm)
search_time: calculates time spent in the search (in s)
beeline: calculates the distance between the first and the last point of the path
meander: calculated by dividing the beeline of the path to the total path length, and subtracting from 1, as a degree of tortuosity of search
number of returns: count the number of returns using two concentric circles. An inner circle indicating the origin of search (Rin = 2.5 mm) and the outer circle indicating the minimum distance (Rout = 4 mm) that the fly had to move away from the origin. A return was defined as a movement out of the outer circle (Rout) and then coming back into the inner circle (Rin).
