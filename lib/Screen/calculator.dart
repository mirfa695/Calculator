import 'package:calculator/Screen/Operations.dart';
import 'package:calculator/Screen/customWidget/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
   Calculator({Key? key}) : super(key: key);
  final controller1=TextEditingController();
  final controller2=TextEditingController();

  @override
  State<Calculator> createState() => _CalculatorState();
  num? result=0;
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/H8WuRINimqur8ud/numbers-white-background_hirz2gth_thumbnail-1080_01.png'),fit: BoxFit.cover)),
    child: Scaffold(
      appBar: AppBar(title: const Text('Calculator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Apple'),),centerTitle: true,backgroundColor: Colors.black.withOpacity(.4),),
      backgroundColor: Colors.transparent,
      body: Center(
          child: Container(height: 580,width: 330,decoration: BoxDecoration(color: Colors.black.withOpacity(.4),borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,right: 5,left: 5),
            child: Column(
              children: [
                textField(text: 'Enter First number', con: widget.controller1),
                const SizedBox(height: 10,),
                textField(text: 'Enter Second number', con: widget.controller2),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      double number1=double.parse(widget.controller1.text);
                      double number2=double.parse(widget.controller2.text);
                      var val=Values(num1: number1,num2: number2);
                      setState(() {
                        widget.result=val.add();
                      });
                    }, child: const Text('Add')),
                    ElevatedButton(onPressed: (){
                      double number1=double.parse(widget.controller1.text);
                      double number2=double.parse(widget.controller2.text);
                      var val=Values(num1: number1,num2: number2);
                      setState(() {
                        widget.result=val.sub();
                      });
                    }, child: const Text('Sub')),
                    ElevatedButton(onPressed: (){
                      double number1=double.parse(widget.controller1.text);
                      double number2=double.parse(widget.controller2.text);
                      var val=Values(num1: number1,num2: number2);
                      setState(() {
                        widget.result=val.mult();
                      });
                    }, child: const Text('Miltiply')),
                    ElevatedButton(onPressed: (){
                      double number1=double.parse(widget.controller1.text);
                      double number2=double.parse(widget.controller2.text);
                      var val=Values(num1: number1,num2: number2);
                      setState(() {
                        widget.result=val.divide();
                      });
                    }, child: const Text('Divide'))
                  ],
                ),
                const SizedBox(height: 30,),
                Container(height: 50,width: 250,decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5)
                ),child: Center(child: Text(widget.result.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)),)
              ],
            ),
          ),)
      ),
    ),);
  }
}
