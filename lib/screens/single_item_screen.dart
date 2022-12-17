import 'package:coffee_ordering/colors.dart';
import 'package:coffee_ordering/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String imag;
  SingleItemScreen(this.imag);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:25, bottom:7),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding (
                  padding: EdgeInsets.only(left:25,),
                  child: InkWell(
                    onTap:(){
                      Navigator.pop(context);
                    }, 
                    child:Icon(Icons.arrow_back_ios_new,
                    color: txtColor
                     )
                    ),
                  ),
                  SizedBox(height: 0.1,),
                  Center(
                    child: Image.asset(
                      "img/$imag.png",
                      width: MediaQuery.of(context).size.width/1.6,
                      ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left:25, right:40 ,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BEST COFFEE",
                          style: TextStyle(
                            color:txtColor,
                            letterSpacing: 3,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          imag, 
                          style:TextStyle(
                            fontSize: 25,
                            letterSpacing: 1,
                            color:txtColor
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding:EdgeInsets.all(10),
                                width: 120,
                                decoration: BoxDecoration(
                                  border:Border.all(
                                    color:txtColor.withOpacity(0.5)
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    Icon(
                                      CupertinoIcons.minus, 
                                      size:18, 
                                      color:txtColor,
                                      ),
                                      SizedBox(width: 15,),
                                      Text("2", style:TextStyle(color:txtColor, fontSize:16, fontWeight: FontWeight.w500 )),
                                      SizedBox(width: 15,),
                                      Icon(
                                      CupertinoIcons.minus, 
                                      size:18, 
                                      color:txtColor,
                                      ),
                                  ],
                                ),
                              ),
                              Text("\$ 30.20",style:TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color:txtColor
                              ))
                            ]

                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Coffee is a major source of antioxidants in the diet. It has many health benefits.",
                          style: TextStyle(
                            color:txtColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text(
                              "Volume:",
                              style: TextStyle(
                                color:txtColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500, 
                              ),
                              ),
                              SizedBox(width:5,),
                              Text(
                              "60 ml",
                              style: TextStyle(
                                color:txtColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500, 
                              ),
                              ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal:50 ),
                                decoration: BoxDecoration(
                                  color:Color.fromARGB(255, 237, 135, 71).withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: slctdColor.withOpacity(0.3),
                                  )]
                                    
                                ),
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color:txtColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: slctdColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: Colors.black.withOpacity(0.2),
                                  ),]
                                ),
                                child: Icon(Icons.favorite_outline, color: txtColor,)
                              )

                            ],
                          ),
                        )
                      

                      ],
                    ),
                  )
              ]
              )
            ),
        )
      )
    );
  }
}