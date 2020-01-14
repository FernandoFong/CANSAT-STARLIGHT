import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import java.util.Random;

import processing.opengl.*;

Random ran;
BarChart barChart;
float [] data;
BarChart altitude;
float [] alts;

int r = 209, g = 209, b = 209; 

void setup() {
  
  size(1000,500);
  smooth();
  background(r, g, b);
  ran = new Random();
  initCharts(this);
  
}

void draw() {
  
   background(r, g, b);
   setRandomReading(ran.nextInt(6));
   drawCharts();
   fill(120);
   delay(500);
   
}
