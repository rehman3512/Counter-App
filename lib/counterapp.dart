import 'package:flutter/material.dart';

class counterapp extends StatefulWidget {
  const counterapp({super.key});

  @override
  State<counterapp> createState() => _counterappState();
}

class _counterappState extends State<counterapp> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.exposure,color: Colors.white,size: 30,),
        title: Text("Counter App", style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 30,
          color: Colors.white,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          FloatingActionButton(onPressed: (){
            count++;
            setState(() {

            });
          },backgroundColor: Colors.deepPurple,
            child: Icon(Icons.exposure_plus_1,color: Colors.white,),),
          FloatingActionButton(onPressed: (){
            if(count>0)
            {
              count--;
            }
            setState(() {

            });
          },backgroundColor: Colors.deepPurple,
            child: Center(child: Icon(Icons.exposure_minus_1,color: Colors.white,)),),
          FloatingActionButton(onPressed: (){
            count=0;
            setState(() {

            });
          },backgroundColor: Colors.deepPurple,
            child: Center(child: Icon(Icons.refresh,color: Colors.white,)),),
        ],),
        SizedBox(height: 40,),
        Text("Counting = $count",style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold,),),
      ],),
      
    );
  }
}
