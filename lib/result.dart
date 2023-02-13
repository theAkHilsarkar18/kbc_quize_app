import 'package:flutter/material.dart';
import 'package:kbc_quize_app/model.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg2.jpg"),
                    fit: BoxFit.fitHeight),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/images/rights.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(height: 170,),
                Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green,width: 3),
                  ),
                  alignment: Alignment.centerRight,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Correct Answer",
                          style: TextStyle(color: Colors.green,fontSize: 25,letterSpacing: 2,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: () {

                    setState(() {
                      Navigator.pushReplacementNamed(context, 'qna');
                    });
                  },
                  child: Container(
                    height: 55,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.white,width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 18)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
