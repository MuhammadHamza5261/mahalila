import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahalila/bloc/login_bloc.dart';
import 'package:mahalila/screens/splash_screen.dart';

void main() {
  runApp(
    
    MultiBlocProvider(
        providers: [
           BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
        ],
        child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
