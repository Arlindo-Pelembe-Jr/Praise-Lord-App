import 'package:Praise_Lord/utils/notficationPlugin.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:styled_text/styled_text.dart';





class DevocionalDay extends StatefulWidget {
  @override
  _DevocionalDayState createState() => _DevocionalDayState();
}

class _DevocionalDayState extends State<DevocionalDay> {
  Map<String,dynamic> devocional; 
  String tema,mensagem,autor;
  @override
  Widget build(BuildContext context) {
    if(devocional == null){
      devocional = Map();
      downladDevo();
      
    }
    return Scaffold(
      appBar: AppBar(  
        title: Text('Devocional Dia'),
      ),
      body: ListView(  
        padding: EdgeInsets.all(15),
        children: [ 
          // Text('ID: $id'),
          // Divider(height: 5,),
          SizedBox(height: 8,),
           StyledText(
              text: '${devocional['tema']}',
               style: TextStyle( 
                       fontSize: 22.6,
                      //  fontWeight: FontWeight.bold,
                     ),
              styles: {
                'b': TextStyle(
                  fontWeight: FontWeight.bold
                  ),
              },
            ),
          // Text(
          //   // tema,
          //   '${devocional['tema']}',
          //  style: TextStyle( 
          //              fontSize: 22.6,
          //              fontWeight: FontWeight.bold,
          //            ),
          //            ),
          SizedBox(height: 8,),
            StyledText(
              text: """${devocional['mensagem']}""",
              newLineAsBreaks: true,
              style: TextStyle( 
                       fontSize: 22.6,
                      //  fontWeight: FontWeight.bold,
                     ),
              styles: {
                'b': TextStyle(
                  fontWeight: FontWeight.bold
                  ),
              },
            ),
          // Divider(height: 5,),
          // Text(
          //   // mensagem,
          //   '${devocional['tema']}',
          //    style: TextStyle( 
          //              fontSize: 18.6,
          //             //  fontWeight: FontWeight.bold,
          //            ),
          //            ),
          SizedBox(height: 8,),
          // Divider(height: 5,),
          Text(
            //  'Autor: $autor',
            'Autor: ${devocional['autor']}',
             style: TextStyle( 
                       fontSize: 16.6,
                      //  fontWeight: FontWeight.bold,
                     ),
            )
        ],
      ),
    );
  }
 downladDevo(){
 CollectionReference devo = FirebaseFirestore.instance.collection('devocionais_diarios');
  return devo.snapshots(includeMetadataChanges: true).listen((snapshot) {  
    setState(() {
     devocional = snapshot.docs[0].data(); 
     showNotificationWithNoBody();
    //  id = snapshot.docs[1].id;
    });
    
   
  });
 

 }

}