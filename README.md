# Random-Noise-Generator
Random Noise Generation using LFSR and Implementation Matlab and VHDL

## What Linear FeedBack Shift Register Mean?

A linear feedback shift register takes a linear function, typically an exclusive OR, as an input. An LSFR, like other shift registers, is a cascade of flip-flop circuits. The bits that change state for the others in the cascade are called taps.

## How to Work Random Noise Generation With LFSR?

A LFSR is specified entirely by its polynomial. For example, a 6th-degree polynomial with every term present is represented with the equation x6 + x5 + x4 + x3 + x2 + x + 1. There are 2(6 - 1) = 32 different possible polynomials of this size. Just as with numbers, some polynomials are prime or primitive. We are interested in primitive polynomials because they will give us maximum length periods when shifting. **A maximum length polynomial of degree n will have 2n - 1 different states** . A new state is transitioned to after each shift. Consequently, a 6th-degree polynomial will have 31 different states. Every number between 1 and 31 will occur in the shift register before it repeats.

## 16 Bit Random Noise Generation Block Diagram

![Block Diagram](https://github.com/ugurbayezit/Random-Noise-Generator/blob/main/LFSR-F16.png)

## LFSR Polynomials Table

![Table](https://github.com/ugurbayezit/Random-Noise-Generator/blob/main/LFSR-Table.PNG)

**If you are using vivado, you can change the waveform style to analog in the test bench.** 
