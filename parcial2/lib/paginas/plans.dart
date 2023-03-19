import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../json/jsonproductos.dart';

class plans extends StatefulWidget {
  const plans({super.key});

  @override
  State<plans> createState() => _plansState();
}

class _plansState extends State<plans> {
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
          "Plans",
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
        child: ListView(
          children: [
            Column(
              children: [
                Text(
              "Datos de tarjeta de credito",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 20,),
            gteCampo("Numero de tarjeta"),
            SizedBox(height: 20,),
            gteCampo("Nombre propietario"),
            SizedBox(height: 20,),
            gteCampo("fecha vencimiento"),
            SizedBox(height: 20,),
            gteCampo("CVV"),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){},
              child: Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              )
            )
              ],
            )
          ],
        )
      )
    );
  }

  Widget gteCampo(String jint){
    return Container(
      width: 320,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:0,horizontal:10),
        child: TextField(
          decoration: InputDecoration(
            hintText: jint,
            border: InputBorder.none,
            hintStyle: TextStyle(
                fontSize: 20,
              ),
          ),
          style: TextStyle(fontSize: 20,),
        ),
      ),
    );      
  }

  



}