import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/pages/page_post.dart';
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
        actions: [
          IconButton(icon:Icon(Icons.add),
         onPressed: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PagePost(categoria: 'Devocional Dia',)));

         },
        
         ),
        ],
      ),
      body:  SingleChildScrollView(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                                        height: MediaQuery.of(context).size.height,

                    child: Center(
                      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection(devocionalCollection)
                                .orderBy('data')
                                .limitToLast(1)
                                .get()
                                .asStream(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return new ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {
                                    Map<String,dynamic> mapa = document.data();
                                        print("devocional day "+mapa['mensagem']);
                      // return new ListTile(
                      //   title: new Text(mapa['titulo']),
                      //   subtitle: new Text(mapa['mensagem']),
                      // );
                      return Column(  
              children: [ 
                // Text('ID: $id'),
                // Divider(height: 5,),
                SizedBox(height: 58,),
                //  StyledText(
                //     text: '${devocional['tema']}',
                //      style: TextStyle( 
                //              fontSize: 22.6,
                //             //  fontWeight: FontWeight.bold,
                //            ),
                //     styles: {
                //       'b': TextStyle(
                //         fontWeight: FontWeight.bold
                //         ),
                //     },
                //   ),
    
                Text(
                  // tema,
                  '${mapa['titulo']}',
                 style: TextStyle( 
                             fontSize: 22.6,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                SizedBox(height: 8,),
                  StyledText(
                    text: """${mapa['mensagem']}""",
                    newLineAsBreaks: true,
                    style: TextStyle( 
                             fontSize: 20.6,
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
            );
            }).toList(),
          );
        },
    ),
                    ),
                  ),
                ],
              ),
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

//  StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance.collection(devocionalCollection)
//                     .orderBy('data')
//                     .limitToLast(1)
//                     .get()
//                     .asStream(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text('Something went wrong');
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Text("Loading");
//         }
//         return new ListView(
//           children: snapshot.data.docs.map((DocumentSnapshot document) {
//                         Map<String,dynamic> mapa = document.data();
//                             print("devocional day "+mapa['mensagem']);
//             return new ListTile(
//               title: new Text(mapa['titulo']),
//               subtitle: new Text(mapa['mensagem']),
//             );
//           }).toList(),
//         );
//       },
//     ),


// Column(  
//               children: [ 
//                 // Text('ID: $id'),
//                 // Divider(height: 5,),
//                 // SizedBox(height: 8,),
//                 //  StyledText(
//                 //     text: '${devocional['tema']}',
//                 //      style: TextStyle( 
//                 //              fontSize: 22.6,
//                 //             //  fontWeight: FontWeight.bold,
//                 //            ),
//                 //     styles: {
//                 //       'b': TextStyle(
//                 //         fontWeight: FontWeight.bold
//                 //         ),
//                 //     },
//                 //   ),
//                 StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance.collection(devocionalCollection)
//                     .orderBy('data')
//                     .limitToLast(1)
//                     .get()
//                     .asStream(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text('Something went wrong');
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Text("Loading");
//         }
//         return new ListView(
//           children: snapshot.data.docs.map((DocumentSnapshot document) {
//                         Map<String,dynamic> mapa = document.data();

//             return new ListTile(
//               title: new Text(mapa['titulo']),
//               subtitle: new Text(mapa['mensagem']),
//             );
//           }).toList(),
//         );
//       },
//     ),
//                 Text(
//                   // tema,
//                   '${devocional['tema']}',
//                  style: TextStyle( 
//                              fontSize: 22.6,
//                              fontWeight: FontWeight.bold,
//                            ),
//                            ),
//                 SizedBox(height: 8,),
//                   StyledText(
//                     text: """${devocional['mensagem']}""",
//                     newLineAsBreaks: true,
//                     style: TextStyle( 
//                              fontSize: 20.6,
//                             //  fontWeight: FontWeight.bold,
//                            ),
//                     styles: {
//                       'b': TextStyle(
//                         fontWeight: FontWeight.bold
//                         ),
//                     },
//                   ),
//                 // Divider(height: 5,),
//                 // Text(
//                 //   // mensagem,
//                 //   '${devocional['tema']}',
//                 //    style: TextStyle( 
//                 //              fontSize: 18.6,
//                 //             //  fontWeight: FontWeight.bold,
//                 //            ),
//                 //            ),
//                 SizedBox(height: 8,),
//                 // Divider(height: 5,),
//                 Text(
//                   //  'Autor: $autor',
//                   'Autor: ${devocional['autor']}',
//                    style: TextStyle( 
//                              fontSize: 16.6,
//                             //  fontWeight: FontWeight.bold,
//                            ),
//                   )
//               ],
//             ),