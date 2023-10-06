import 'dart:async';

import 'package:fit/screen/data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Repository/data_repo.dart';
import 'bloc/data_bloc.dart';

void main() {
  runApp(RepositoryProvider(
      create: (context)=>WebServise(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: Colors.white,
          errorColor: Colors.red,

          colorScheme: ThemeData().colorScheme.copyWith(
            primary:Colors.red,
          ),
          primaryColor: Colors.red,
        ),
        home:  BlocProvider(
            create: (context)=>ProfileBloc(WebServise()),
            child: Home()),
    );
  }
}
