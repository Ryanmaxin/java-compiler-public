public class Main {
  public Main() {}

  public static int getDensity(int mass, int volume) {
    return mass / volume;
  }

  public static int test() {
    int density = Main.getDensity(110, 11);
    System.out.println(density);
    return 123;
  }
}
