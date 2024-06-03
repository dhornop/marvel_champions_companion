import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:marvel_champions/config/menu/menu_item.dart";
import "package:marvel_champions/presentation/widgets/side_menu.dart";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase principal
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class HomeScreen extends StatelessWidget {
  //! Propiedades
  static const String name = "home_screen"; //Nombre que se utiliza para la ruta (estático para no necesitar crear instancias de la clase)

  //! Constructor
  const HomeScreen({super.key});

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Marvel Champions Companion", style: TextStyle(color: Colors.white)),
      ),
      body: const _HomeView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
        idxElementoSeleccionado: 0,
      ),
    );
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Clase secundaria interna
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _HomeView extends StatelessWidget {
  //! Propiedades

  //! Constructor
  const _HomeView();

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//! Otras clases
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

class _CustomListTile extends StatelessWidget {
  //! Propiedades
  final MenuItem menuItem;

  //! Constructor
  const _CustomListTile({
    required this.menuItem,
  });

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        //? Sistema de navegación 1 (Using the Navigator - Nativa de Flutter)
        //Push: Va poniendo las tarjetas/formularios una encima de otra
        //Navigator.of(context).push(
        //  MaterialPageRoute(
        //    builder: (context) => const ButtonsScreen(),
        //  ),
        //);

        //? Sistema de navegación 2 (Using named routes - Nativa de Flutter): Haciendo uso de las rutas (routes) configuradas en el main.dart
        //Navigator.pushNamed(context, menuItem.link);

        //? Sistema de navegación 3 (Using go_router (por ruta) - Del paquete Go_Router)
        //context.push(menuItem.link);
        context.pushReplacement(menuItem.link);

        //? Sistema de navegación 4 (Using go_router (por nombre) - Del paquete Go_Router)
        //context.pushNamed(CardsScreen.name);
      },
    );
  }
}
