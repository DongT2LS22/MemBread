import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:gr1_flutter/widget/atoms/text_fields/custom_textfield.dart';

import '../../../models/course/course.dart';
import '../../../repositories/course_repository.dart';
import '../../atoms/buttons/primary_button.dart';


class AddTextField extends ConsumerWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final courseRef = ref.watch(courseRepository);
    return Column(
      children: [
        CustomTextField(controller: _titleController, name: "Title"),
        const SizedBox(height: 10,),
        CustomTextField(controller: _descriptionController, name: "Description"),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.bottomRight,
          child: PrimaryButton(
            child: Text("Next",
              style: Theme.of(context).textTheme.labelMedium,),
            onPressed: (){
              courseRef.createOne(Course(title: _titleController.text,description: _descriptionController.text,id: 0)).then((value){
                Navigator.pop(context);
              });

            },
          ),
        )
      ],
    );
  }
}


