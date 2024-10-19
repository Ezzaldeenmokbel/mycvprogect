// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:cv_homework/utilit/colors.dart';
import 'package:cv_homework/utilit/sspase.dart';
import 'package:cv_homework/utilit/textstyle.dart';
import 'package:flutter/material.dart';

class Rightcontiner extends StatefulWidget {
  const Rightcontiner({super.key});

  @override
  State<Rightcontiner> createState() => _RightcontinerState();
}

class _RightcontinerState extends State<Rightcontiner> {

  final List<IconData> icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.accessibility,
    Icons.account_balance,
    Icons.account_circle,
    Icons.account_box,
    Icons.airplanemode_active,
    Icons.attach_file,
    Icons.attach_money,
    Icons.audiotrack,
    Icons.beach_access,
    Icons.backup,
    Icons.cake,
    Icons.camera,
    Icons.call,
    Icons.child_friendly,
    Icons.cloud,
    Icons.deck,
    Icons.directions_bike,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
          color: Color.fromARGB(255, 251, 250, 250),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
      ),
      height: spase.spase_h(context,0.98 ),
      width: spase.spase_w(context,0.48 ),
      padding:EdgeInsets.only(top: spase.spase_h(context,0.09),left: spase.spase_w(context,0.03)), 
     // margin:EdgeInsets.only(left: spase.spase_w(context,0.005)), 
       child: ListView(
         children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.auto_awesome_mosaic),
              spase.size_h(context, 0.01),
              Text('AWORDS',style: Apptextstyle.suptitle,),
              spase.size_h(context, 0.02),
              Text("2025",style: Apptextstyle.supsuptitle),
              spase.size_h(context, 0.01),
              Text("World Travel Awards serves to acknowledge, reward and celebrate excellence across"
               "all sectors of the global travel and tourism industry" ,style: Apptextstyle.normaltext),
               spase.size_h(context, 0.01),
                  Text("2026",style: Apptextstyle.supsuptitle),
              spase.size_h(context, 0.01),
              Text("World Travel Awards serves to acknowledge, reward and celebrate excellence across"
               "all sectors of the global travel and tourism industry" ,style: Apptextstyle.normaltext),
               spase.size_h(context, 0.02),
              Text('Expertise',style: Apptextstyle.suptitle,),
              spase.size_h(context, 0.02),
              Row(
                children: [ 
                  const Icon(Icons.circle_rounded, size: 10,),
                  Text("Maintenance the Sql server systems",style: Apptextstyle.normaltext),
                ],
              ),
               spase.size_h(context, 0.01),
                Row(
                children: [ 
                  const Icon(Icons.circle_rounded, size: 10,),
                  Text("Maintenance the Oracle  System ",style: Apptextstyle.normaltext),
                ],
              ),
               spase.size_h(context, 0.01),
                Row(
                children: [ 
                  const Icon(Icons.circle_rounded, size: 10,),
                  Text("Maintenance of wedows and networls ",style: Apptextstyle.normaltext),
                ],
              ),
              spase.size_h(context, 0.03),
            Text("Reference",style: Apptextstyle.suptitle),
            spase.size_h(context, 0.01),
            refernce(context, 'Other Words From', "mis·refer·ence noun", "025449879795984", "bjhbhvjh@gmil.com"),
            spase.size_h(context, 0.03),
             refernce(context, 'Other Words From', "mis·refer·ence noun", "025449879795984", "bjhbhvjh@gmil.com"),
             spase.size_h(context, 0.03),
             Text("Interests",style: Apptextstyle.suptitle),
             Container(  
               height: spase.spase_h(context,0.20),
                      width: spase.spase_w(context,0.40 ),
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                      scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) {
                        return Icon(icons[index]); 
                      }, itemCount: icons.length,),
                      
                      ),
          
          
            ],
           ),
         ],
       ),
      );
  }
}

Widget refernce(dynamic context,dynamic tex1,dynamic tex2,dynamic tel,dynamic email){

  return Column(
    children: [
      Text(tex1,style: Apptextstyle.normaltext,),
      spase.size_h(context, 0.01),
      Text(tex2,style: Apptextstyle.supsuptitle,),
      spase.size_h(context, 0.01),
      Text(tel,style: Apptextstyle.normaltext,),
      spase.size_h(context, 0.01),
      Text(email,style: Apptextstyle.normaltext,),
    ],

  );

}
