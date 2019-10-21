import 'package:flutter/material.dart';
import 'package:lab_02/routes/AddPetPage.dart';//importamos Añadir amigo

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
     * llamamos una función que retornará el widget
     * que contiene las tabs de navegación entre un
     * contenido y otro
    */
    return tabs(context);
  }

  Widget tabs (BuildContext context) {
    return DefaultTabController(//este Widget es el que crea las tabs
        length: 2,//pasamos el numero de tabs a mostrar
        child: Scaffold(//retornamos un scaffold
          appBar: AppBar(//colocamos el appbar aquí adentro
            bottom: TabBar(//colocamos el tabbar
              tabs: [//array de tabs
                Tab(text: 'Favoritos'),//texto de la pestaña
                Tab(text: 'Todos'),//texto de la pestaña
              ],
            ),
            title: Text('Más Petamigos'),//titulo de la appbar
          ),
          body: TabBarView(//body del tabbar controller
            children: [//array (debe ser el mismo que se declara en length)
              favs(),//función favoritos
              server(),//función server
            ],
          ),
          //declaramos un floating button
          floatingActionButton: FloatingActionButton(
            onPressed: () {//evento press
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => AddPetPage(),//navegamos a añadir amigo
                ),
              );
            },
            child: Icon(Icons.add),//ícono del botón
            backgroundColor: Colors.blue,//color del botón
          ),
      ),
    );
  }

  Widget favs () {
    //retornamos solo un texto
    return Text('aquí van mis favoritos');
  }

  Widget server () {
    //retornamos solo un texto
    return Text('aquí van los datos del web server');
  }
}