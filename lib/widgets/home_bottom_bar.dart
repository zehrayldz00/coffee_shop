import 'package:coffee_ordering/colors.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       padding:EdgeInsets.symmetric(horizontal: 25),
        
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: backColor,
          boxShadow: [
            BoxShadow(
              color:Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
      
        child:
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home, 
            color:slctdColor, 
            size: 35,
            ),
            Icon(Icons.favorite_outlined, 
            color:txtColor.withOpacity(0.8), 
            size: 35,
            ),
            Icon(Icons.notifications, 
            color:txtColor.withOpacity(0.8), 
            size: 35,
            ),
            Icon(Icons.person, 
            color:txtColor.withOpacity(0.8), 
            size: 35,
            ),
          ],
        ),
        
        
      ),
    );
    
  }
}