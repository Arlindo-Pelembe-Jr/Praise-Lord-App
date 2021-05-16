import 'dart:io';

import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/devocional_model.dart';
import 'package:Praise_Lord/pages/page_post.dart';
import 'package:Praise_Lord/pages/view.dart';
import 'package:Praise_Lord/services/evangelho_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EvagelhoPage extends StatefulWidget {
  String categoria;
  EvagelhoPage({this.categoria});
  @override
  _EvagelhoPageState createState() => _EvagelhoPageState();
}

class _EvagelhoPageState extends State<EvagelhoPage> {
  EvangelhoService service = new EvangelhoService();
    List<DevocionalModel> list=[]; List<String> categoria=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( 
        children: [
             Image.asset(
               backgroundImage,
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               fit: BoxFit.cover,
              ),
                Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Container(
                    // color: Colors.white12,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 500),
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              // ignore: deprecated_member_use
                            FlatButton(
                            onPressed: () => Navigator.pop(context),
                            child: Icon(
                              Platform.isIOS
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_back,
                              color: Colors.white,
                            )),
                            // ignore: deprecated_member_use
                            FlatButton(
                            onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PagePost(categoria: 'Evangelho',)));

                            },
                            child: Icon(Icons.add,
                              color: Colors.white,
                            )),
                          ],
                        ),
                      
                  ),
                   
                        Container( 
                    height: MediaQuery.of(context).size.height,
                    // margin: EdgeInsets.fromLTRB(18, MediaQuery.of(context).size.height/17, 18, 0),

                    child: Center(
                      child:  StreamBuilder<QuerySnapshot<Map<String,dynamic>>>( 
                               stream: service.getEvangelhoStream(),
                               builder: (context,snapshot){
                                 if(!snapshot.hasData) return Center(child: Text('Sem dados'),);
                                 if(snapshot.hasData){
                                   list = service.getEvangelho(snapshot.data, widget.categoria);
                                   print('detail'+categoria.toList().toString());
                                  //  list = service.geMeditacao(snapshot.data, widget.categoria);
                                   return ListView.builder(
                                     itemCount: list.length,
                                     itemBuilder: (context,index){
                                       return Column(
                                         children: [
                                           GestureDetector(
                                                child: Container(
                                                    width: MediaQuery.of(context).size.width/1.2,
                                                    padding: EdgeInsets.all(8),
                                                    decoration: BoxDecoration( 
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(8),
                                                ),
                                               child: Text(list[index].titulo),
                                                 
                                               
                                             ),
                                             onTap: (){
                                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ReaderPage(list[index].titulo, '',list[index].mensagem+'\n\n Autor: '+list[index].autor)));

                                                //  print('categoria'+list[index].categoria);
                                                //  print('tema'+list[index].tema);
                                                 print('mensagem:'+list[index].mensagem);
                                                //  print('autor'+list[index].autor);
                                               },
                                           ),
                                              SizedBox(height: 8,),

                                         ],
                                       );
                                     },
                                     );
 
                                 }
                                 return Center(child: CircularProgressIndicator(),);
                               },
                              ),
                    ),
                        ),
                    ],
                    ),
                ),
              ),
        ],
        ),
    );
  }
}

// StreamBuilder<QuerySnapshot<Map<String,dynamic>>>( 
//                                stream: service.getEvangelhoStream(),
//                                builder: (context,snapshot){
//                                  if(!snapshot.hasData) return Center(child: Text('Sem dados'),);
//                                  if(snapshot.hasData){
//                                    list = service.getEvangelho(snapshot.data, widget.categoria);
//                                    print('detail'+categoria.toList().toString());
//                                   //  list = service.geMeditacao(snapshot.data, widget.categoria);
//                                    return ListView.builder(
//                                      itemCount: list.length,
//                                      itemBuilder: (context,index){
//                                        return Column(
//                                          children: [
//                                            GestureDetector(
//                                                 child: Container(
//                                                     width: MediaQuery.of(context).size.width/1.2,
//                                                     padding: EdgeInsets.all(8),
//                                                     decoration: BoxDecoration( 
//                                                     color: Colors.blue,
//                                                     borderRadius: BorderRadius.circular(8),
//                                                 ),
//                                                child: Text(list[index].titulo),
                                                 
                                               
//                                              ),
//                                              onTap: (){
//                                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ReaderPage(list[index].titulo, '',list[index].mensagem+'\n\n Autor: '+list[index].autor)));

//                                                 //  print('categoria'+list[index].categoria);
//                                                 //  print('tema'+list[index].tema);
//                                                  print('mensagem:'+list[index].mensagem);
//                                                 //  print('autor'+list[index].autor);
//                                                },
//                                            ),
//                                               SizedBox(height: 8,),

//                                          ],
//                                        );
//                                      },
//                                      );
 
//                                  }
//                                  return Center(child: CircularProgressIndicator(),);
//                                },
//                               ),