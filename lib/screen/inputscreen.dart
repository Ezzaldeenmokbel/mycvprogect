import 'package:cv_homework/screen/homepage.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:cv_homework/utilit/sspase.dart';
import 'package:cv_homework/utilit/textstyle.dart';
import 'package:flutter/material.dart';

class Inputscreen extends StatefulWidget {
  const Inputscreen({super.key});

  @override
  State<Inputscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Inputscreen> {
  TextEditingController name=TextEditingController(text: '');
  TextEditingController jop=TextEditingController(text: '');
   TextEditingController tel=TextEditingController(text: '');
  TextEditingController mail=TextEditingController(text: '');
  List personal=[{
    "name":"",
    "email":"",
    "tel_no":"",
    "jop":""
  }];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(child: Text('Enter your Information to Create Your C.V' ,style: Apptextstyle.maintitle,),),
             spase.size_h(context, 0.02),
             myrow(context: context, control1: name, control2: jop, flix1: 2, flix2: 1, label1: 'Name', hint1: 'Enter your Name', 
             label2:'Job title' , hint2: 'Enter your Job title', icon1: Icons.person, icon2: Icons.work),
               spase.size_h(context, 0.02),
             myrow(context: context, control1: tel, control2: mail, flix1: 1, flix2: 1, label1: 'Telphon No', hint1: 'Enter Telphon No', 
             label2:'Email ' , hint2: 'Enter your Email', icon1: Icons.phone, icon2: Icons.mail),
               spase.size_h(context, 0.09),
            Center(
              child: MaterialButton(onPressed: () {
                String yname = name.text;
                dynamic yjop= jop.text;
                dynamic ytel= tel.text;
                dynamic ymail=mail.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(name:  yname, jop:yjop, tel: ytel, mail: ymail ,))
                        );
              }, child: Text('Create',style: Apptextstyle.maintitle,),
                        ),
            )
          ],
        )
      ),
    );
  }
}

Widget myrow( {required BuildContext context,required dynamic control1,required dynamic control2 ,required flix1 ,required flix2 ,required label1 ,
 required hint1,required  label2 , required hint2 ,required icon1 ,required icon2} ){
  return  Row(
              children: [
                Expanded( 
                  flex: flix1,
                  child: TextFormField(  
                                      controller: control1,
                                      decoration: InputDecoration(
                                        
                                        label: Text(label1),
                                        hintText: hint1,
                                        prefixIcon:  Icon(icon1),
                                        border: const OutlineInputBorder()  
                                      )
                                    ),
                ),
                spase.size_w(context, 0.01),
                Expanded( 
                  flex: flix2,
                  child: TextFormField(  
                                      controller: control2,
                                      decoration:  InputDecoration(
                                        
                                        label: Text(label2),
                                        hintText: hint2,
                                        prefixIcon: Icon(icon2),
                                        border: OutlineInputBorder()
                                      
                                    
                                      )
                                    ),
                ),
              ],
            );
}