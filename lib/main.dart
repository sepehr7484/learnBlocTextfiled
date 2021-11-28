import 'package:bloc1/blocs/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';

import 'package:bloc1/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => HomePageBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
