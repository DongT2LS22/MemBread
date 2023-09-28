import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
              print(value);
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 40,
          child: TextFormField(
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        )
      ],
    ));
  }
}
