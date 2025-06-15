import 'package:flutter/material.dart';
import 'bmi_screen.dart';

class BmiResultScreen extends StatelessWidget {

  final bool isMale;
  final int result;
  final int age;


  BmiResultScreen({
    required this.isMale,
    required this.result,
    required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff0A0F1E),
        title: Center(
          child: Text(
            'BMI Result',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 300.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1A1B2D),
              borderRadius: BorderRadius.circular(30.0,),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isMale ? 'Gender: Male' : 'Gender: Female',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  'Result: $result',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  'Age: $age',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold, color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
