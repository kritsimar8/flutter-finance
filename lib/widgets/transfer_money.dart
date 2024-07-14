import 'package:fintech_app/pages/top_up.dart';
import 'package:fintech_app/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class TransferMoney extends StatelessWidget{
  const TransferMoney({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.outlined(
          onPressed:()=>Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title:const Text("Transfer"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children:[
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text("Choose Card",
                  style:TextStyle(
                    fontSize:18,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                SizedBox(height:12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children:
                     List.generate(3, (index)=> const Padding(
                      padding: const EdgeInsets.symmetric(horizontal:5.0),
                      child:const CreditCard(),
                     )),
                    
                  )
                )
              ]
            ),
            const SizedBox(height:25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                 Text("Choose Recipients",
                  style:TextStyle(
                    fontSize:18,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                const SizedBox(height:25),
                Container(
                  width:double.infinity,
                  height:55,
                  alignment: Alignment.center,
                  decoration:BoxDecoration(color:Colors.grey[100],
                  borderRadius:BorderRadius.circular(12)
                  ),
                  child: TextField(
                    decoration:InputDecoration(hintText:'Search contacts',
                    hintStyle: TextStyle(
                      color:Colors.grey[400],
                    ),
                    border:InputBorder.none,
                    prefixIcon: Icon(Icons.search,
                    size:30
                    )
                    )
                  )
                ),
                const SizedBox(height:25),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Row(
                    children:List.generate(3, (index)=>Padding(
                      padding:const EdgeInsets.all(8.0),
                      child:Container(
                        width:130,
                        height:150,
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                          border:Border.all(
                            color:index ==0?Colors.teal:Colors.grey
                          )

                        ),
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            index==0?
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal:8.0),
                              child:Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children:[
                                  Icon(
                                    Icons.check,
                                    color:Colors.teal,
                                  )
                                ]
                              )
                            )
                            : const SizedBox(),
                          const SizedBox(height:12),
                          const CircleAvatar(
                            radius:20,
                            backgroundImage:AssetImage("assets/person.jpeg"),
                          ),
                          const Text(
                            "Happy",
                            style: TextStyle(fontWeight:FontWeight.bold),
                          ),
                          const Text(
                            "Singh",
                            style: TextStyle(fontWeight:FontWeight.bold),
                          )
                          ]
                        )
                      )
                    ))
                  )
                ),
                const SizedBox(height:50),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> TopUpPage()));
                  },
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.black,
                    foregroundColor:Colors.white,
                    fixedSize:const Size(double.maxFinite,60),
                    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(12)),
                  ),
                  child: const Text(
                    "Continue",
                    style:TextStyle(
                      fontSize:18,
                      fontWeight:FontWeight.bold,
                    )
                  )
                )

              ]
            )

          ]
        )
      )
    );

  }
}