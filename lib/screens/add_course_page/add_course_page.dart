import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/add_textfield/add_text_field.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/title_appbar.dart';

class AddCoursePage extends StatelessWidget {
  const AddCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: TitleAppbar(title: Text("Create new course",style: Theme.of(context).textTheme.titleMedium,),onPressed: ()=>Navigator.pop(context),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              AddTextField()
            ],
          ),
        ),
      ),
    );
  }
}
