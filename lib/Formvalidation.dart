import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget{
  const FormValidation({Key? Key}) : super(key:Key);
  @override
  Widget build(BuildContext context) {
   final formkey =GlobalKey<FormState>();

   return Scaffold(
     body: Form(
       key: formkey,
       child: Center(
         child: SizedBox(
           width: 300,
           child: Column(
             children: [
               TextFormField(
                 decoration: const InputDecoration(hintText: 'Username'),
                 validator: (value){
                   if(value==null||value==""){
                     return 'Enter Your Username.';
                   }
                   return null;
                 },
               ),
               TextFormField(
                 decoration: const InputDecoration(hintText: 'Password'),
                 obscureText:true,
                 validator: (value){
                   if(value==null || value==''){
                     return 'Enter Your Password.';
                   }
                   return null;

                 },

               ),
               const SizedBox(height: 20),
               ElevatedButton(onPressed: (){
                 if(formkey.currentState!.validate()){}
               }, child: const Text('Login'))
             ],
           ),
         ),
       ),
     ),

   );
  }
}