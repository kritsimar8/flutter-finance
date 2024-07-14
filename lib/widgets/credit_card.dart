import 'package:flutter/material.dart';



class CreditCard extends StatelessWidget{
    const CreditCard({super.key});

    @override
    Widget build(BuildContext context){
      return Container(
        height:220,
        width:400,
        decoration: BoxDecoration(
         
        ),
       child: ClipRRect(
         borderRadius: BorderRadius.circular(20),
         child:Column(
          children:[
            Expanded(
              flex:2,
              child:Container(
                color: const Color.fromARGB(255,14,19,29),
                child: Stack(
                  children:[
                    Positioned(
                      top:16,
                      left:16,
                      child:Image.asset("assets/credit-card.png",
                      height:40,
                      color:Colors.white,
                      ),),
                    Positioned(
                      top:10,
                      left:70,
                      child:Image.asset("assets/wifi.png",
                      height:50,
                      color:Colors.white,
                      ),),
                      const Positioned(
                        bottom:16,
                        left:16,
                        child:Text(
                          "**** **** **** 1990",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:18,
                          )

                        )
                      ),

                  ]
                )
              )
            ),
            Expanded(
              flex:1,
              child:Container(
                color:const Color.fromARGB(255,16,80,98),
                child:Padding(
                  padding:const EdgeInsets.symmetric(horizontal:16.0),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text(
                            'Anabella Angella',
                            style:TextStyle(
                              fontSize:17,
                              fontWeight:FontWeight.bold,
                              color:Colors.white,
                            )
                          ),
                          Text(
                            '9/24',
                            style:TextStyle(
                              fontSize:10,
                              fontWeight:FontWeight.bold,
                              color:Colors.grey,
                            )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children:[
                          CircleAvatar(
                            radius:15,
                            backgroundColor:Colors.white.withOpacity(0.8),
                          ),
                          Transform.translate(
                            offset:const Offset(-10,0),
                            child:CircleAvatar(
                              radius:15,
                              backgroundColor:Colors.white.withOpacity(0.8)
                            )
                          )
                        ]
                      )
                    ]
                  )
                )
              )
            ),

          ]
        )
       )

      );
    }
}