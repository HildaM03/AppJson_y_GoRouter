import 'package:flutter/material.dart';
import 'package:flutter_appjson_y_gorouter/domain/usuarios.dart';
import 'package:flutter_appjson_y_gorouter/presentacion/pages/home_page/detallesusuarios.dart';
import'package:flutter_appjson_y_gorouter/presentacion/pages/home_page/widgets/items_usuarios.dart';

class ListUsuarios extends StatelessWidget {
  final List<Usuarios> usuarios;

  const ListUsuarios({Key? key, required this.usuarios}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listItems(usuarios, context),
    );
  }
}
