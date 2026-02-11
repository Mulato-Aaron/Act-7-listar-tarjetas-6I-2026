import 'package:flutter/material.dart';

void main() => runApp(const AppSteam());

class AppSteam extends StatelessWidget {
  const AppSteam({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosDesarrolladores(),
    );
  }
} // fin clase AppSteam

class LosDesarrolladores extends StatelessWidget {
  const LosDesarrolladores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo oscuro para que combine con las tarjetas gris oscuro
      backgroundColor: const Color(0xFF0b0e14), 
      appBar: AppBar(
        title: const Text(
          'Steam',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.gamepad, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1b2838),
                Color(0xFF2a475e),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              _crearTarjeta(
                'Aaron Mulato',
                'Principal Developer',
                'https://raw.githubusercontent.com/Mulato-Aaron/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/descarga%20(1).png',
              ),
              _crearTarjeta(
                'Gabe Newell',
                'Engine Architect',
                'https://raw.githubusercontent.com/Mulato-Aaron/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/descarga.png',
              ),
              _crearTarjeta(
                'Hideo Kojima',
                'Lead Designer',
                'https://raw.githubusercontent.com/Mulato-Aaron/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/descarga%20(2).png',
              ),
              _crearTarjeta(
                'Sid Meier',
                'Strategy Specialist',
                'https://api.dicebear.com/7.x/avataaars/png?seed=Sid',
              ),
            ],
          ),
        ),
      ),
    );
  } // Fin del build

  // Widget auxiliar para las tarjetas de desarrolladores (dentro de la clase)
  Widget _crearTarjeta(String nombre, String cargo, String urlFoto) {
    return Card(
      color: const Color(0xFF1b2838), // Gris oscuro
      elevation: 10.0,                // Sombreador
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(urlFoto),
        ),
        title: Text(
          nombre,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          cargo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.thumb_up,
          color: Colors.green, // Icono Like Verde
          size: 28,
        ),
      ),
    );
  }
} // fin de la clase LosDesarrolladores