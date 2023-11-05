import 'package:flutter/material.dart';
import 'package:ladyla/loginstat.dart';

class Asd extends StatefulWidget {
  const Asd({super.key});

  @override
  State<Asd> createState() => _AsdState();
}

class _AsdState extends State<Asd> {

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      ),

                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty || value.length<3 ||!RegExp(r'^[a-zA-Z ]+$').hasMatch(value!) ) {
                        return ' Enter valid name';
                      }
                    }

                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  //obscureText: true,
                  validator: (value){
                    if(value  == null || value.isEmpty || value.length<8 ||!RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!)){
                      return "Enter correct password";
                    }
                  }

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  validator: (value){
                    if(value==null || value.isEmpty ||  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)){
                      return "Enter the correct email";
                    }
                  }
                ),
              ),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                  }
              }, child: Text("ok"))
            ],
          )),
    );
  }
}



