import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:form_validator/form_validator.dart';


class Automaticvalidation extends StatelessWidget{
  const Automaticvalidation({Key? Key}) : super(key:Key);
  @override
  Widget build(BuildContext context) {
final formKey=GlobalKey<FormState>();
return Scaffold(
  body: Form(
    key: formKey,
    child: Center(
      child: SizedBox(
        width:300,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration( hintText: "Username"),
              validator:MultiValidator([
                RequiredValidator(errorText: 'Required'),
                EmailValidator(errorText: "Must Enter Email"),

             ] ) ,

            ),
            TextFormField(
              decoration: const InputDecoration( hintText: "Password"),
              validator:MultiValidator([
                MinLengthValidator(6, errorText: "Enter six Digits"),

              ] ) ,

            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){}
            }, child: const Text("Login"),)
          ],
        ),
      ),
    ),
  ),
);


  }


}