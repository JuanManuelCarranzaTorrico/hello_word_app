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
            CustomButton(
              icon: Icons.plus_one,
              onPressed: (){
            clickCounter++;
            setState(() {});
              },),
          const SizedBox( height: 10,),
            CustomButton(icon: Icons.exposure_minus_1_outlined,
            onPressed: (){
              if(clickCounter==0) return;
            clickCounter --;
            setState(() {});
            },),
          const SizedBox( height: 10,
          ),
          CustomButton( icon: Icons.refresh_outlined,
          onPressed: (){
            clickCounter=0;
            setState(() {
            clickCounter=0;
            });
          },),
          ],
        )
        );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape : const StadiumBorder(),
    onPressed: onPressed,
    child:  Icon(icon),);
  }
}
