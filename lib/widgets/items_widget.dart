import 'package:coffee_ordering/colors.dart';
import 'package:coffee_ordering/screens/single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{

  List imgs =[
    "Latte",
    "Espresso",
    "Black Coffee",
    "Cold Coffee",
  ];

  @override
  Widget build (BuildContext context){
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2 ,
      shrinkWrap: true,
      childAspectRatio:(150 / 195),
      children: [
        for(int i =0; i<imgs.length; i++) 
        Container(padding: EdgeInsets.symmetric(vertical:5 , horizontal:10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal:13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: slctdColor.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              color:slctdColor.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 8

            )
          ]
        ),
        child: Column(children: [
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleItemScreen(imgs[i])));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset("img/${imgs[i]}.png",
              width: 120, 
              height:120,
              fit:BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom:8),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    imgs[i], 
                    style: TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                    color: txtColor,
                  ) ,),
                  SizedBox(height: 7,),
                  Text(
                    "Best Coffee", 
                    style: TextStyle(
                    fontSize:16,
                    color: txtColor.withOpacity(0.5),
                  ) ,),
                ],
              )
            )
          ),
          Padding(padding: EdgeInsets.symmetric(vertical:5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$30",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: txtColor,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 237, 135, 71).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  CupertinoIcons.add, 
                  size:20, 
                  color:txtColor,
                  ),
              )
            ],
          ),
          ),
        ],),
        ),
      ],
    );
  }
}