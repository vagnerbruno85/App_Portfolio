

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String nome = '';
  String data1= '';
  TextEditingController txtnome = TextEditingController();

  
  void entrar(){
    nome= txtnome.text;
  }

  Widget _body() => SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/vagner.jpeg')),
                  SizedBox(height: 15.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text('Seja Bem vindo, meu nome é Vagner e este é o meu Portifólio, nele está o inicio de uma jornada rumo ao desenvolvimento pessoal e profissional. Para acessa-lo é só digitar seu nome abaixo e pressionar o botão <Entrar>.'
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: true,
                            validator: (text) {
                              if (text!.isEmpty) {
                                return 'Informe o valor';
                              }
                            },   
                            controller: txtnome,
                            onChanged: (String text) {
                              nome = text;
                            },
                            decoration: InputDecoration(
                              labelText: "Nome",
                              border: OutlineInputBorder()),
                          ),
                
                            
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (!(nome == '')) {
                          print(nome);
                          // Navigator.of(context).pushNamed('/home');
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(nome)));
                         setState(() async {
                          nome;
                        });
                        }
            
                      },
                      child: Container(
                        width: double.infinity,
                        child:Text('Entrar',
                        textAlign: TextAlign.center,
                        )),
                    ),
                  )
                  
                ],
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // SizedBox(
        //     height: MediaQuery.of(context).size.height,
            // child: Image.asset('assets/imagens/earth.jpg', fit: BoxFit.cover)),
        Container(color: Colors.grey.withOpacity(0.3)),
        _body(),
      ],
    ));
  }
}
