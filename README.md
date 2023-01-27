# Two Simple Prolog Project.


# Suko

Every day, The Times newspaper publishes a Suko puzzle. Readers are challenged to place the digits 1 to 9 in the cells of a grid so that numbers in four white circles are the sums of the digits in the cells surrounding them, and the numbers in the three coloured circles are the sums of the digits in the cells of the same colour. Suko 3566 of Thursday 12th August 2022, and its solution are shown in Figure 1.

![image](https://user-images.githubusercontent.com/121934188/211827882-65872c56-ef89-4ec5-b5fc-3bd268839a40.png)

sample input and output:

Input:
suko( 15, 14, 26, 23
, [0,1,2,3], 16
, [4,6,7], 17
, [5,8], 12
, GRID ).

Output:
GRID = [1, 2, 4, 9, 3, 5, 6, 8, 7]

# The Bearings’ Trait

At Teaser Tor trig. point I found a geocaching box. The three-figure compass bearings (bearing 000 = north, 090 = east, etc.) from there to the church spires at Ayton, Beeton and Seaton were needed to decode the clue to the next location.
Each spire lay in a different compass quadrant (eg. 000 to 090 [sic] is the North-East quadrant). Curiously, each of the numerals 1 to 9 occurred in these bearings and none of the bearings were prime values.
Given the above, if you chose one village at random to be told only its church spire’s bearing, it might be that you could not calculate the other two bearings with certainty, but it would be more likely that you could. Give the three bearings in ascending order.

sample input and output:

Input:
acceptable( 169, 247, 358 )

Output:
true
