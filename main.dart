class Student {
  String name;
  int _age;
  String _favoriteLanguage;

  // Task 1.1 - Constructor
  Student(this.name, this._age, this._favoriteLanguage);

  // Task 1.5 - Named Constructor for Guest
  Student.guest()
      : name = "Guest",
        _age = 0,
        _favoriteLanguage = "Unknown";

  // Task 1.1 - Method to print details
  void printDetails() {
    print('Student: $name, Age: $_age, Favorite Language: $_favoriteLanguage');
  }

  // Task 1.2 - Update favorite language
  void updateFavoriteLanguage(String newLanguage) {
    _favoriteLanguage = newLanguage;
    print('Updated favorite language to $newLanguage');
  }

  // Task 1.3 - Calculate year of birth
  void calculateYearOfBirth() {
    int yearOfBirth = DateTime.now().year - _age;
    print("$name's year of birth: $yearOfBirth");
  }

  // Task 1.6 - Getter and Setter for favoriteLanguage
  String get favoriteLang => _favoriteLanguage;

  set favoriteLang(String newLang) {
    if (newLang.isNotEmpty) {
      _favoriteLanguage = newLang;
      print('Updated favorite language to $_favoriteLanguage');
    } else {
      print('Language cannot be empty!');
    }
  }

  // Task 1.7 - Getter and Setter for age with validation
  int get age => _age;

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Trying to set age to $value... Ignored.');
    }
  }
}

// Task 1.4 - Student Manager Class
class StudentManager {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void printAllStudents() {
    for (var student in students) {
      student.printDetails();
    }
  }
}

// ✅ Main function to test all tasks
void main() {
  // Task 1.1 - Create and print student
  var student1 = Student("Amro", 27, "ReactJS");
  student1.printDetails();

  // Task 1.2 - Update favorite language
  student1.updateFavoriteLanguage("Dart");

  // Task 1.3 - Calculate year of birth
  student1.calculateYearOfBirth();

  // Task 1.6 - Getter & Setter for favorite language
  student1.favoriteLang = "Flutter";
  print("Current favorite language: ${student1.favoriteLang}");

  // Task 1.7 - Setter with validation for age
  student1.age = -5;
  print("Student age: ${student1.age}");

  // Task 1.5 - Create a guest student
  var guestStudent = Student.guest();
  guestStudent.printDetails();

  // Task 1.4 - Student Manager
  var manager = StudentManager();
  manager.addStudent(student1);
  manager.addStudent(Student("Lina", 22, "Dart"));
  manager.printAllStudents();
}
