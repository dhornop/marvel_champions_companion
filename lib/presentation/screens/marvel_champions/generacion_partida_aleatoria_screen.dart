import "package:flutter/material.dart";
import "package:marvel_champions/presentation/widgets/side_menu.dart";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase principal
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class GeneracionPartidaAleatoriaScreen extends StatelessWidget {
  //! Propiedades
  static const String name = "generacion_partida_aleatoria_screen"; //Nombre que se utiliza para la ruta (estático para no necesitar crear instancias de la clase)

  //! Constructor
  const GeneracionPartidaAleatoriaScreen({super.key});

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Generador de partidas aleatorias", style: TextStyle(color: Colors.white)),
      ),
      body: const _GeneracionPartidaAleatoriaView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
        idxElementoSeleccionado: 4,
      ),
    );
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase secundaria interna
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _GeneracionPartidaAleatoriaView extends StatelessWidget {
  //! Propiedades

  //! Constructor
  const _GeneracionPartidaAleatoriaView();

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Llega hasta donde pueda del padre
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevado"),
            ),
          ],
        ),
      ),
    );
  }
}
