import 'package:flutter/cupertino.dart';

import 'screens/faq_screen.dart';
import 'screens/listar_screen.dart';
import 'screens/login_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/perfil_screen.dart';
import 'screens/registrar_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'App Gestion Escolar',
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.activeBlue,
        scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
        textTheme: CupertinoTextThemeData(
          navTitleTextStyle: TextStyle(
            color: CupertinoColors.label,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
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
