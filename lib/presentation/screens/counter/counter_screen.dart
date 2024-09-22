import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0; 
  String clicks="Clicks";
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
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
        floatingActionButton: FloatingActionButton(
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
        );
  }
}
