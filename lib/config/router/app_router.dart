import "package:go_router/go_router.dart";
import "package:marvel_champions/presentation/screens/configuracion_screen.dart";
import "package:marvel_champions/presentation/screens/home_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_cdb/creacion_mazos_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_cdb/listado_mazos_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_champions/contadores_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_champions/estadisticas_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_champions/generacion_partida_aleatoria_screen.dart";
import "package:marvel_champions/presentation/screens/marvel_champions/registro_partidas_screen.dart";

final appRouter = GoRouter(
  //Pantalla inicial
  initialLocation: "/",
  routes: [
    //* Principales
    GoRoute(
      path: "/",
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/configuracion",
      name: ConfiguracionScreen.name,
      builder: (context, state) => const ConfiguracionScreen(),
    ),
    //* Marvel Champions
    GoRoute(
      path: "/registroPartidas",
      name: RegistroPartidasScreen.name,
      builder: (context, state) => const RegistroPartidasScreen(),
    ),
    GoRoute(
      path: "/estadisticas",
      name: EstadisticasScreen.name,
      builder: (context, state) => const EstadisticasScreen(),
    ),
    GoRoute(
      path: "/contadores",
      name: ContadoresScreen.name,
      builder: (context, state) => const ContadoresScreen(),
    ),
    GoRoute(
      path: "/generadorPartidaAleatoria",
      name: GeneracionPartidaAleatoriaScreen.name,
      builder: (context, state) => const GeneracionPartidaAleatoriaScreen(),
    ),

    //* Marvel CDB
    GoRoute(
      path: "/creacionMazos",
      name: CreacionMazosScreen.name,
      builder: (context, state) => const CreacionMazosScreen(),
    ),
    GoRoute(
      path: "/listadoMazos",
      name: ListadoMazosScreen.name,
      builder: (context, state) => const ListadoMazosScreen(),
    ),
  ],
);
