
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Nav Bar",style: TextStyle(fontSize: 18,),),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 500.0),
            child: Column(
              children: [
                Text("hello world my name mohamed nor"),
                ElevatedButton(onPressed: (){}, child: Text("click me"),style: ButtonStyle(),)

              ],
            ),
          ),
          Column(

             children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.email_outlined,size: 40.0),
                  Icon(Icons.share,size: 40.0),
                  Icon(Icons.person_outline_rounded,size: 40.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Email",style: TextStyle(fontSize: 18),),

                  Text("Share",style: TextStyle(fontSize: 18),),
                  Text("User",style: TextStyle(fontSize: 18),),
                ],
              ),const SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
