import 'package:flutter/material.dart';
import 'widgets/calculatorbutton.dart';


void main() {
  runApp(calculatorapp());
}











class calculatorapp extends StatefulWidget {
  const calculatorapp({Key? key}) : super(key: key);

  @override
  _calculatorappState createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {
   int? firstNum;
   int? secondNum;
  String? history='';
  String? textToDisplay='';
  String?  res;
  String? operation;
  void btnOnClick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      textToDisplay='';
      firstNum =0;
      secondNum=0;
      res='';
    }else if(btnVal=='C'){
      textToDisplay='';
      firstNum =0;
      secondNum=0;
      res='';
      history='';

    }else if(btnVal=='+'|| btnVal=='-' || btnVal=='X' ||btnVal=='/'){
     firstNum=int.parse(textToDisplay!);
     res='';
     operation=btnVal;
    }else if(btnVal=='='){
      secondNum=int.parse(textToDisplay!);
      if(operation=='+'){
        res=(firstNum!+secondNum!).toString();
        history=firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation=='-'){
        res=(firstNum!-secondNum!).toString();
        history=firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation=='X'){
        res=(firstNum!*secondNum!).toString();
        history=firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation=='/'){
        res=(firstNum!/secondNum!).toString();
        history=firstNum.toString()+operation.toString()+secondNum.toString();
      }
    } else{
      res=int.parse(textToDisplay!+btnVal).toString();
    }
     setState(() {
       textToDisplay!=res;
     });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor:Colors.yellow,
        body: Container(
          child: Column( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(padding: EdgeInsets.only(right: 12),
                child: Text(history!,style:TextStyle(fontSize:24,color: Colors.white
                ),
              ),
        ),
                alignment: Alignment(1.0,1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(textToDisplay!,style:TextStyle(fontSize:48,color: Colors.white
                  ) ,
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatorbutton(text:'AC', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick,),
                  calculatorbutton(text:'C', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'<', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick,),
                  calculatorbutton(text:'/', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick,),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatorbutton(text:'9', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'8', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'7', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'X', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatorbutton(text:'6', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'5', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'4', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'-', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatorbutton(text:'3', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'2', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'1', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'+', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calculatorbutton(text:'+/-', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'0', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'00', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),
                  calculatorbutton(text:'=', TextColor:0xFF8ac4d0,fillColor: 0xFF000000,textSize: 25,callback:btnOnClick),

                ],
              ),

  ],
              ),
        ),

      ),
    );
  }
}
