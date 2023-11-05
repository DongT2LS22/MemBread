import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/text_fields/custom_textfield.dart';

class AddTextField extends StatefulWidget {
  AddTextField({super.key});

  @override
  State<AddTextField> createState() => _AddTextFieldState();
}

class _AddTextFieldState extends State<AddTextField> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: _titleController, name: "Title"),
        const SizedBox(height: 10,),
        CustomTextField(controller: _descriptionController, name: "Description")
      ],
    );
  }
}
