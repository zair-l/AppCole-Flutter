import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Perfil'), foregroundColor: Colors.white, backgroundColor: const Color(0xff1e3c72)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: const BoxDecoration(
                color: Color(0xff1e3c72),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              ),
              child: const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.manage_accounts_rounded, size: 60, color: Color(0xff1e3c72)),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ListTile(leading: Icon(Icons.person, color: Color(0xff1e3c72)), title: Text('Nombre'), subtitle: Text('Hugo')),
                      Divider(),
                      ListTile(leading: Icon(Icons.cake, color: Color(0xff1e3c72)), title: Text('Edad'), subtitle: Text('38 años')),
                      Divider(),
                      ListTile(leading: Icon(Icons.location_on, color: Color(0xff1e3c72)), title: Text('Sede / Ubicación'), subtitle: Text('Nasca')),
                      Divider(),
                      ListTile(leading: Icon(Icons.security, color: Color(0xff1e3c72)), title: Text('Rol'), subtitle: Text('Admin')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}