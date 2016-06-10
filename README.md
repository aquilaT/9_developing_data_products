---
title: "INSTRUCTIONS FOR SIMULATING NORMAL DISTRIBUTION CURVES WITH VARIOUS PARAMETERS"
author: "Andrey (aquilaT)"
date: "10 θώνÿ 2016 γ."
output: html_document
---
## PROJECT SUMMARY

This is the final presentation for the Course Project of the Coursera 'Developing data products' course

This assignment has two parts: (1) creating a Shiny interactive application and (2) creating the reproducible pitch presentation describing this application.

My Shiny Application is using various inputs to simulating Standard Normal distribution charts with custom parameters 

The Source code for ui.R and server.R files are available on the GitHub repo: LINK_LINK

The App is available at Shiny server following the link: LINK_LINK

The Reproducible Pitch presentation was created using Slidify 

## APP's KEY FUNCTIONALITY

My Web Application functionality:

I developed my Shiny Web application for those students who study Statistics. Visualization of how different statistical distribution functions will change should help students to better visualize and memorize:

1. how major stat charts (PDF, CDF, Random draws from Standard Normal) look like under different parameters
2. how these charts will change if we change major parameters: Mean, Standard 
3. availability of 3 sets of charts on 1 plot allows for better comparison and understanding

Live and interactive visualization of inputs and outputs is an excellent way to deeper learn, "sense" and understand the concept of NORMAL GAUSSIAN DISTRIBUTION CHARTS. 

## R CODE ESSENTIALS

My App generates 3 independent sets of major Normal distribution's curves.

INPUT:

- For generating various independent inputs, 3 sets of sliderInput are used
- for each of 3 curves I put 2 variable parameters: STANDARD DEVIATION and MEAN
- ST DEVIATION varies in the range of 1....5 (default values are 1,2,3 for each of 3 curves)
- MEAN can vary in the range -10....+10 (default values is 0 for each of 3 curves)

OUTPUT:

- To generate PDF, CDF, and Random draws I used R functions dnorm(), pnorm(), rnorm()

## RUNNING SIMULATIONS

We can set 6 parameters independently to observe various combinations. 

FIRST CURVE: Set MEAN1 and STANDARD DEVIATION1 using Slidebars 1 and 2

SECOND CURVE: Set MEAN1 and STANDARD DEVIATION1 using Slidebars 3 and 4

THIRD CURVE: Set MEAN1 and STANDARD DEVIATION1 using Slidebars 5 and 6