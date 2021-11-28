abstract class HomeEvent {}

class FirstNameChanged extends HomeEvent {
  final String firstName;

  FirstNameChanged(this.firstName);
}

class LastNameChanged extends HomeEvent {
  final String lastName;

  LastNameChanged(this.lastName);
}

class AgeChanged extends HomeEvent {
  final int age;

  AgeChanged(this.age);
}
