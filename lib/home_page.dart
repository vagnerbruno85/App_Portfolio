import 'package:app1/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
   
  String nome;
  HomePage(this.nome);
}

class HomePageState extends State<HomePage> {
  abrirWhatsApp() async {
    var whatsappUrl =
        "https://api.whatsapp.com/send/?phone=5519996332080&text=Ol%C3%A1,%20tudo%20bem";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            // **************************************DRAWER******************************************************** 
            DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.red
              ),
              child: Stack(
                children: <Widget> [
                  Align(alignment:Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/vagner.jpeg'),
                    backgroundColor:Colors.white, radius: 60.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Vagner Bruno',
                    style:TextStyle(color:Colors.white, fontSize: 20.0)
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      'mr.vagnerbruno@gmail.com', style: TextStyle(color:Colors.white, fontSize: 12.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Ionicons.list),
              title: Text('DESCRIÇÃO'),
              subtitle: Text('Trabalhos realizados'),
              onTap: () {
                Navigator.of(context).pushNamed('/descricao');
              },
            ),            
            ListTile(
              leading: Icon(Ionicons.logo_css3),
              title: Text('CSS'),
              subtitle: Text('Trabalhos em CSS'),
              onTap: () {
                Navigator.of(context).pushNamed('/css');
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Bootstrap'),
              subtitle: Text('Trabalhos em Bootstrap'),
              onTap: () {
                Navigator.of(context).pushNamed('/bootstrap');
              },
            ),
            ListTile(
              leading: Icon(Ionicons.logo_react),
              title: Text('React Native'),
              subtitle: Text('Trabalhos em React Native'),
              onTap: () {
                Navigator.of(context).pushNamed('/reactnative');
              },
            ),
            ListTile(
              leading: Icon(Ionicons.logo_html5),
              title: Text('HTML'),
              subtitle: Text('Trabalhos em HTML'),
              onTap: () {
                Navigator.of(context).pushNamed('/html');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ]
        ), 
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      //******************************************************** BODY *************************************************/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: Recorte(),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF7C0A02),
                      Color(0xFFF44336),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'APRESENTAÇÃO',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Vagner Bruno',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //*********************CONTAINERS HOME********************

            Container(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Olá ${widget.nome}, \n',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Neste App você ira conhecer um pouco mais de mim, nos cards abaixo falo sobre quem sou, os trabalhos realizados, e sobre as perspectivas que tenho para o presente e futuro, No menu superior a sua esquerda estão os links para algumas imagens dos trabalhos iniciais desta jornada. ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/home_quem_sou.png')),
            SizedBox(height: 20.0),
            Container(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quem Sou \n',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Sou pai, formado em administração e estudante de front-end mobile, sou uma pessoa que acredita no valor da educação e na transformação que ela pode fazer na sociedade. ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/home_trabalhos.png')),
            SizedBox(height: 20.0),
            Container(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Trabalhos Realizados \n',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Os projetos realizados na area de desenvolvimento, foram utilizados as seguintes tecnologias: \n -Html, CSS, Javascript, Dart, Jquery, Bootstrap, React Native e Flutter',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/home_objetivos.png')),

            SizedBox(height: 20.0),
            Container(
              padding:
                  EdgeInsets.only(top: 10.0, bottom: 15.0, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Metas para o futuro \n',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Concluir a formação em front-end mobile na SoulCode, fazer mais cursos na area de front, trabalhar na area de desenvolvimento.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[ IconButton(
                    icon: Icon(
                      Ionicons.logo_linkedin, size: 60,),
                    onPressed: () async {
                      const url = 'https://br.linkedin.com/in/vagner-bruno-batista-83238992';
                      if (await canLaunch(url)) {
                      await launch(url);
                      } else {
                      throw 'Could not launch $url';
                      }
                    }
                    )]
                ),
                Column(
                  children: <Widget>[ IconButton(
                    icon: Icon(
                      Ionicons.logo_instagram, size: 60,),
                    onPressed: () async {
                      const url = 'https://www.instagram.com/vagnerbruno85/';
                      if (await canLaunch(url)) {
                      await launch(url);
                      } else {
                      throw 'Could not launch $url';
                      }
                    }
                    )]
                ),
                Column(
                  children: <Widget>[ IconButton(
                    icon: Icon(
                      Ionicons.logo_github, size: 60,),
                    onPressed: () async {
                      const url = 'https://github.com/vagnerbruno85';
                      if (await canLaunch(url)) {
                      await launch(url);
                      } else {
                      throw 'Could not launch $url';
                      }
                    }
                    )
                  ]
                ),
              ],
            ),
            SizedBox(height: 40.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Ionicons.logo_whatsapp,
          size: 48,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            abrirWhatsApp();
          });
        }
      ),
    );
  }
}
//**************************************************************CONTROLE DA SWITCH ************************************************************ */

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      }
    );
  }
}

//******************************************************** RECORTE DO CONTAINER EMBAIXO DA APP BAR **********************************************/
class Recorte extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
