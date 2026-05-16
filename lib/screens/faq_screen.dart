import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preguntas Frecuentes'), foregroundColor: Colors.white, backgroundColor: const Color(0xff1e3c72)),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildFaqTile('¿Cómo se registran los alumnos sin base de datos?', 'Por el momento los datos se manejan de manera local en los componentes visuales del framework utilizando estados simulados en memoria.'),
          _buildFaqTile('¿Cómo regreso al Login de forma segura?', 'Usamos el método Navigator.pushReplacementNamed para limpiar el historial de navegación y que nadie pueda retroceder sin loguearse.'),
          _buildFaqTile('¿Qué versión de diseño se está usando?', 'Se está implementando Material Design 3 con componentes adaptativos y layouts fluidos.'),
        ],
      ),
    );
  }

  Widget _buildFaqTile(String pregunta, String respuesta) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        iconColor: const Color(0xfff5af19),
        title: Text(pregunta, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(respuesta, style: const TextStyle(color: Colors.black54, height: 1.4)),
          )
        ],
      ),
    );
  }
}