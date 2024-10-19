import 'package:flutter/cupertino.dart';

class  spase{

    // ignore: non_constant_identifier_names
    static Widget  size_h(dynamic context ,double heigh){ 
    return SizedBox(height:  MediaQuery.of(context).size.height*heigh);
    }

  // ignore: non_constant_identifier_names
  static Widget size_w(dynamic context,double width){ 
    return SizedBox(width:  MediaQuery.of(context).size.width*width);
    }
   
   static double spase_h(dynamic context , double heigh){
        return MediaQuery.of(context).size.height*heigh;
   }
    static double spase_w(dynamic context , double width){
        return MediaQuery.of(context).size.width*width;
   }
  
  
}