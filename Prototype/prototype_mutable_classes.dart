class Person {
  String name;
  String lastName;
  int age;
  String nation;
  String email;
  Person({
    required this.name,
    required this.lastName,
    required this.age,
    required this.nation,
    required this.email,
  });
  Person clone() => Person(name: name, lastName: lastName, age: age, nation: nation, email: email);
}

/*
Person person = Person(
      name: 'Rivaan',
      lastName: 'Ranawat',
      age: 17,
      nation: 'IN',
      email: '',
    );
Person person1 = person.clone();
*/
