public class TwoSumDemo {
  public TwoSumDemo() {}

  public static int test() {
    int[] values = new int[6];
    IntPair answer = null;

    values[0] = 4;
    values[1] = 1;
    values[2] = 9;
    values[3] = 3;
    values[4] = 7;
    values[5] = 11;

    answer = new TwoSumSolver().solve(values, 10);

    if (answer == null) {
      System.out.println("not found");
    } else {
      System.out.println(answer.render());
    }

    return 123;
  }
}
