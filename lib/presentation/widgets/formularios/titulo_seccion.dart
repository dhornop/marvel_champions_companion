import "package:flutter/material.dart";

class TituloSeccion extends StatelessWidget {
  final String titulo;

  const TituloSeccion({
    super.key,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
      child: Text(
        titulo,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).primaryColor,
            ),
      ),
    );
  }
}
