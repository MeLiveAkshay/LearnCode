void main() {
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(4); // Duplicate won't be added
  numbers.add(5);

  print(numbers); // {1, 2, 3, 4, 5}
}
