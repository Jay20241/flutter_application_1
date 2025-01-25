import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstName = '';
  String LastName = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  //-------------------------------FUNCTIONS---------------------------------------//

  trySubmit(){
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      _formKey.currentState!.save();
      submitForm();
    } else{
      print('Error');
    }
  }

  submitForm(){
    //Store on Database 
    print('Welcome'+ firstName + ' ' + LastName);
    
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Login/Singup')),
      body:  Center(
        child: Container(
          margin: EdgeInsets.all(70),
          padding: EdgeInsets.only(top: 180),
          child: Form(
            
            key: _formKey,
            
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name'
                  ),
                  key: ValueKey('firstName'),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return 'First name should not be empty';
                    }else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    firstName = value.toString();
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last Name'
                  ),
                  key: ValueKey('LastName'),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return 'Last name should not be empty';
                    }else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    LastName = value.toString();
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'E-Mail'
                  ),
                  key: ValueKey('email'),
                  validator: (value) {
                    if(value.toString().isEmpty){
                      return 'Email should not be empty'; //You can also put condition that it should contain @gmail.com or @any.com
                    }else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    email = value.toString();
                  },
                ),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'PassWord'
                  ),
                  key: ValueKey('password'),
                  validator: (value) {
                    if(value.toString().length<=5){
                      return 'Password should not be longer';
                    }else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    password = value.toString();
                  },
                ),

                TextButton(onPressed: (){
                  trySubmit();
                }, child: Text('Sign Up'))
              ],
            )),
        ),
      ),
    );
  }
}