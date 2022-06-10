import 'package:flutter/material.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';

///
/// TODO :- this is common widget for "EditProfileStepper" Screen
///

class TextFieldWidget extends StatelessWidget {

  String tx;
  String value;
  String valTxt;
  String controllerTxt;
  TextEditingController controller;

  TextFieldWidget({Key? key,required this.tx,required this.value,required this.controller,required this.valTxt,required this.controllerTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    controller.text = controllerTxt;

    return TextFormField(
      controller: controller,
      validator: (val){
        if(controller.text.isEmpty){
          return "Please Enter $valTxt";
        }
        return null;
      },
      onSaved: (val){
        value = val!;
      },
      decoration: InputDecoration(
        labelText: (tx == phone) ? "Enter Your $tx Number": (tx == mF) ? tx: "Enter Your $tx",hintStyle: greyText20,
      ),
    );
  }
}
