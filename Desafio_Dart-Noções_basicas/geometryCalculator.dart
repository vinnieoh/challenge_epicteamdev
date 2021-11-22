
abstract class Calculator {

  double? a;
  double? b;

  void areaCiculor(double a) => print((a * a) * 1.14);
  void areaRetangulo(double a, double b) => print(a * b);
  void areaQudrado(double a) => print(a * a);
  void areaTriangulo(double a, double b) => print((a * b) / 2); 
}

class GeometryCalculator extends Calculator {
  
 void figuraGeomtrica(String tipoFig, double a, [double b=0, double c=0]){
   var tipo = tipoFig.toLowerCase();

   switch (tipo) {
     case "circle":
        areaCiculor(a);
        break;

      case "rectangle":
        areaRetangulo(a, b);
        break;

      case "triangle":
        areaTriangulo(a, b);
        break;

      case "square":
        areaQudrado(a);
        break;

      default:
        print("Opcao Invalida!");
        break;
   }

 }


}

void main(List<String> args) {
  final cal = GeometryCalculator();
  cal.figuraGeomtrica("circle", 6);
  cal.figuraGeomtrica("rectangle", 5, 7);
  cal.figuraGeomtrica("tRiangle", 3, 4, 5);
  cal.figuraGeomtrica("SquaRe", 2);
}
