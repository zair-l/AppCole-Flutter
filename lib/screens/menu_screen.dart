import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel de Control', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: const Color(0xff1e3c72),
        automaticallyImplyLeading: false, // Oculta la flecha de regreso al login
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuCard(context, 'Perfil', Icons.account_circle_rounded, const Color(0xff4a00e0), '/perfil'),
                  _buildMenuCard(context, 'Registrar Alumno', Icons.person_add_alt_1_rounded, const Color(0xff00b4db), '/registrar'),
                  _buildMenuCard(context, 'Listar Alumnos', Icons.format_list_bulleted_rounded, const Color(0xfff12711), '/listar'),
                  _buildMenuCard(context, 'Preguntas Frecuentes', Icons.help_outline_rounded, const Color(0xfff5af19), '/faq'),
                ],
              ),
            ),
            // Botón elegante de Cerrar Sesión
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: const Icon(Icons.logout_rounded, color: Colors.redAccent),
                title: const Text('Cerrar Sesión', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.pushReplacementNamed(context, '/'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget personalizado para construir las tarjetas del menú de forma limpia
  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color, String route) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [color.withOpacity(0.8), color], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.white),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}