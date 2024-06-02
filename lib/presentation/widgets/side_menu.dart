import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:marvel_champions/config/menu/menu_item.dart";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase principal
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class SideMenu extends StatefulWidget {
  //! Propiedades
  final GlobalKey<ScaffoldState> scaffoldKey;
  final int idxElementoSeleccionado;

  //! Constructor
  const SideMenu({super.key, required this.scaffoldKey, required this.idxElementoSeleccionado});

  //! Función de construcción (build) del widget
  @override
  State<SideMenu> createState() => _SideMenuState();
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase secundaria interna
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _SideMenuState extends State<SideMenu> {
  //! Propiedades

  //! Constructor
  _SideMenuState();

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    //Determina la distancia que tenemos en el top (añadiendo el notch) (top = 0 + height del notch)
    //Con esta variable sabremos si el móvil tiene notch o no
    final bool hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    final Color colorPrimario = Theme.of(context).colorScheme.primary;
    final TextStyle estiloSubtitulo = TextStyle(color: colorPrimario, fontSize: 16);

    return NavigationDrawer(
      selectedIndex: widget.idxElementoSeleccionado,
      onDestinationSelected: (value) {
        // Actualizamos el botón del menú seleccionado
        //setState(() {
        //  widget.idxElementoSeleccionado = value;
        //});

        // Si pulsamos en la página actual, no hacemos nada
        if (widget.idxElementoSeleccionado == value) return;

        // Navegamos a la página seleccionada
        final menuItem = appMenuItems[value];
        context.pushReplacement(menuItem.link);

        // Del Scaffold actual, cerramos el menú para que, al volver, no se siga mostrando abierto
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        //* Home
        ...appMenuItems.sublist(0, 1).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        //* Separación
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        //* Marvel Champions
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: Text("Marvel Champions", style: estiloSubtitulo),
        ),
        ...appMenuItems.sublist(1, 3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        //* Separación
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        //*  Marvel CDB
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text("MarvelCDB", style: estiloSubtitulo),
        ),
        ...appMenuItems.sublist(3, 5).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        //* Separación
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        //* Otros
        ...appMenuItems.sublist(5, 6).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
