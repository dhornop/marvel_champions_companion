import "package:flutter/material.dart";
import "package:marvel_champions/presentation/widgets/formularios/caja_texto.dart";
import "package:marvel_champions/presentation/widgets/formularios/titulo_seccion.dart";
import "package:marvel_champions/presentation/widgets/side_menu.dart";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase principal
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class CreacionMazosScreen extends StatelessWidget {
  //! Propiedades
  static const String name = "creacion_mazos_screen"; //Nombre que se utiliza para la ruta (estático para no necesitar crear instancias de la clase)

  //! Constructor
  const CreacionMazosScreen({super.key});

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Creación de mazos", style: TextStyle(color: Colors.white)),
      ),
      body: const _CreacionMazosView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
        idxElementoSeleccionado: 5,
      ),
    );
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase secundaria interna
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _CreacionMazosView extends StatefulWidget {
  const _CreacionMazosView();

  @override
  State<_CreacionMazosView> createState() => _CreacionMazosViewState();
}

class _CreacionMazosViewState extends State<_CreacionMazosView> {
  //! Propiedades
  final TextEditingController txtIP = TextEditingController();
  final TextEditingController txtPuerto = TextEditingController();
  final TextEditingController txtUsuario = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final ExpansionTileController lstSuperheroes = ExpansionTileController();
  String heroeSeleccionado = "Spiderman";

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Llega hasta donde pueda del padre
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            const TituloSeccion(titulo: "Selecciona un héroe"),
            ExpansionTile(
              controller: lstSuperheroes,
              title: const Text("Héroe seleccionado:"),
              subtitle: Text(heroeSeleccionado),
              children: [
                RadioListTile(
                  title: const Text("Iron Man"),
                  value: "IMAN",
                  groupValue: heroeSeleccionado,
                  onChanged: ((value) {
                    setState(() {
                      heroeSeleccionado = "IMAN";
                      lstSuperheroes.collapse();
                    });
                  }),
                ),
                RadioListTile(
                  title: const Text("Spiderman"),
                  value: "Spiderman",
                  groupValue: heroeSeleccionado,
                  onChanged: ((value) {
                    setState(() {
                      heroeSeleccionado = "Spiderman";
                      lstSuperheroes.collapse();
                    });
                  }),
                ),
                RadioListTile(
                  title: const Text("By Plane"),
                  value: "plane",
                  groupValue: heroeSeleccionado,
                  onChanged: ((value) {
                    setState(() {
                      heroeSeleccionado = "plane";
                      lstSuperheroes.collapse();
                    });
                  }),
                ),
                RadioListTile(
                  title: const Text("By Submarine"),
                  value: "submarine",
                  groupValue: heroeSeleccionado,
                  onChanged: ((value) {
                    setState(() {
                      heroeSeleccionado = "submarine";
                      lstSuperheroes.collapse();
                    });
                  }),
                ),
              ],
            ),
            CajaTexto(
              controlador: txtPuerto,
              titulo: "Puerto",
              textoOculto: false,
              tipoTeclado: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: FilledButton.icon(
                style: const ButtonStyle(visualDensity: VisualDensity.standard),
                icon: const Icon(Icons.cable_outlined),
                label: const Text("Comprobar acceso al servicio API REST"),
                onPressed: () async {
                  // String ip = txtIP.text;
                  // String puerto = txtPuerto.text;
                  // ApiAtenea api = ApiAtenea();

                  // bool acceso = await api.comprobarAcceso(ip, puerto);
                  // if (acceso) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Acceso correcto al servicio API REST"),
                  //       backgroundColor: Colors.green,
                  //     ),
                  //   );
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     const SnackBar(
                  //       content: Text("Acceso incorrecto al servicio API REST"),
                  //       backgroundColor: Colors.orange,
                  //     ),
                  //   );
                  // }
                },
              ),
            ),
            const TituloSeccion(titulo: "Introduzca su usuario y contraseña"),
            CajaTexto(
              controlador: txtUsuario,
              titulo: "Usuario",
              textoOculto: false,
            ),
            CajaTexto(
              controlador: txtPassword,
              titulo: "Password",
              textoOculto: true,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: FilledButton.icon(
                style: const ButtonStyle(visualDensity: VisualDensity.standard),
                icon: const Icon(Icons.login_rounded),
                label: const Text("Acceder"),
                onPressed: () {
                  // Navegamos a la nueva página con posibilidad de volver atrás
                  //context.pushNamed(HomeScreen.name);
                  // Navegamos a la nueva página sin posibilidad de volver atrás
                  //context.replaceNamed(HomeScreen.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
