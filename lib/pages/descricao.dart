import 'package:flutter/material.dart';


class Descricao extends StatefulWidget {
  const Descricao({ Key? key }) : super(key: key);

  @override
  _DescricaoState createState() => _DescricaoState();
}

class _DescricaoState extends State<Descricao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descrição dos Projetos'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0),
            Container(
              padding:
                EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CSS\n',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' - Soul Mais Rio - Projeto em grupo, onde foi realizado a construção de um site de turismo. \n - SoulCode Play -Site de filmes criado para exemplificar o uso de tabelas. \n - UNK Jóias - site de exposição de jóias e acessórios.',style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        ),
                      ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 40.0),        
            Container(
              padding:
                EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bootstrap\n',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' - GoldBelle - Trabalho em grupo, site responsivo para uso comercial de joias e acessórios. \n - Jornal - Site criado para exemplificar a função grid layout de forma responsiva.', 
                        style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              padding:
                EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'React Native \n',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' - CALC TECH - Aplicativo para fazer calculos.\n - SOUL-MILI - Aplicativo para desenvolver as funções.\n - APP MOTOTAXISTA - App em conjunto com dois projetos paralelos, utilizando firebase como banco de dados  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ]
                ),
              ),  
            ),
            SizedBox(height: 40.0),
            Container(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HTML \n',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' - AQUARELA - Página HTML feita para usar as tags.\n - PONTOS TURISTICOS - Página criada para uso de tags e imagens.\n - CERVEJA - site criado para uso de links e navegação. ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ]
                ),
              ),            
            ),
            Container(
              padding:
                EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
            ),     
          ]
        ) ,
      ),
    );
  }
}