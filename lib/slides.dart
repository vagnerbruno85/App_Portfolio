import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  const SlideTile({
    Key? key,
    required this.image,required this.activePage
  }) : super(key: key);

  final image;
  final bool activePage;

  @override
  Widget build(BuildContext context) {
    final double top = this.activePage ? 50 : 150;
    final double blur = this.activePage ? 30 : 0;
    final double offset = this.activePage ? 20 : 0;

    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      curve:Curves.easeOutQuart,
      margin:EdgeInsets.only(top: top, bottom: 100 ,right: 30),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        image:DecorationImage(
          image:AssetImage(this.image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color:Colors.black87,
            blurRadius: blur,
            offset: Offset(offset,offset)
          ),
        ]
      ),
    );
  }
}
