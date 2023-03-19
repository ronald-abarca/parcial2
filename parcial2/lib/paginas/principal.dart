import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parcial2/json/jsonproductos.dart';
import 'package:parcial2/paginas/account.dart';
import 'package:parcial2/paginas/groceries.dart';
import 'package:parcial2/paginas/plans.dart';
import 'package:parcial2/paginas/recipes.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  int paginaIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: getBody(),
      bottomNavigationBar:getFooter(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: paginaIndex,
      children: [
        recipes(),
        plans(),
        groceries(),
        account()
      ],
    );
  }
  Widget getFooter(){
    List inconosItems=[
      Icons.local_dining,
      Icons.list,
      Icons.shopping_cart_rounded,
      Icons.account_circle
    
    ];
    List textoItems=[
      "Recipes",
      "Plans",
      "Groceries",
      "Account"
    ];
    return Container(
      height:90 ,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left:20 ,right:20,top: 20 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:List.generate(textoItems.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  paginaIndex=index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    inconosItems[index],
                    color: paginaIndex==index ? Colors.orange:Colors.grey
                  ),
                  Text(
                    textoItems[index],
                    style:TextStyle(color:paginaIndex==index ? Colors.orange:Colors.grey)
                  )
                ]
              ),
            );       
          })      
        ),
      ),
    );
  }

}