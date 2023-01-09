import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg1.jpg"),fit: BoxFit.fitHeight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,bottom: 100),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'qna');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text("Start Quiz",style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
