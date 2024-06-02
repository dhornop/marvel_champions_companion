import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});
}

const appMenuItems = <MenuItem>[
  // Home
  MenuItem(title: "Inicio", subTitle: "Ve a la página de inicio", link: "/", icon: Icons.home_rounded),
  // Marvel Champions
  MenuItem(title: "Registro de partidas", subTitle: "Registra tu partida", link: "/registroPartidas", icon: Icons.add_rounded),
  MenuItem(title: "Estadísticas", subTitle: "Visualiza las estadísticas generadas a partir de tus partidas registradas", link: "/estadisticas", icon: Icons.query_stats_rounded),
  MenuItem(title: "Contadores", subTitle: "Contadores para tus partidas", link: "/contadores", icon: Icons.confirmation_number_outlined),
  MenuItem(title: "Generador de partidas aleatorias", subTitle: "¿Quieres un enfrentamiento aleatorio?", link: "/generadorPartidaAleatoria", icon: Icons.refresh_rounded),
  // Marvel CDB
  MenuItem(title: "Creación de mazos", subTitle: "Crea un mazo para tu héroe", link: "/creacionMazos", icon: Icons.add_rounded),
  MenuItem(title: "Listado de mazos ", subTitle: "Visualiza tu listado de mazos", link: "/listadoMazos", icon: Icons.list_rounded),
  // Otros
  MenuItem(title: "Configuración", subTitle: "Configura la App", link: "/configuracion", icon: Icons.settings_rounded),
];
