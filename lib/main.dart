import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tracking_user/screens/RegistrationScreen.dart';
import 'package:tracking_user/screens/home_screen.dart';
import 'package:tracking_user/screens/login_screen.dart';
import 'package:tracking_user/screens/splash_screen.dart';

void main() async{
  await Supabase.initialize(
      url: 'https://kyrztnijejukmchhfrbl.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5cnp0bmlqZWp1a21jaGhmcmJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ0NTk1MTUsImV4cCI6MjAxMDAzNTUxNX0.fFG91pxjMU2hWiV-RXX8l8CBOr16YVAhMxtxm10uoW4',
      authFlowType: AuthFlowType.pkce,
  );
  runApp(MyApp());
}
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen', // Initial route
      routes: {
        '/splash_screen': (context) => SplashScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/registration_screen':(context) => RegistrationScreen(),
        '/home_screen': (context) => HomeScreen(),
      },
    );
  }
}