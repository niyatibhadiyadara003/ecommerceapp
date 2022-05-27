import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({Key? key}) : super(key: key);

  @override
  _DetailpageState createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Airpode"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width:600),
          Container(
            color:Colors.black,
            child:Image.asset("assets/images/a1.jpg",),
          ),
          const SizedBox(height:20),
          Container(
            alignment: Alignment(-0.8,0),
            child: Text("Rs. $args",style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height:20),
          Container(
            alignment: Alignment(-0.8,0),
            child: Text("Airpodes",style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height:20),
          Container(
            height: 90,
            width:420,
            child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,",style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),),
          ),
          const SizedBox(height:30),
          Container(
            height: 50,
            width:200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
              ),
              child: Text("Buy Now",style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          )
        ],
      ),
    );
  }
}
