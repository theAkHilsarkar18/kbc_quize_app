import 'package:flutter/material.dart';

class Finalwon extends StatefulWidget {
  const Finalwon({Key? key}) : super(key: key);

  @override
  State<Finalwon> createState() => _FinalwonState();
}

class _FinalwonState extends State<Finalwon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(children: [Container(height: double.infinity,width: double.infinity,child: Image.asset("assets/images/bg 4.webp"),),Column(children: [Center(child: Image.asset("assets/images/finalwon.png"))]),],),),);
  }
}
