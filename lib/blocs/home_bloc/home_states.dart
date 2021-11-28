abstract class HomeState {}

class HomeInitialState extends HomeState {}

class FirstNameState extends HomeState {
  final String firstName;

  FirstNameState(this.firstName);
}

class LastNameState extends HomeState {
  final String lastName;

  LastNameState(this.lastName);
}

class AgeState extends HomeState {
  final int age;

  AgeState(this.age);
}
