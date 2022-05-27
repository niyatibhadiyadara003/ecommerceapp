import 'package:flutter/material.dart';

class Addtocartpage extends StatefulWidget {


  @override
  _AddtocartpageState createState() => _AddtocartpageState();
}

class _AddtocartpageState extends State<Addtocartpage> {
  int i=1;
  int s=3000;
  int a=3000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add to cart"),centerTitle: true,),
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
            const SizedBox(width:10),
            Column(
              children: [
                const SizedBox(height:20),
                Text("Rs. $s",style: TextStyle(
                  color:Colors.black,
                  fontSize: 25,
                ),),
                const SizedBox(height:10),
                Text('Airpodes',style: TextStyle(
                  color:Colors.black,
                  fontSize: 25,
                ),),
                const SizedBox(height:10),
                Row(
                  children: [
                    TextButton(onPressed: (){
                      setState(() {
                        i++;
                        s= a*i;
                      });
                      print(s);
                    },
                        child:Text("+",style: TextStyle(
                            color: Colors.black,
                        fontSize: 20,
                        ),)),
                    const SizedBox(width:10),
                    Text("$i",style: TextStyle(color: Colors.black,
    fontSize: 30,),),
                    const SizedBox(width:10),
                    TextButton(onPressed: (){
                      setState(() {
                        if(i>0) {
                          i--;
                          s=a*i;
                        }
                      });
                    },
                        child:Text("-",style: TextStyle(color: Colors.black,
                          fontSize: 30,),))
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
