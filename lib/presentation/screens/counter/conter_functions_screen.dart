import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0; 
  String clicks="Clicks";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Counter functions"),
        // leading: IconButton(
        //   onPressed: (){}, 
        //   icon: const Icon(Icons.refresh_rounded),
        //   ),
        actions: [
          IconButton(
           onPressed: (){
            setState(() {
              clickCounter=0;
            });
           }, 
           icon: const Icon(Icons.refresh_rounded),),
        ],
      ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children:  [
              Text(clickCounter.toString(),   style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
              Text(clicks, style: const TextStyle( fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
            shape : const StadiumBorder(),
          onPressed: (){
            setState(() {
              clickCounter =0; 
            });
          }, 
          child: const Icon(Icons.refresh_outlined),),
          const SizedBox( height: 10,),
            FloatingActionButton(
            shape : const StadiumBorder(),
          onPressed: (){
            clickCounter ++;
            if(clickCounter==1){
              clicks="Click";
            }else{
              clicks="Clicks";
            }
            setState(() {});
          }, 
          child: const Icon(Icons.plus_one),),
          const SizedBox( height: 10,),
          FloatingActionButton(
            shape : const StadiumBorder(),
          onPressed: (){
            if(clickCounter==0) return;
            clickCounter --;
            if(clickCounter==1){
              clicks="Click";
            }else{
              clicks="Clicks";
            }
            setState(() {});
          }, 
          child: const Icon(Icons.exposure_minus_1_outlined),),
          ],
        )
        );
  }
}
