import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parcial2/json/jsonproductos.dart';

class recipes extends StatefulWidget {
  const recipes({super.key});

  @override
  State<recipes> createState() => _recipesState();
}

class _recipesState extends State<recipes> {
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
          "Recipes",
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
          children: List.generate(1, (index) 
            {
              return Column(
                children: List.generate(productos.length, (index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: getPlantilla(
                        productos[index]['img'],
                        productos[index]['name'],
                        productos[index]['precio'],
                        )
                    );
                  }
                )
              );
            }
          )
        )
      )
    );
  }

  Widget getPlantilla(String img,String name,double precio){
    return Container(
      width: 340,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20)
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:DecorationImage(
                  image: NetworkImage(img),
                  fit:BoxFit.cover
                ) 
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    '\$'+precio.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      )
    );
  }





}