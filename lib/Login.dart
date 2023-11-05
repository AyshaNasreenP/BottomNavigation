import 'package:flutter/material.dart';
import 'package:ladyla/valid.dart';


class Login extends StatelessWidget {  //First letter Uppercase
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/ladyla.png"),
        ),
        title: const Center(child: Text ("Ladyla"))
      ),
        body:
        Container(
          height: double.infinity,
          width: double.infinity,

          decoration: const BoxDecoration(

            image:DecorationImage(

                fit: BoxFit.fill,

                image: AssetImage("assets/bg.jpeg",))
          ),
          //  alignment:  AlignmentDirectional(24,34),
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                   //alignment: Alignment.center,
                      //margin: const EdgeInsets.all(80.0),
                    height: 400,
                    //width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12
                      )
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Asd()),
                              );
                            },
                            child: const CircleAvatar(
                              backgroundImage: AssetImage("assets/person.png"),radius: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(

                              decoration:
                              InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Username",
                               // hintText: "Enter Username",
                                border:OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration:  InputDecoration(
                                prefixIcon: Icon(Icons.key),
                                  labelText:"Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                                onPressed: (){},
                                child: Text(
                                    "Forgot password",
                                    style: TextStyle(color: Colors.cyan),
                                    )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Asd()),
                                );
                              },
                              child: const Text("Login",),

                            ),
                          ),

                        ],
                      ),
                    )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    //alignment: Alignment.center,
                    //margin: const EdgeInsets.all(80.0),
                      height: 500,
                      //width: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black12
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Asd()),
                                );
                              },
                              child: const CircleAvatar(
                                backgroundImage: AssetImage("assets/person.png"),radius: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(

                                decoration:
                                InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: "Username",
                                  // hintText: "Enter Username",
                                  border:OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration:  InputDecoration(
                                    prefixIcon: Icon(Icons.key),
                                    labelText:"Password",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    "Forgot password",
                                    style: TextStyle(color: Colors.cyan),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Asd()),
                                  );
                                },
                                child: const Text("Login",),

                              ),
                            ),

                          ],
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
          ),

    );
  }
}
