import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class Boton extends StatelessWidget {
  final String texto;
  final Icon icono;

  const Boton({
    super.key,
    required this.texto,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: FilledButton.icon(
        onPressed: () {
          context.pop();
        },
        icon: icono,
        label: Text(texto),
      ),
    );
  }
}
