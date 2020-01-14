import org.gicentre.utils.stat.*;

final int TEMP = 0;
final int ALTI = 1;
final int PRES = 2;
final int ACCX = 3;
final int ACCY = 4;
final int ACCZ = 5;

final int ancho = 110;
final int alto = 500/2 - 20;

BarChart [] charts = new BarChart[6];
int [] rs = {30, 6, 183, 124, 236, 236};
int [] gs = {62, 206, 99, 203, 236, 63};
int [] bs = {138, 201, 203, 99, 64, 43};

void initCharts(PApplet father) {
  for(int i = 0; i < charts.length; i++) {
   charts[i] = new BarChart(father);
   BarChart ba = charts[i]; 
   float [] data = new float[] {0, ran.nextFloat()*100};
   String [] labels = makeLabels(i);
   ba.setData(data);
   ba.setBarLabels(labels);
   ba.setBarColour(color(rs[i], gs[i], bs[i]));
   ba.setValueFormat(makeValueFormat(i));
   ba.showValueAxis(true);
   ba.showCategoryAxis(true);
  }
}

String [] makeLabels(int i) {
  String [] labels = {"", ""};
  switch(i) {
    case TEMP:
    labels[1] = "Temp.";
    break;
    case ALTI:
    labels[1] = "Altitud";
    break;
    case PRES:
    labels[1] = "Presión";
    break;
    case ACCX:
    labels[1] = "Acc. X";
    break;
    case ACCY:
    labels[1] = "Acc. Y";
    break;
    case ACCZ: 
    labels[1] = "Acc. Z";
    break;
  }
  return labels;
}

String makeValueFormat(int i) {
 switch(i) {
  case TEMP:
  return "###.##°C";
  case ALTI:
  return "###m";
  case PRES:
  return "####hPa";
  case ACCX:
  return "###.##m/s^2";
  case ACCY:
  return "###.##m/s^2";
  case ACCZ:
  return "###.##m/s^2";
  default:
  return "";
 }
}

void drawCharts() {
  int x0 = 5, y0 = 5;
  for(int i = 0; i < charts.length; i++) {
    int fact = i/2;
    int xi = x0 + fact*ancho;
    int yi = y0;
    if(i % 2 == 1) {
      yi += alto;
    }
    charts[i].draw(xi, yi, ancho, alto);
  }
}
