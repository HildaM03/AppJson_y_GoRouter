
import 'package:flutter/material.dart';
import 'package:flutter_appjson_y_gorouter/domain/usuarios.dart';
import 'package:flutter_appjson_y_gorouter/presentacion/pages/home_page/widgets/list_usuarios.dart';
import 'package:flutter_appjson_y_gorouter/core/router/app_router.dart';
import 'package:flutter_appjson_y_gorouter/core/router/utils/usuarios_read_file.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
      ),
      backgroundColor: Colors.amber,
      body: FutureBuilder<List<Usuarios>>(
        future: usuariosreadfile().getUsuarios(),
        builder: (BuildContext context, AsyncSnapshot<List<Usuarios>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error al cargar los Usuarios: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: ListUsuarios(usuarios: snapshot.data!),
            );
          }
        },
      ),
    );
  }
}
