import 'package:flutter/material.dart';
import '../slides.dart';
import '../home_page.dart';

class ReactNativePage extends StatefulWidget {
  const ReactNativePage({ Key? key }) : super(key: key);

  @override
  _ReactNativePageState createState() => _ReactNativePageState();
}

class _ReactNativePageState extends State<ReactNativePage> {
  
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;
  var _listSlide = [
    {'id' : 0, 'image': 'assets/images/react_calc.jpg'},
    {'id' : 1, 'image': 'assets/images/react_soulmili.jpg'},
    {'id' : 2, 'image': 'assets/images/react_mototaxista.jpg'},
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
       title: Text('React Native Page'),
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