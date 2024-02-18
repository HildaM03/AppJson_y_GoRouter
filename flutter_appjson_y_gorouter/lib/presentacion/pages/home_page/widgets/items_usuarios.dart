

import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:flutter_appjson_y_gorouter/domain/usuarios.dart';
import 'package:flutter_appjson_y_gorouter/presentacion/pages/home_page/detallesusuarios.dart';


List<Widget> listItems(List<Usuarios>? data, BuildContext context) {
  List<Widget> listItems = [];

  data?.forEach((element) { 
    listItems.add(
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(element.picture),
        ),
        title: Text(element.name),
        subtitle: Text(element.location),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detallesusuarios(usuario: element),
            ),
          );
        },
      )
    );
  });
  return listItems;
}
