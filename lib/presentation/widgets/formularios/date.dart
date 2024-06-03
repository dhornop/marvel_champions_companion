import "package:flutter/material.dart";

TextEditingController datePickerController = TextEditingController();

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextField(
        controller: datePickerController,
        readOnly: true,
        //Oculta o no el texto
        obscureText: false,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        onTap: () => onTapFunction(context: context),
        decoration: InputDecoration(
          hintText: "Seleccione el día que desea ver",
          hintStyle: const TextStyle(fontSize: 16),
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
}

onTapFunction({required BuildContext context}) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2024, 1),
    lastDate: DateTime.now(),
  );
  if (pickedDate == null) return;
  datePickerController.text = pickedDate.toString();
}
