import 'package:flutter/material.dart';
import 'package:kbc_quize_app/model.dart';

class Looserscreen extends StatefulWidget {
  const Looserscreen({Key? key}) : super(key: key);

  @override
  State<Looserscreen> createState() => _LooserscreenState();
}

class _LooserscreenState extends State<Looserscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/qbg6.jpg",fit: BoxFit.fitHeight),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 120,),
                Center(child: Container(height:200,width: 200,child: Image.asset("assets/images/lose.png"))),
                SizedBox(height: 60,),
                restart(),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget restart()
  {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.pushReplacementNamed(context, 'qna',);
        });
      },
      child: Container(
        height: 55,
        width: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text("Restart",style: TextStyle(color: Colors.white,letterSpacing: 2,fontWeight: FontWeight.w700,fontSize: 18)),
      ),
    );
  }
}
