import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/perfil_screen.dart';
import 'screens/registrar_screen.dart';
import 'screens/listar_screen.dart';
import 'screens/faq_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Gestión Escolar',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff1e3c72),
          primary: const Color(0xff1e3c72),
          secondary: const Color(0xff2a5298),
        ),
        scaffoldBackgroundColor: const Color(0xfff5f7fa),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/menu': (context) => const MenuScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/registrar': (context) => const RegistrarScreen(),
        '/listar': (context) => const ListarScreen(),
        '/faq': (context) => const FaqScreen(),
      },
    );
  }
}