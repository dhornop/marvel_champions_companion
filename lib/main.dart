import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:marvel_champions/config/router/app_router.dart";
import "package:marvel_champions/config/theme/app_theme.dart";
import "package:marvel_champions/presentation/providers/theme_provider.dart";

void main() {
  //? Llamada original
  //runApp(const MyApp());

  //? Llamada con el gestor de estados Riverpod
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  //! Propiedades

  //! Constructor
  const MainApp({super.key});

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    //? Rutas de navegación con "go_router"
    return MaterialApp.router(
      title: "Marvel Champions Companion",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
