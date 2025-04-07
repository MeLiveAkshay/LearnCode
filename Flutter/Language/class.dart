class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Student s1 = Student('Akshay', 22);
  s1.display(); // Name: Akshay, Age: 22
}
