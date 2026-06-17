# Exercise 2: E-commerce Platform Search Function

## Objective

Implement and compare Linear Search and Binary Search algorithms for an e-commerce platform's product search functionality.

---

## Scenario

An e-commerce platform requires an efficient search mechanism to quickly locate products from a large catalog. This exercise demonstrates the implementation and analysis of Linear Search and Binary Search algorithms.

---

## Project Structure

```
module2
│
├── Product.java
├── SearchAlgorithms.java
└── Main.java
```

---

## Classes

### Product.java

Represents a product with the following attributes:

- productId
- productName
- category

### SearchAlgorithms.java

Contains implementations of:

- Linear Search
- Binary Search

### Main.java

Tests both search algorithms using sample product data.

---

## Big O Notation

Big O notation is used to describe the performance or efficiency of an algorithm as the input size increases.

Common complexities:

| Complexity | Description |
|------------|-------------|
| O(1) | Constant Time |
| O(log n) | Logarithmic Time |
| O(n) | Linear Time |
| O(n²) | Quadratic Time |

Big O helps in comparing algorithms and selecting the most efficient solution.

---

## Search Operations Analysis

### Linear Search

Linear Search checks each element sequentially until the target is found.

#### Time Complexity

| Case | Complexity |
|--------|------------|
| Best Case | O(1) |
| Average Case | O(n) |
| Worst Case | O(n) |

#### Advantages

- Simple implementation
- Works on unsorted data

#### Disadvantages

- Slow for large datasets

---

### Binary Search

Binary Search repeatedly divides a sorted array into halves to locate the target element.

#### Time Complexity

| Case | Complexity |
|--------|------------|
| Best Case | O(1) |
| Average Case | O(log n) |
| Worst Case | O(log n) |

#### Advantages

- Much faster for large datasets
- Efficient searching

#### Disadvantages

- Requires sorted data

---

## Comparison

| Algorithm | Best Case | Average Case | Worst Case |
|------------|------------|------------|------------|
| Linear Search | O(1) | O(n) | O(n) |
| Binary Search | O(1) | O(log n) | O(log n) |

---

## Sample Output

```text
===== Linear Search =====
Product Found:
Product ID: 104, Product Name: Watch, Category: Accessories

===== Binary Search =====
Product Found:
Product ID: 104, Product Name: Watch, Category: Accessories
```

---

## Conclusion

Binary Search is more suitable for an e-commerce platform because product catalogs can contain thousands or millions of products. Since Binary Search operates in O(log n) time, it provides significantly faster search performance than Linear Search when the data is sorted.

---

## How to Compile and Run

### Compile

```bash
javac *.java
```

### Run

```bash
java Main
```

---

## Author

Keerthana Alapati
