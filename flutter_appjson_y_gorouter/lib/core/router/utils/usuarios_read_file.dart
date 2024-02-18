import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_appjson_y_gorouter/domain/usuarios.dart';


class usuariosreadfile {
  Future<List<Usuarios>> getUsuarios() async {
    try {
      final jsonString = await rootBundle.loadString('database/usuarios_data.json');
      final jsonData = json.decode(jsonString);
      final List<Usuarios> usuarios = jsonData.map<Usuarios>((item) => Usuarios.fromJson(item)).toList();
      return usuarios;
    } catch (e) {
      print('Error al cargar los usuarios: $e');
      return [];
    }
  }
}
