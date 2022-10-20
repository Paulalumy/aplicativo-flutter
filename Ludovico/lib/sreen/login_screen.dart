import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 218, 219),
          title: Center(
            child: Text('Ludovico',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        ),
       body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: SingleChildScrollView(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Ludovico6.png', height: 200,),
              Padding(padding: EdgeInsets.only(bottom: 25),
              ),
              Text('Login',
              textAlign:  TextAlign.center, 
              style: TextStyle(color: Colors.black,
               fontSize: 28,
               fontWeight: FontWeight.bold,
               ),
              ),
              Padding(padding: EdgeInsets.only(top: 15),
              ),
              Form(
                child: Column(
                  children: [
                      SizedBox(
                        width: 500.0,
                         child: TextFormField(autofocus: true,
                        decoration: InputDecoration(
                         labelText: 'E-mail',
                         labelStyle: TextStyle(
                          color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.mail_outline,
                          color: Colors.black
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom:10)
                        ),
                        SizedBox(
                          width: 500.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              labelStyle: TextStyle(color: Colors.black
                              ),
                              prefixIcon: Icon(
                                Icons.key_sharp, 
                                color: Colors.black,
                                ),
                              suffixIcon: GestureDetector(
                                child: Icon(_showPassword == false ? Icons.visibility_off:Icons.visibility, 
                                color: Colors.black),
                                onTap:() {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black
                                    ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black
                                    ),
                                ),
                            ),
                            obscureText: _showPassword == false ? true: false,
                          ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10),
                          ), 
                          SizedBox(
                            child: GestureDetector(
                              onTap:(){print("FUNCIONOU!");},
                              child: Text('Esqueceu a senha?',
                              style: TextStyle(
                                color: Colors.black, 
                                fontSize: 12
                                ),
                                ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top:30)
                          ),
                        
                  ],
                  ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 199, 193, 207),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    textStyle: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)
                  ),
                   child: Text('Entrar', style: TextStyle(color: Colors.black)),
                   ),
                   Padding(padding: EdgeInsets.only(bottom: 20),
                   ),
                   Divider(color: Colors.black,
                        indent: 660,
                        endIndent: 660,
                        thickness: 0.3,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10),
                   ),
                   GestureDetector(
                    onTap: () {print('Cadastre-se!!!');},
                    child: Text(
                      'Não possui uma conta? Cadastre-se.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                   ),
                   Padding(padding: EdgeInsets.only(bottom: 15),
                   ),
                   ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(193, 229, 231, 231),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                          ),
                          ),
                      child: Text('Cadastrar', style: TextStyle(color:Colors.black)),
                      ),
                    
            ],
           ),
        ),
       ),
    );
  }
}