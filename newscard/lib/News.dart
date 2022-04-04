import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);
color(){
  Random random = new Random();
  int randomNumber = random.nextInt(3);
  Color color = Colors.white;
  if( randomNumber == 0){
    color = Color(0xffF8C5C4);
  }
  if (randomNumber == 1){
    color = Color(0xff7C4BC8);
  }
  if (randomNumber == 2){
    color = Colors.white;
  }
  return color;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1C1C),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1C1C),
        elevation: 0,
        title: Text('NEWS',
          style: TextStyle(
              fontFamily: 'montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:  225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color(),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(5, 20,40 , 0),
                  child: Text('01| THE NIFTY FUTURES',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),

                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Row(
                  children: [
                   Flexible(
                      flex: 2,
                       child: Text('text',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                    ),
                       )
                   ),
                    Flexible(
                      flex: 1,
                        child:  Image.network(
                          'https://picsum.photos',
                          width: 125.83,
                          height: 66,
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  width: 124,
                  height: 38,
                  child: MaterialButton(onPressed: () { },
                    child: Text('Read More',
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  ),
                    
                  ),
                )
                ],)
              ],
            ),
          ),
        )
        ],
      ),
    );
  }
}
