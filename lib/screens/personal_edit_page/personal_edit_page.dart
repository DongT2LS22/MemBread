import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/text_fields/email_textfield.dart';
import 'package:gr1_flutter/widget/atoms/text_fields/name_textfield.dart';
import 'package:gr1_flutter/widget/atoms/text_fields/phone_textfield.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';

class PersonalEditPage extends StatelessWidget {
  const PersonalEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed: ()=>Navigator.pop(context),),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/elon-musk.png'),
                          fit: BoxFit.cover,
                        ),
                        border: const Border(
                          bottom: BorderSide(color: Colors.grey),
                          top: BorderSide(color: Colors.grey),
                          left: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border:
                          Border.all(color: Colors.black, width: 1)),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            size: 17,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(height: 1,child: Container(color: Theme.of(context).colorScheme.secondary,),),
            const SizedBox(height: 30,),
            EmailTextField(),
            const SizedBox(height: 20,),
            NameTextField(),
            const SizedBox(height: 20,),
            PhoneTextField()
          ],
        ),
      ),
    );
  }
}
