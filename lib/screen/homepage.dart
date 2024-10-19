import 'package:cv_homework/utilit/sspase.dart';
import 'package:cv_homework/wedgits/leftcontiner.dart';
import 'package:cv_homework/wedgits/rightcontiner.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
 final String name;
 String jop;
  dynamic tel;
  dynamic mail;
   MyHomePage({super.key,required this.name,required this.jop,required this.tel,required this.mail});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
     // appBar: AppBar(title: Text('My CV'),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:   const Color(0xFFE3E3E3),
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.005,top: MediaQuery.of(context).size.height*0.005),
        child: Container(
          height: MediaQuery.of(context).size.height*0.99,
          width: MediaQuery.of(context).size.width*0.99,
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.005),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Leftsec(name:widget.name, jop: widget.jop, tel: widget.tel, mail: widget.mail ,),
              const SizedBox(width: 5),
              const Rightcontiner()
          
            ],
          ),
        ),
      ),
    );
  }
}
