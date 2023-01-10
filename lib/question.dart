import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  //
  //
  List kbcQuestion = [
    "Who is our national Animal ?",
    "Which is the Biggest Mountain\nin the World ? ",
    "Who is President of the\nAmerica ?",
    "Who is CM of Uttar Pradesh ?",
    "What is date of next \nKite festival ?"
  ];

  //
  //
  List kbcAnswer = [
    "Tiger",
    "Everest",
    "Bidden",
    "Yogi\nAdityanath",
    "14-01-2023"
  ];

  //
  //
  List optionA = [
    "Lion",
    "Girnar",
    "Trump",
    "Yogi\nAdityanath",
    "14-01-2023",
  ];

  //
  //
  List optionB = [
    "Tiger",
    "K2",
    "Bidden",
    "Vijay Rupani",
    "01-01-2023",
  ];
  //
  //
  List optionC = [
    "Lepord",
    "Everest",
    "Obama",
    "Lalu Yadav",
    "19-03-2023",
  ];
  //
  //
  List optionD = [
    "Elephant",
    "Himalaya",
    "Jyorge",
    "Bupendra Patel",
    "20-11-2023",
  ];
  //
  //User answer list
  List kbcUserAnswer = [];

  // variable for index
  int i = 0;

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap : (){
                        setState(() {
                          i=0;
                          kbcUserAnswer.clear();
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)
                        ),
                        child: Icon(Icons.refresh,color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                         border: Border.all(color: Colors.white),
                      ),
                      child: Text("Start from Beginning",style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 120,),
              //
              //question container
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //color: Color(0xff810CA8),
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Q-${i+1}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text("${kbcQuestion[i]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              //option
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                kbcUserAnswer.add(optionA[i]);
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff000000),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    //option A
                                    //
                                    child: Text("A.",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Text(
                                    "${optionA[i]}",
                                    style: TextStyle(
                                        color: Colors.white, letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                kbcUserAnswer.add(optionB[i]);
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff000000),

                                // color: Color(0xff810CA8),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("B.",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Text(
                                    "${optionB[i]}",
                                    style: TextStyle(
                                        color: Colors.white, letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                kbcUserAnswer.add(optionC[i]);
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff000000),

                                //color: Color(0xff810CA8),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("C.",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Text(
                                    "${optionC[i]}",
                                    style: TextStyle(
                                        color: Colors.white, letterSpacing: 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                kbcUserAnswer.add(optionD[i]);
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff000000),

                                //color: Color(0xff810CA8),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("D.",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Text(
                                    "${optionD[i]}",
                                    style: TextStyle(
                                        color: Colors.white, letterSpacing: 1),
                                  ),
                                ],
                              ),
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
                      if(i<kbcQuestion.length-1)
                        {
                          i++;
                        }
                        print("${kbcUserAnswer[i]}");
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        //color:Color(0xff2D033B),
                        color: Color(0xff000000),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 2, fontSize: 18),
                    ),
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
