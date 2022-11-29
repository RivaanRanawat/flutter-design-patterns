// DART EXAMPLE

enum EmployeeType {
  programmer,
  boss,
  hr,
}

abstract class Employee {
  void work();
  // 1st Approach
  factory Employee(EmployeeType type) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hr:
        return HRManager();
      case EmployeeType.boss:
        return Boss();
      default:
        return Programmer();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print('coding an app');
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print('recruiting people');
  }
}

class Boss implements Employee {
  @override
  void work() {
    print('leading the people');
  }
}

// Alternate Approach
class FactoryMethod {
  static Employee getEmployee(String type) {
    switch (type) {
      case 'programmer':
        return Programmer();
      case 'hr':
        return HRManager();
      case 'boss':
        return Boss();
      default:
        return Programmer();
    }
  }
}
