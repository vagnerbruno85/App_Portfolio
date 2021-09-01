import 'package:app1/home_page.dart';
import 'package:flutter/material.dart';

import '../slides.dart';

class HtmlPage extends StatefulWidget {
  const HtmlPage({ Key? key }) : super(key: key);

  @override
  _HtmlPageState createState() => _HtmlPageState();
}

class _HtmlPageState extends State<HtmlPage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;
  var _listSlide = [
    {'id' : 0, 'image': 'assets/images/html_aquarela.jpg'},
    {'id' : 1, 'image': 'assets/images/html_pontos.jpg'},
    {'id' : 2, 'image': 'assets/images/html_historia_da_cerveja.jpg'},
  ];
  
  void initState() {
    _pageController.addListener((){
     
      int next = _pageController.page!.round();
       print(next);
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('HTML Page'),
       actions:[
         CustomSwitch(),
       ],
      ),
      body:SafeArea(
         child: Column(
           children: <Widget> [
            Expanded(
              child:PageView.builder(
                controller: _pageController,
                itemCount: _listSlide.length,
                itemBuilder:(_ , currentIndex) {
                  bool activePage = currentIndex ==_currentPage;
                  return SlideTile(
                    activePage: activePage,
                    image: _listSlide[currentIndex]['image'],);
                }
              ),
            ),  
            _buildBullets(),
         ], 
       ),
      ),
    );
  }
  Widget _buildBullets() {
   return Padding(
     padding: EdgeInsets.all(8),
     child:Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: _listSlide.map((i) {
         return Container(
           margin:EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color: _currentPage == i['id'] ? Colors.red : Colors.grey,
          ));
       }).toList(),
    ),
  );
  }
}