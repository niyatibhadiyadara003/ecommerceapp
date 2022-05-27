/*import 'package:flutter/material.dart';
import 'Detailpage.dart';
import 'Likepage.dart';
import 'Listpage.dart';
import 'addtocartpage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => HomePage(),
      "Listpage": (context) => Listpage(),
      "Likepage": (context) => Likepage(),
      "Addtocartpage": (context) => Addtocartpage(),
      "Deatailpage": (context) => Detailpage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tapped=false;
  bool tapped1=false;
int rs=3000;
  Color mycolor= Colors.white;
      Color mycolor1= Colors.white.withOpacity(0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          const SizedBox(height:20),
          Row(
            children: [
              const SizedBox(width:30),
              Container(
                alignment: Alignment.center,
                child: Text("Explore Product",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
          const SizedBox(height:25),
          Row(
            children: [
              const SizedBox(width:30),
              Container(
                height: 50,
                width:300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: const [
                    SizedBox(width:10),
                    Icon(Icons.search,color: Colors.grey,size: 20,),
                    SizedBox(width:10),
                    Text("Product",style:TextStyle(
                      color:Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))
                  ],
                ),
              ),
              const SizedBox(width:40),
              Container(
                height: 50,
                width:100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.camera_alt_outlined,color: Colors.blue,)
              ),
            ],
          ),
          const SizedBox(height:25),
          Row(
            children: [
              const SizedBox(width:30),
              TextButton(onPressed: (){
                setState(() {
                  mycolor= Colors.white;
                  mycolor1 = Colors.white.withOpacity(0.5);
                  Navigator.of(context).pushNamed("/");
                });
              },
                  child: Text("Cards",style: TextStyle(
                    color:mycolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),)),
              const SizedBox(width:30),
              TextButton(onPressed: (){
                setState(() {
                  mycolor1= Colors.white;
                  mycolor = Colors.white.withOpacity(0.5);
                  Navigator.of(context).pushNamed("Listpage");
                });
              },
                  child: Text("List",style: TextStyle(
                    color: mycolor1,
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),)),
            ],
          ),
          const SizedBox(height:30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 30,),
                Container(
                  height: 450,
                  width:300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Column(
                    children:[
                      const SizedBox(height:15,),
                      Row(
                        children: [
                            const SizedBox(width:10),
                          FloatingActionButton(onPressed:()
                            {
                              setState(() {
                                tapped=!tapped;
                              });
                            },
                            backgroundColor: tapped?Colors.blue:Colors.white,
                          child: Icon(Icons.favorite,color: tapped?Colors.white:Colors.blue, size: 20,),
                          ),
                          const SizedBox(width:170),
                          FloatingActionButton(onPressed: (){
                            setState(() {

                            });
                          },
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add_shopping_cart,color: Colors.blue,size: 20,),
                          ),
                        ],
                      ),
                      const SizedBox(height:15,),
                      Container(
                        child: Image.asset("assets/images/a1.jpg",width:220),
                      ),
                      const SizedBox(height:15,),
                      Container(
                        child: Text("Rs.$rs",style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),)
                      ),
                      const SizedBox(height:15,),
                      Container(
                        alignment: Alignment(-0.8,0),
                          child: Text("Airpodes",style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),)
                      ),
                      const SizedBox(height:15,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.of(context).pushNamed("Deatailpage",arguments: rs);
                          });
                        },
                        child: Ink(
                          child: Container(
                              alignment: Alignment(-0.8,0),
                              child: Text("See more details >",style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),)
                          ),
                        ),
                      ),
                      const SizedBox(height:15,),
                    ],
                  ),
                ),
                const SizedBox(width: 30,),
                Container(
                  height: 450,
                  width:300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Column(
                    children:[
                      const SizedBox(height:15,),
                      Row(
                        children: [
                          const SizedBox(width:10),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              tapped1=!tapped1;
                            });
                          },
                            backgroundColor:  tapped1?Colors.blue:Colors.white,
                            child: Icon(Icons.favorite,color: tapped1?Colors.white:Colors.blue,size: 20,),
                          ),
                          const SizedBox(width:170),
                          FloatingActionButton(onPressed: (){
                            setState(() {

                            });
                          },
                            backgroundColor:  Colors.white,
                            child: Icon(Icons.add_shopping_cart,color:Colors.blue,size: 20,),
                          ),
                        ],
                      ),
                      const SizedBox(height:15,),
                      Container(
                        child: Image.asset("assets/images/i1.jpg",width:180),
                      ),
                      const SizedBox(height:15,),
                      Container(
                          child: Text("Rs.145000.00",style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),)
                      ),
                      const SizedBox(height:15,),
                      Container(
                          alignment: Alignment(-0.8,0),
                          child: Text("Iphone",style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),)
                      ),
                      const SizedBox(height:15,),
                      InkWell(
                        onTap: (){},
                        child: Ink(
                          child: Container(
                              alignment: Alignment(-0.8,0),
                              child: Text("See more details >",style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),)
                          ),
                        ),
                      ),
                      const SizedBox(height:15,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:20),
          Container(
            height:80,
            width:300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.white.withOpacity(0.2),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.of(context).pushNamed("Likepage");
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height:60,
                      width:60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                        child: Icon(Icons.favorite,color:Colors.red,size: 25,),
                      ),
                  ),
                const SizedBox(width:20),
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    height:60,
                    width:60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.white,
                    ),
                    child: Icon(Icons.menu,color:Colors.black,size: 25,),
                  ),
                ),
                const SizedBox(width:20),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.of(context).pushNamed("Addtocartpage");
                    });
                  },
                  child: Ink(
                    child: Container(
                      alignment: Alignment.center,
                      height:60,
                      width:60,
                      child: Icon(Icons.add_shopping_cart,color:Colors.black,size: 25,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                    ),
                  )
                ),
              ],
          ),
          ),
        ],
      ),
    );
  }
}*/


import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
        "detail_page": (context) => const DetailsPage(),
        "wish_list": (context) => const Wishlist(),
        "add_to_cart": (context) => const AddToCart(),
      },
    ),
  );
}

//------------------------

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.085,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Explore Product",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.635,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Apple Product",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const Spacer(),
                Container(
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.blue,
                    size: 30,
                  ),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: home
                  .map(
                    (e) => Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("detail_page",arguments: e);
                      },
                      child: Container(
                        width: 250,
                        height: MediaQuery.of(context).size.height * 0.55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      e.like = !e.like;
                                      if(e.like == true){
                                        fav.add(e);
                                      }
                                      else{
                                        fav.remove(e);
                                      }
                                    });
                                  },
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blueAccent
                                            .withOpacity(0.2),
                                      ),
                                      child: (e.like)
                                          ? Icon(
                                        Icons.favorite,
                                        color: Colors.blueAccent,
                                      )
                                          : Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.blueAccent,
                                      )),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      e.cart = !e.cart;
                                      if(e.cart == true){
                                        Cart.add(e);
                                      }
                                      else{
                                        Cart.remove(e);
                                      }
                                    });
                                  },
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: (e.cart)
                                          ? Icon(
                                        Icons.shopping_bag,
                                        color: Colors.white,
                                      )
                                          : Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("${e.image}"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "₹ ${e.price}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 50,
                              width: 200,
                              child: Text(
                                "${e.name}",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                  // letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text("${e.rate}"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "See the Details >>",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  .toList(),
            ),
          ),
          const Spacer(),
        ],
      ),
      backgroundColor: const Color(0xFF3d64e7),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("wish_list");
                },
                child: const Icon(
                  Icons.favorite_outline,
                  color: Colors.blue,
                  size: 35,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.settings_input_composite_sharp,
                  color: Colors.blue,
                  size: 35,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.only(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: const EdgeInsets.only(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("add_to_cart");
                },
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: const Color(0xFF3055eb),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
//----------------------


class Details {

  String name;
  int price;
  String info;
  String image;
  String rate;
  bool like;
  bool cart;
  int id;

  Details({
    required this.name,
    required this.price,
    required this.info,
    required this.image,
    required this.rate,
    required this.like,
    required this.cart,
    required this.id,
  });
}
//----------------------------------

List<Details> home = <Details>[
  Details(
    name: "Airpods",
    price: 2000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/832/832/kpinwy80/headphone/x/r/e/mmef2hn-a-apple-original-imag3qe9hphsevrt.jpeg?q=70",),
  Details(
    name: "Watch",
    price: 8000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/312/312/jmi22kw0/smartwatch/t/g/y/mtf02hn-a-apple-original-imaf9ec8nh6sscfh.jpeg?q=70",),
  Details(
    name: "iPhone 12",
    price: 120000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8dqgncgbcb.jpeg?q=70",),
  Details(
    name: "Air Conditioner",
    price: 15000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/312/312/kltryq80/air-conditioner-new/u/x/r/cs-cu-ru12xkyw-split-panasonic-inverter-original-imagyugn9zdvzuw5.jpeg?q=70",),
  Details(
    name: "iPhone 13",
    price: 180000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/312/312/ktketu80/mobile/z/r/x/iphone-13-mlph3hn-a-apple-original-imag6vzz4rt8t7gk.jpeg?q=70",),
  Details(
    name: "Headphones",
    price: 6000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/832/832/ksw4ccw0/headphone/w/g/r/rockerz-450-boat-original-imag6cqqh49wjfy5.jpeg?q=70",),
  Details(
    name: "Bluetooth",
    price: 12000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/832/832/kingqkw0-0/speaker/mobile-tablet-speaker/s/8/i/stone-350-boat-original-imafyebfuaumdezs.jpeg?q=70",),
  Details(
    name: "iPhone 13 Pro",
    price: 240000,
    rate: "⭐⭐⭐⭐⭐",
    like: false,
    cart: false,
    id: 1,
    info: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    image:"https://rukminim1.flixcart.com/image/312/312/ktketu80/mobile/r/m/8/iphone-13-pro-max-mllj3hn-a-apple-original-imag6vpgphrzuffg.jpeg?q=70",),
];

List<Details> fav = <Details>[];
List<Details> Cart = <Details>[];

//----------------------------------------------------------------------------


class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: (fav.isEmpty == true)
          ? SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sorry .. !!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Wishlist is Empty..!!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      )
          : SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: fav
                  .map(
                    (e) => Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 180,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 170,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("${e.image}"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 130,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          e.like = !e.like;
                                          if (e.like == true) {
                                            fav.add(e);
                                          } else {
                                            fav.remove(e);
                                          }
                                        });
                                      },
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blueAccent
                                                .withOpacity(0.2),
                                          ),
                                          child: (e.like)
                                              ? Icon(
                                            Icons.favorite,
                                            color: Colors.blueAccent,
                                          )
                                              : Icon(
                                            Icons
                                                .favorite_border_outlined,
                                            color: Colors.blueAccent,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Text("${e.name}",style: TextStyle(fontSize: 25),),
                              SizedBox(height: 20,),
                              Text("₹ ${e.price}",style: TextStyle(fontSize: 25),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

//-------------------------------------


class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/", (route) => false);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          "Add to Cart",
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: (Cart.isEmpty == true) ?SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sorry .. !!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Cart is Empty..!!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ) :SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: Cart
                  .map(
                    (e) => Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 180,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 170,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("${e.image}"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 130,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          e.cart = !e.cart;
                                          if (e.cart == true) {
                                            Cart.add(e);
                                          } else {
                                            Cart.remove(e);
                                          }
                                        });
                                      },
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blueAccent
                                                .withOpacity(0.2),
                                          ),
                                          child: (e.cart)
                                              ? Icon(
                                            Icons.shopping_bag,
                                            color: Colors.blueAccent,
                                          )
                                              : Icon(
                                            Icons
                                                .shopping_bag_outlined,
                                            color: Colors.blueAccent,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Text("${e.name}",style: TextStyle(fontSize: 25),),
                              SizedBox(height: 20,),
                              Text("₹ ${e.price}",style: TextStyle(fontSize: 25),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

//--------------------------------------


class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            height: 250,
                            width: 350,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("${args.image}"),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  args.id = 1;
                                  Navigator.of(context).pushNamed("/");
                                });
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 453,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${args.name}",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              args.like = !args.like;
                              if (args.like == true) {
                                fav.add(args);
                              } else {
                                fav.remove(args);
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent.withOpacity(0.2),
                            ),
                            child: (args.like)
                                ? Icon(
                              Icons.favorite,
                              color: Colors.blueAccent,
                            )
                                : Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.blueAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        "₹ ${args.id * args.price}",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "${args.info}",
                        style: TextStyle(
                          fontSize: 20,
                          wordSpacing: 2,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 160),
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (args.id > 1) {
                                    args.id--;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "${args.id}",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (args.id >= 1) {
                                    args.id++;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.blue,
                                ),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          args.cart = !args.cart;
                          if (args.cart == true) {
                            Cart.add(args);
                          } else {
                            Cart.remove(args);
                          }
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Added To Cart"),
                          ));
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                        ),
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

