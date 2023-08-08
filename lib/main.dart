import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeactivity(),
    );
  }

}
class Homeactivity extends StatelessWidget{
  const Homeactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
     body: LayoutBuilder(
       builder:(BuildContext context,BoxConstraints constraints){
         if(constraints.maxWidth>600){
           return Container(height: 300,width: 200,color: Colors.indigo,);
         }
         else{
           return Container(height: 200,width: 100,color: Colors.cyan,);
         }

       },
     ),
    );
  }

}