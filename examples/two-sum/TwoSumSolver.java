public class TwoSumSolver {
  public TwoSumSolver() {}

  public IntPair solve(int[] values, int target) {
    int i = 0;

    while (i < values.length) {
      int j = i + 1;

      while (j < values.length) {
        if (values[i] + values[j] == target) {
          return new IntPair(i, j);
        }
        j = j + 1;
      }

      i = i + 1;
    }

    return null;
  }
}
