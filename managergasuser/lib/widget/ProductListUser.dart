import 'package:flutter/material.dart';

class ProductListUser extends StatelessWidget {
   ProductListUser({Key key, this.name, this.address, this.age, this.image}) 
      : super(key: key); 
   final String name; 
   final String address; 
   final int age; 
   final String image; 

   Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
           mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
             Image.asset("assets/images/img/" +this.image),
             Expanded(child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                    Text(this.name, style: TextStyle(fontWeight: 
                                 FontWeight.bold))
                                 , Text(this.address),
                              Text("Age: " + this.age.toString()), 
                 ],
               ),
             ))
          ],),),
         
      );
   }
}