public class Main {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mobile", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };

        int targetId = 104;

        System.out.println("===== Linear Search =====");

        Product linearResult =
                SearchAlgorithms.linearSearch(products, targetId);

        if (linearResult != null) {
            System.out.println("Product Found:");
            System.out.println(linearResult);
        } else {
            System.out.println("Product Not Found");
        }

        System.out.println();

        System.out.println("===== Binary Search =====");

        Product binaryResult =
                SearchAlgorithms.binarySearch(products, targetId);

        if (binaryResult != null) {
            System.out.println("Product Found:");
            System.out.println(binaryResult);
        } else {
            System.out.println("Product Not Found");
        }
    }
}