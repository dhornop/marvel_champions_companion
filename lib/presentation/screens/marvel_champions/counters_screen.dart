import "package:flutter/material.dart";
import "package:marvel_champions/presentation/widgets/side_menu.dart";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase principal
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class CountersScreen extends StatelessWidget {
  //! Propiedades
  static const String name = "counters_screen"; //Nombre que se utiliza para la ruta (estático para no necesitar crear instancias de la clase)

  //! Constructor
  const CountersScreen({super.key});

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Generación aleatoria de partida"),
      ),
      body: const _CountersView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
        idxElementoSeleccionado: 1,
      ),
    );
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase secundaria interna
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _CountersView extends StatelessWidget {
  //! Propiedades

  //! Constructor
  const _CountersView();

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
