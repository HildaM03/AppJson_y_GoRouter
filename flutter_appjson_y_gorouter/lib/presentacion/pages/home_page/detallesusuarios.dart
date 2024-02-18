import 'package:flutter/material.dart';
import 'package:flutter_appjson_y_gorouter/domain/usuarios.dart';

class detallesusuarios extends StatelessWidget {
  final Usuarios usuario;

  const detallesusuarios({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Usuario'),
      ),
      backgroundColor: Colors.orange, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              usuario.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black), 
            ),
            SizedBox(height: 16),
            Text(
              'Email: ${usuario.email}',
              style: TextStyle(fontSize: 18, color: Colors.black87), 
            ),
            SizedBox(height: 8),
            Text(
              'Teléfono: ${usuario.phone}',
              style: TextStyle(fontSize: 18, color: Colors.black87), 
            ),
            SizedBox(height: 8),
            Text(
              'Fecha de Nacimiento: ${usuario.dob}',
              style: TextStyle(fontSize: 18, color: Colors.black87), 
            ),
            SizedBox(height: 8),
            Text(
              'Ubicación: ${usuario.location}',
              style: TextStyle(fontSize: 18, color: Colors.black87), 
            ),
            SizedBox(height: 8),
            Text(
              'Profesión: ${usuario.profession}',
              style: TextStyle(fontSize: 18, color: Colors.black87), 
            ),
            SizedBox(height: 8),
            Image.network(
              usuario.picture,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}

