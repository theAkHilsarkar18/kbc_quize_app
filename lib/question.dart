import 'package:flutter/material.dart';
import 'package:kbc_quize_app/model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  //.....................................................................................................................................................

  List qNumber = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  List question = [
    "What is name of longest river of the india ?",
    "What is name of national animal of the india ?",
    "What is name of capital of the america ?",
    "Who invented c language ?",
    "Who is father of the our nation?",
  ];

  List optA = [
    "Ganga",
    "Tiger",
    "Washington",
    "Denis richie",
    "Mahatma Gandhi",
  ];

  List optB = [
    "Brahmputra",
    "Lion",
    "New York",
    "Bjarne Strostrup",
    "Sardar Pate",
  ];

  List optC = [
    "Sindhu",
    "Lepord",
    "Dalas",
    "Mark Zuck",
    "Javahar Naheru",
  ];

  List optD = [
    "Narmada",
    "Cow",
    "Shikago",
    "Steve Jobs",
    "Bhagatsinh",
  ];

  int i = 0;

  //.....................................................................................................................................................

  @override
  Widget build(BuildContext context) {



    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // backgrounf image
            Container(
              height: double.infinity,
              width: double.infinity,
              child:
                  Image.asset("assets/images/qbg5.webp", fit: BoxFit.fitHeight),
            ),
            //
            // Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// Question Box Row....................................................................................................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    questionNumber(qNumber[i]),
                    questionBox(question[i]),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

// option column
                Column(
                  children: [
                    InkWell(onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'result');
                      });
                    },child: optionA(optA[i])),
                    SizedBox(
                      height: 10,
                    ),
                    optionB(optB[i]),
                    SizedBox(
                      height: 10,
                    ),
                    optionC(optC[i]),
                    SizedBox(
                      height: 10,
                    ),
                    optionD(optD[i]),
                  ],
                ),

                SizedBox(height: 50,),

                ElevatedButton(onPressed: () {
                  setState(() {
                    if(i<question.length-1)
                    {
                      i++;
                    }
                    else
                      {
                        i=0;
                      }
                  });
                }, child: Text("Next")),

                SizedBox(height: 50,),

                //
                // ElevatedButton(onPressed: () {
                //   setState(() {
                //     i=0;
                //   });
                // }, child: Text("Restart")),
              ],
            ),
          ],
        ),
      ),
    );
  }

//
  //
  //
  // Smart widget panel. ..........  . .  .  . ....................
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Widget questionNumber(String num) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //border: Border.all(color: Colors.white,width: 1.5),
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black12,
          ])),
      child: Text("${num}",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  Widget questionBox(String qname) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 56,
      width: 300,
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.white,width: 1.5),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black12,
          ])
          //color: Colors.black,
          ),
      child: Text("${qname}",
          style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1)),
    );
  }

  Widget optionA(String a) {
    return InkWell(
      onTap: () {

        setState(() {

          Navigator.pushNamed(context, 'result');
        });

      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.black, Colors.black12]),
        ),
        alignment: Alignment.centerLeft,
        child: Text("A. ${a}",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
      ),
    );
  }

  Widget optionB(String b) {
    return InkWell(
      onTap: () {

        setState(() {

          Navigator.pushNamed(context, 'lose');

        });

      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.black, Colors.black12]),
        ),
        alignment: Alignment.centerLeft,
        child: Text("B. ${b}",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
      ),
    );
  }

  Widget optionC(String c) {
    return InkWell(
      onTap: () {

        setState(() {

          Navigator.pushNamed(context, 'lose');
        });
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.black, Colors.black12]),
        ),
        alignment: Alignment.centerLeft,
        child: Text("C. ${c}",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
      ),
    );
  }

  Widget optionD(String d) {
    return InkWell(
      onTap: () {

        setState(() {
          Navigator.pushNamed(context, 'lose');
        });
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.black, Colors.black12]),
        ),
        alignment: Alignment.centerLeft,
        child: Text("D. ${d}",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
      ),
    );
  }
}


