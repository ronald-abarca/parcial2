import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:getAppBar() ,
      body:getLista() ,
      backgroundColor:Colors.yellow
    );
  }

   PreferredSizeWidget getAppBar(){
    return AppBar(
      backgroundColor: Colors.orange,
      leading: const IconButton(
        onPressed: null,
        icon:Text(
          "Account",
          style: TextStyle(fontSize: 16,color: Colors.white,fontWeight:FontWeight.w500)
        )
      ),
      actions: [],
      leadingWidth: 95,
    );
  }

  Widget getLista(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.person_pin_sharp,
                size: 100,
              ),
              Text(
                "Desarrollador",
                style: TextStyle(
                  fontSize: 23
                ),
              ),
              Text(
                "Ronald Heriberto Abarca Rivas",
                style: TextStyle(
                  fontSize: 23
                ),
              ),
              Text(
                "25-1599-2019",
                style: TextStyle(
                  fontSize: 23
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}