import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Products"),centerTitle: true,),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height:20),
            Row(
              children: [
                const SizedBox(width:30),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/a1.jpg"),
                      const SizedBox(height:15),
                      Text("Airpodes",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.3000.00",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
                const SizedBox(width:40),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/i1.jpg",height:200),
                      const SizedBox(height:15),
                      Text("Iphone",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.145000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height:20),
            Row(
              children: [
                const SizedBox(width:30),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/l1.jpg"),
                      const SizedBox(height:15),
                      Text("Laptop",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.230000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
                const SizedBox(width:40),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/tv1.jpg",height:200),
                      const SizedBox(height:15),
                      Text("Tv",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.345000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height:20),
            Row(
              children: [
                const SizedBox(width:30),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/t1.jpg"),
                      const SizedBox(height:15),
                      Text("Tablate",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.60000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
                const SizedBox(width:40),
                Container(
                  alignment: Alignment.center,
                  height:300,
                  width:200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/h1.jpg",height:200),
                      const SizedBox(height:15),
                      Text("Headphone",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      const SizedBox(height:15),
                      Text("Rs.14000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),)
                    ],
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
