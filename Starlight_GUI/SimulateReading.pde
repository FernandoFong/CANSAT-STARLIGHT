import java.util.Random;

void setRandomReading(int i) {
  charts[i].setData(new float[] {0, ran.nextFloat()*1000});
}
