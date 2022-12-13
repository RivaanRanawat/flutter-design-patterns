// Approach 1 -> Singleton1 singleton = Singleton1.getInstance();
class Singleton1 {
  static Singleton1? _instance; // instance of this class

  Singleton1._internal() {
    print('PRIVATE CONSTRUCTOR RAN');
  }

  static Singleton1 getInstance() {
    _instance ??= Singleton1._internal();
    return _instance!;
  }
}

// Approach 2 -> Singleton2 singleton = Singleton2.instance;
class Singleton2 {
  static Singleton2? _instance; // instance of this class

  Singleton2._internal() {
    print('PRIVATE CONSTRUCTOR RAN');
  }

  static get instance {
    _instance ??= Singleton2._internal();
    return _instance!;
  }
}

// Approach 3 -> Singleton3 singleton = Singleton3();
class Singleton3 {
  static Singleton3? _instance; // instance of this class

  Singleton3._internal() {
    print('PRIVATE CONSTRUCTOR RAN');
  }

  factory Singleton3() {
    _instance ??= Singleton3._internal();
    return _instance!;
  }
}
