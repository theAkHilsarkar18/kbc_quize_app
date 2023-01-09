import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/qbg5.webp"),
                fit: BoxFit.fitHeight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              //question container
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff810CA8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Q-1",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Who is prime minister of india ?",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //option
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff810CA8),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("A.",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Text(
                                  "Narendra Modi",
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff810CA8),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("B.",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Text(
                                  "Manmohan Sinh",
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff810CA8),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("A.",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Text(
                                  "Narendra Modi",
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff810CA8),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("B.",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Text(
                                  "Manmohan Sinh",
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'result');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color:Color(0xff2D033B),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Text("Next",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 18),),
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
