import 'package:flutter/material.dart';
class Likepage extends StatefulWidget {
  const Likepage({Key? key}) : super(key: key);

  @override
  _LikepageState createState() => _LikepageState();
}

class _LikepageState extends State<Likepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite"),centerTitle: true,),
      backgroundColor: Colors.blue,
      body: Container(
          alignment: Alignment.center,
          color: Colors.white.withOpacity(0.6),
          height:150,
          child: Row(
            children: [
              Container(
                child: Image.asset("assets/images/a1.jpg",height:150),
              ),
              const SizedBox(width:30),
              Column(
                children: [
                  const SizedBox(height:20),
                  Text("Rs. 3000",style: TextStyle(
                    color:Colors.black,
                    fontSize: 25,
                  ),),
                  const SizedBox(height:10),
                  Text('Airpodes',style: TextStyle(
                    color:Colors.black,
                    fontSize: 25,
                  ),),
                ],
              ),
              const SizedBox(width:150),
              Container(
                alignment: Alignment.topCenter,
                  height:100,
                  width:50,
                  child: Icon(Icons.favorite,color:Colors.red))
            ],
          )
      ),
    );
  }
}
