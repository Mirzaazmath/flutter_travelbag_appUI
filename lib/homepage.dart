import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:zoom_drawer/rate_us.dart';

import 'best_deals.dart';
import 'mainpage.dart';
import 'notifications.dart';
class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  @override
  int currentindex=0;

  Widget build(BuildContext context) {
    //this zoomDrawer widget if from zoomdrawer package
    return ZoomDrawer(
        menuScreen: Drawer( setindex: (index){
          setState(() {
            currentindex=index;
          });

        },),
        mainScreen: setscreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0,
      menuBackgroundColor: Color(0xff06c1cf),
      moveMenuScreen: false,



    );


  }
  Widget setscreen(){
    switch(currentindex){
      case 0:
        return HomePage();

      case 1:
        return BestDeals();
      case 2:
        return Notifications();
      case 3:
        return Rate();
      case 4:
        return Container(
          color: Colors.greenAccent,
        );
      case 5:
        return Container(
          color: Colors.blue,
        );
      default:
        return HomePage();
    }

  }
}

class Drawer extends StatelessWidget {
  final ValueSetter setindex;
  const Drawer({Key? key, required this.setindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff06c1cf),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 80,
                width:80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.fill
                  )

                ),
                // child: Image.asset("assets/images/profile.jpg",fit: BoxFit.fill,),

              ),
             const  Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Text("Welcome Mirza!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              drawerlist(Icons.home_outlined, "Home Page",0,context),
              drawerlist(Icons.handshake_outlined, "Best Deal Chair",1,context),
              drawerlist(Icons.notifications_outlined, "Notifications",2,context),
              drawerlist(Icons.star_outline, "Rate Us",3,context),
              drawerlist(Icons.error_outline_rounded, "Help Center",4,context),
              drawerlist(Icons.logout_outlined, "Sign Out",5,context),
              Expanded(child: Container())

            ],
          ),
        ),
      ),
    );
  }
  Widget drawerlist(IconData icon,String text,int index,context){
    return GestureDetector(
      onTap: (){
        setindex(index);
        ZoomDrawer.of(context)!.close();
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 30,top: 30),
        child: Row(
          children: [
            Icon(icon,color: Colors.white70,),
            SizedBox(width: 20,),
            Text(text,style: TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),),

          ],
        ),

      ),
    );
  }
}

