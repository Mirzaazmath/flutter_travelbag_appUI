import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zoom_drawer/product_detail.dart';

import 'bagsmodel.dart';
class BestDeals extends StatelessWidget {
  const BestDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey[200],
        appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Best Deals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    leading: IconButton(icon: Padding(
    padding: const EdgeInsets.all(5),
    child: Image.asset("assets/images/app_icon.png",),
    ),onPressed: (){
    ZoomDrawer.of(context)!.toggle();


    },),

    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(15),
    child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [


    SizedBox(height: 10,),
    Stack(
    children: [


    Column(
    children: [
    SizedBox(height: 30,),
    Container(
    padding: EdgeInsets.all(25),
    height: 160,
    width: double.infinity,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),


    ),
    child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Explore Latest",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
    Text("Bags with Price",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
    SizedBox(height: 10,),
    Container(

    padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),

    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color:  Color(0xff06c1cf),
    ),
    child: Text("Explore",style: TextStyle(color: Colors.white),),

    ),


    ],
    ),
    ),
    ],
    ),
    Positioned(
    right: 0,
    bottom: 10,
    child:  Container(
    height: 180,
    child:  Image.asset("assets/images/bags_1.png"),
    ),
    )

    ],
    ),
      SizedBox(height: 30,),
      Row(

      children: [
      Expanded(
      child: Container(
      padding: const EdgeInsets.only(left: 20,right: 20),
      alignment: Alignment.center,
      height: 50,

      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.search,color: Colors.black,),
      border: InputBorder.none
      ),
      ),
      ),
      ),
      SizedBox(width: 20,),
      Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
      color:  Color(0xff06c1cf),
      shape: BoxShape.circle
      ),
      child:Icon(Icons.tune,color: Colors.white70,) ,
      )
      ],
      ),
    SizedBox(height: 25,),

    Row(
    children: [
    Expanded(child: Text("The most searched bags ",style: TextStyle(fontSize:19,color: Color(0xff180226),fontWeight: FontWeight.bold))),

    InkWell(child: Text("View all",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
    ],
    ),
    Container(
    height: 290,
    child:  ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: baglist.length,
    itemBuilder: (context,index){
    return GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ProductDetail(baglist[index])));
    },
    child: Stack(
    children:[
    Column(

    children: [
    SizedBox(height: 20,),
    Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(20),
    height: 250,
    width: 200,decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,


    children: [
    Row(

    children: [
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(baglist[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    Text("${baglist[index].price}\\-",style: TextStyle(color: Colors.grey),),

    ],
    ),
    ),
    Container(width: 50,
    child: Icon(Icons.favorite_outline,color: Color(0xff06c1cf),size: 30, ),)
    ],
    )
    ],
    ),
    ),
    ],
    ),
    Positioned(
    left:30,

    child:
    Container(

    height: 200,
    child: Image.asset(baglist[index].image)))
    ]
    ),
    );


    }),
    ),
    SizedBox(height: 15,),
    Row(
    children: [
    Expanded(child: Text("The most searched bags ",style: TextStyle(fontSize:19,color: Color(0xff180226),fontWeight: FontWeight.bold))),

    InkWell(child: Text("View all",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
    ],
    ),
    Container(
    height: 290,
    child:  ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: baglist2.length,
    itemBuilder: (context,index){
    return GestureDetector(
    onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ProductDetail(baglist2[index])));
    },
    child: Stack(
    children:[
    Column(

    children: [
    SizedBox(height: 20,),
    Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(20),
    height: 250,
    width: 200,decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,


    children: [
    Row(

    children: [
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(baglist2[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    Text("${baglist2[index].price}\\-",style: TextStyle(color: Colors.grey),),

    ],
    ),
    ),
    Container(width: 50,
    child: Icon(Icons.favorite_outline,color: Color(0xff06c1cf),size: 30, ),)
    ],
    )
    ],
    ),
    ),
    ],
    ),
    Positioned(
    left:30,

    child:
    Container(

    height: 200,
    child: Image.asset(baglist2[index].image)))
    ]
    ),
    );


    }),
    ),



    ],
    ),
    ),
    ),

    );

  }
}
