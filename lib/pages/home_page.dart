import 'package:bloc1/blocs/home_bloc/home_bloc.dart';
import 'package:bloc1/blocs/home_bloc/home_events.dart';
import 'package:bloc1/blocs/home_bloc/home_states.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomrPageState createState() => _HomrPageState();
}

class _HomrPageState extends State<HomePage> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLcC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: _firstnameController,
            decoration: const InputDecoration(
              hintText: 'First name...',
            ),
          ),
          TextField(
            controller: _lastnameController,
            decoration: const InputDecoration(
              hintText: 'Last name...',
            ),
          ),
          TextField(
            controller: _ageController,
            decoration: const InputDecoration(
              hintText: 'Age...',
            ),
          ),
          const SizedBox(height: 50),
          BlocBuilder<HomePageBloc, HomeState>(
            buildWhen: (previous, current) => current is FirstNameState,
            builder: (context, state) {
              var firstName = '';
              if (state is FirstNameState) {
                firstName = state.firstName;
              }

              return Text('First name: $firstName');
            },
          ),
          BlocBuilder<HomePageBloc, HomeState>(
            buildWhen: (previous, current) => current is LastNameState,
            builder: (context, state) {
              var lastName = '';
              if (state is LastNameState) {
                lastName = state.lastName;
              }

              return Text('Last name: $lastName');
            },
          ),
          BlocBuilder<HomePageBloc, HomeState>(
            buildWhen: (previous, current) => current is AgeState,
            builder: (context, state) {
              var age = -1;
              if (state is AgeState) {
                age = state.age;
              }

              return Text('age: $age');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<HomePageBloc>()
              .add(FirstNameChanged(_firstnameController.text));
          context
              .read<HomePageBloc>()
              .add(LastNameChanged(_lastnameController.text));
          context
              .read<HomePageBloc>()
              .add(AgeChanged(int.parse(_ageController.text)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
