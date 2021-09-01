import'package:flutter/material.dart';
import 'home_page.dart';


class LogPage extends StatefulWidget {
  LogPage({Key? key}) : super(key: key);

  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
String nome = '';
final _formKey = GlobalKey<FormState>();

TextEditingController txtnome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar:AppBar( 
        title:Text('APP PORTIFÓLIO'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child:Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            Text('BEM-VINDO', style: textStyles.headline4),
                            Text('Seja Bem vindo, meu nome é Vagner e este é o meu Portifólio, nele está o inicio de uma jornada rumo ao desenvolvimento pessoal e profissional. Para acessa-lo...'),
                            Text('Preencha o seu nome abaixo e pressione o botão <Entrar>', style: textStyles.subtitle1),
                          ],
                        ),
                      ),
                    ),
                
                
                SizedBox(height: 10), 
                TextFormField(
                  autofocus: true,
                  controller: txtnome,
                  validator: (String? texto){
                    if(texto!= null && texto.isNotEmpty){
                      if(texto.length < 3){
                        return 'Digite o seu nome.';
                      }
                    }else{
                      return'Campo obrigatório';
                    }
                  },
                  onChanged: (String texto) {
                    nome = texto;
                  },
                  decoration: InputDecoration(
                    labelText:'Nome',
                    border:OutlineInputBorder(),
                  )
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState?.validate() ?? false ) {
                        print('Cadastro enviado');
                         Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(nome)));
                      }   
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical:16.0),
                      child: Text('ENTRAR',),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}