import 'package:flutter/material.dart';

class ListarScreen extends StatelessWidget {
  const ListarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Estructura mock basada en la pizarra de clase
    final List<Map<String, String>> alumnos = [
      {'nombre': 'Hugo', 'edad': '38', 'ciudad': 'Nasca'},
      {'nombre': 'Juan', 'edad': '22', 'ciudad': 'Lima'},
      {'nombre': 'Maria', 'edad': '19', 'ciudad': 'Cusco'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Alumnos'), foregroundColor: Colors.white, backgroundColor: const Color(0xff1e3c72)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: alumnos.length,
        itemBuilder: (context, index) {
          final alumno = alumnos[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xfff12711).withOpacity(0.2),
                child: const Icon(Icons.person, color: Color(0xfff12711)),
              ),
              title: Text(
                alumno['nombre']!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text('Edad: ${alumno['edad']} años  •  Origen: ${alumno['ciudad']}'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}