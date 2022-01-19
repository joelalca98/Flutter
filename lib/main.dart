import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registro/screens/splash_screen.dart';
import 'blocs/registro_bloc.dart';
import 'screens/registro.dart';
import 'screens/LoginPage.dart';
import 'screens/home_page.dart';
import 'screens/welcome_screen.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;



void main() {

  runApp(const MyApp());
  
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => RegistroBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const SplashScreen(),
        routes: routes,
      ),
    );
  }
}

var routes = <String,WidgetBuilder>{


  "/welcome":(BuildContext context) => const WelcomeScreen(),
  "/login":(BuildContext context) => LoginPage(), //Poner el nombre de la clase de login de su propia pantalla
  "/register":(BuildContext context) => Registro(),
  "/home":(BuildContext context) => HomeScreen() //Poner el nombre de la clase de register de su propia pantalla

};

