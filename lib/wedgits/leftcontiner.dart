import 'package:cv_homework/utilit/sspase.dart';
import 'package:cv_homework/utilit/textstyle.dart';
import 'package:flutter/material.dart';

class Leftsec extends StatefulWidget {

 String name;
 String jop;
  dynamic tel;
  dynamic mail;
   Leftsec({super.key,required this.name,required this.jop,required this.tel,required this.mail});
 
  @override
  
  State<Leftsec> createState() => _LeftsecState();
}

class _LeftsecState extends State<Leftsec> {
 

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:EdgeInsets.only(top: spase.spase_h(context,0.003), left:spase.spase_w(context,0.03)),
      height: MediaQuery.of(context).size.height*0.98,
          width: MediaQuery.of(context).size.width*0.47,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 248, 248),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
      ),
      child: ListView(
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: spase.spase_h(context,0.13),
                width: spase.spase_w(context,0.08),
                margin:EdgeInsets.only(left: spase.spase_w(context,0.03),) ,
                child:  ClipOval(
                  child: Image.asset(fit: BoxFit.cover,
                      "images/log.jpeg"),
                ),),
                        Text('${widget.name}',style: Apptextstyle.maintitle),
                        Text('${widget.jop}',style:Apptextstyle.normaltext),
                        spase.size_h(context,0.02),
                        Text("Call: ${widget.tel}",style:Apptextstyle.normaltext),
                        Text("Email: ${widget.mail}",style:Apptextstyle.normaltext),
                        spase.size_h(context,0.02),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: medialinls(context, "ezzy@tiktok", "ezzy@facebook", "ezzy@integration", "ezzy@snapchat"),
                        ),
                        spase.size_h(context,0.02),
                        //SizedBox(height:  MediaQuery.of(context).size.height*0.02),
                        Text("Skills",style: Apptextstyle.suptitle,),
                        skilsw(context,'SQl Server DB',8),
                         skilsw(context,'Oracle Db',7),
                         skilsw(context,'Flutter',5),
                         skilsw(context,'Asp.net ',3),
                          skilsw(context,'C# ',3),
                        
                       spase.size_h(context,0.02),
                        Text("Education",style: Apptextstyle.suptitle,),
                       spase.size_h(context,0.02),
                        Text("2022 . Presdent",style: Apptextstyle.normaltext,),
                        Text("YemenSoft Head Office",style: Apptextstyle.supsuptitle),
                        Text("2016 . 2022",style: Apptextstyle.normaltext,),
                        Text("YemenSoft Damar Branch",style: Apptextstyle.supsuptitle,),
                        spase.size_h(context,0.02),
                        Text("Certificate",style: Apptextstyle.suptitle,),
                       spase.size_h(context,0.02),
                        Text("2011 - 2015 ",style: Apptextstyle.normaltext,),
                        Text("Baclareose of Information Technology From ",style: Apptextstyle.supsuptitle,),
                        Text("From Damar Univeresity",style: Apptextstyle.normaltext,),
            ],
          ),
        ],
      ),);
  }
}

Widget medialinls(dynamic context, tiktok,dynamic facebook ,dynamic integration,dynamic snapchat){
 return Container(   //color: Colors.red,
     height: spase.spase_h(context, 0.05),
     width:  spase.spase_w(context, 0.35),
    child: ListView(scrollDirection: Axis.horizontal,
      children: [   
             const Icon(Icons.tiktok),Text(tiktok),
             spase.size_w(context, 0.01),
             const Icon(Icons.facebook), Text(facebook),
             spase.size_w(context, 0.01),
             const Icon(Icons.integration_instructions_sharp), Text(integration),
             spase.size_w(context, 0.01),
             const Icon(Icons.snapchat_sharp), Text(snapchat),
    ],));

}
Widget skilsw(dynamic context ,dynamic skilname ,dynamic starcount ){
  return  Row(
           children: <Widget>[
             Container(width: spase.spase_w(context, 0.09),child: Text(skilname)),
             spase.size_h(context, 0.02),
            star(context,starcount)
           ],
                    );


}

Widget star(dynamic context ,dynamic starcount){

 return  Container( 
     width: spase.spase_w(context,0.15),
    height: spase.spase_h(context,0.02),
   child: ListView.builder(itemBuilder: (context, index) {
            if(index < starcount){
              return    const Icon(Icons.circle,size: 10);
            }
            else
            {
              return    const Icon(Icons.circle,size: 10,color: Colors.grey,);
            }
               },itemCount: 10,scrollDirection: Axis.horizontal,),
 );
}