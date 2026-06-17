public class FinancialForecast {

    // Recursive method to calculate future value
    public static double calculateFutureValue(double currentValue,
                                              double growthRate,
                                              int years) {

        // Base Case
        if (years == 0) {
            return currentValue;
        }

        // Recursive Case
        return calculateFutureValue(
                currentValue * (1 + growthRate),
                growthRate,
                years - 1
        );
    }

    public static void main(String[] args) {

        double currentValue = 10000;   // Initial investment
        double growthRate = 0.10;      // 10% annual growth
        int years = 5;

        double futureValue =
                calculateFutureValue(currentValue, growthRate, years);

        System.out.printf("Current Value: %.2f%n", currentValue);
        System.out.printf("Growth Rate: %.2f%%%n", growthRate * 100);
        System.out.println("Years: " + years);
        System.out.printf("Predicted Future Value: %.2f%n", futureValue);
    }
}