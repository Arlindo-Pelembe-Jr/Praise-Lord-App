import 'package:intl/intl.dart';

import 'package:Praise_Lord/model/devocional_model.dart';
import 'package:Praise_Lord/services/devocional_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class PagePost extends StatefulWidget {
  @override
  _PagePostState createState() => _PagePostState();
}


class _PagePostState extends State<PagePost> {

  TextEditingController _controllerTitulo = TextEditingController();
  // TextEditingController _controllerSubTitulo = TextEditingController();
  // TextEditingController _controllerImgTop = TextEditingController();
  // TextEditingController _controllerImgBottom = TextEditingController();
  TextEditingController _controllerMsg=TextEditingController();
  TextEditingController _controllerAutor= TextEditingController();
  String mensagem;
  DevocionalModel devocionalModel = DevocionalModel();
  DevocionalService devocionalService = new DevocionalService();
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar( 
        title: Text('Devocional Post'),
        ),
     body: Stack(
       children: [
          Container(
            child: Positioned(
               top: MediaQuery.of(context).viewInsets.top,
               left: 0,
               right: 0,
               child: Container(
                 decoration: BoxDecoration(color: Colors.grey),
                 height: 50,
                 child: ButtonBar( 
                   children: [ 
                      ElevatedButton( 
                  onPressed: (){
                 
                 
                   this._controllerMsg.text+='<b>  </b>';
                  },  
                  child: Text('Bold'),
                  ),
                  //  ElevatedButton( 
                  // onPressed: (){
                  // this._controllerMsg.text+='<link href="https://flutter.dev">link</link>';

                  // },  
                  // child: Text('Link'),
                  // ),
                  //   ElevatedButton( 
                  // onPressed: (){
                  // //this._controllerMsg.text+='<link href="https://">link</link>';

                  // },  
                  // child: Icon(Icons.image),
                  // ),
                   ],
                   ),
               ),
               ),
          ),
         Container(
                    height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.fromLTRB(8, MediaQuery.of(context).size.height/12, 8, 0),

           child: ListView( 
             padding: EdgeInsets.all(10),
             children: <Widget>[ 
                 
             TextField( 
               controller: this._controllerTitulo,
               decoration: InputDecoration(  
                 labelText: 'Titulo',
               ),
               onChanged: (val){

                //  mensagem =val;
               },
             ),
            //  SizedBox(height: 15,),
            //    TextField( 
            //    controller: this._controllerImgTop,
            //    decoration: InputDecoration(  
            //      labelText: 'Imagem Topo',
            //    ),
            //    onChanged: (val){

            //     //  mensagem =val;
            //    },
            //  ),
             SizedBox(height: 15,),
            //   TextField( 
            //    controller: this._controllerSubTitulo,
            //    decoration: InputDecoration(  
            //      labelText: 'Subtitulo',
            //    ),
            //    onChanged: (val){

            //     //  mensagem =val;
            //    },
            //  ),
            //  SizedBox(height: 15,),

             TextField( 
               keyboardType: TextInputType.multiline,
               controller: this._controllerMsg,
               maxLines: null,
               decoration: InputDecoration(  
                 labelText: 'Mensagem',
                 border: OutlineInputBorder(),
               ),
                onChanged: (val){
                 val =mensagem;
                //  mensagem =val;
               },
             ),
            //  SizedBox(height: 15,),
            //    TextField( 
            //    controller: this._controllerImgBottom,
            //    decoration: InputDecoration(  
            //      labelText: 'Imagem a Baixo',
            //    ),
            //    onChanged: (val){

            //     //  mensagem =val;
            //    },
            //  ),
             SizedBox(height: 15,),
             TextField( 
               controller: this._controllerAutor,
               decoration: InputDecoration(  
                 labelText: 'Autor',
               ),
             ),
             SizedBox(height: 50,),
             ButtonBar( 
              children: [ 
                  //  ElevatedButton( 
                  // onPressed: (){

                  // },  
                  // child: Text('Adicionar Campos'),
                  // ),
                  ElevatedButton( 
                  onPressed: ()async{
                    devocionalModel.setTitulo(this._controllerTitulo.text);
                    devocionalModel.setMensagem(this._controllerMsg.text);
                    devocionalModel.setAutor(this._controllerAutor.text);
                    devocionalModel.setCategoria('Devocional Diario');
                      String formattedDate = DateFormat.yMd().format( DateTime.now());
                
                    devocionalModel.setData(formattedDate);
                    await devocionalService.addDevocional(devocionalModel);
                    Navigator.pop(context);

                  },  
                  child: Text('Post'),
                  ),

              ],
             ),
             
             ],
           ),
         ),
      
       ],
     ),
    );
  }

  Future<void> addDevo(){
  CollectionReference devocional = FirebaseFirestore.instance.collection('devocionais_diarios');
         return devocional.doc('devocional')
          .set({
            'tema'     : _controllerTitulo.text,
            'mensagem' : _controllerMsg.text,
            'autor'    : _controllerAutor.text})
          .then((value) {
                Navigator.pop(context);
            // ignore: deprecated_member_use
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Devocional publicado"),));

          }) 
          .catchError((error){
          // Scaffold.of(context).showSnackBar(SnackBar(content: Text("Devocional publicado"),));
             AlertDialog( 
               title: Text('Falha ao Adicionar'),
               content: Text('$error'),
               actions: [ 
                 ElevatedButton( 
                   onPressed: ()=> Navigator.pop(context), 
                   child: Text('Cancel'),
                   ),
                   ElevatedButton( 
                   onPressed: ()=> Navigator.pop(context), 
                   child: Text('Ok'),
                   ), 
               ],
             );
          });
  }
}