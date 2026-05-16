import 'package:flutter/material.dart';

class RegistrarScreen extends StatelessWidget {
  const RegistrarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar Alumno'), foregroundColor: Colors.white, backgroundColor: const Color(0xff1e3c72)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Datos del Estudiante', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff1e3c72))),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre del Alumno',
                    prefixIcon: const Icon(Icons.badge_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Edad',
                    prefixIcon: const Icon(Icons.calendar_today_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Ciudad de Origen',
                    prefixIcon: const Icon(Icons.map_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00b4db),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: const Icon(Icons.save_rounded),
                    label: const Text('GRABAR DATOS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    onPressed: () {
                      // Muestra confirmación en la parte inferior de la pantalla
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('¡Datos Grabados Exitosamente!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}