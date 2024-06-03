import "package:flutter/material.dart";

class CajaTexto extends StatelessWidget {
  //!Propiedades
  final String titulo;
  final bool textoOculto;
  final TextEditingController controlador;
  final TextInputType? tipoTeclado;

  //!Constructor de la clase
  const CajaTexto({
    super.key,
    required this.titulo,
    required this.textoOculto,
    required this.controlador,
    this.tipoTeclado,
  });

  //! Función de construcción (build) del widget
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextField(
        // Asigna el controlador al TextField
        controller: controlador,
        // Oculta o no el texto
        obscureText: textoOculto,
        textAlign: TextAlign.left,
        // Si tipoTeclado es null, entonces se usará TextInputType.text
        keyboardType: tipoTeclado ?? TextInputType.text,
        decoration: InputDecoration(
          label: Text(titulo),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          //hintText: "Introduzca el usuario",
          //hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }

  // Método para obtener el valor del TextField
  String obtenerValor() {
    return controlador.text;
  }
}
