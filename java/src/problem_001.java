/**
 * Created with IntelliJ IDEA.
 * User: pbcoronel
 * Date: 10/17/13
 * Time: 9:16 PM
 */
public class problem_001 {
    public static void main(String[] args) {
        int limit;
        limit = 1000;
        System.out.println(fizz_sum(limit));
    }

    public static int fizz_sum(int limit) {
        int sum;
        sum = 0;
        for (int i = 1; i < limit; i = i + 1) {
            if (i % 3 == 0 || i % 5 == 0){
                sum = sum + i;
            }
        }
        return sum;
    }
}
