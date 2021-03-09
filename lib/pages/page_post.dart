
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class PagePost extends StatefulWidget {
  @override
  _PagePostState createState() => _PagePostState();
}


class _PagePostState extends State<PagePost> {

  TextEditingController _controllerTema = TextEditingController();
  TextEditingController _controllerMsg=TextEditingController();
  TextEditingController _controllerAutor= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Devocional Post'),
        ),
     body: ListView( 
       padding: EdgeInsets.all(10),
       children: <Widget>[ 
       TextField( 
         controller: this._controllerTema,
         decoration: InputDecoration(  
           labelText: 'Tema',
         ),
       ),
       SizedBox(height: 15,),
       TextField( 
         keyboardType: TextInputType.multiline,
         controller: this._controllerMsg,
         maxLines: null,
         decoration: InputDecoration(  
           labelText: 'Mensagem',
           border: OutlineInputBorder(),
         ),
       ),
       TextField( 
         controller: this._controllerAutor,
         decoration: InputDecoration(  
           labelText: 'Autor',
         ),
       ),
       SizedBox(height: 50,),
       ButtonBar( 
        children: [ 
            ElevatedButton( 
            onPressed: addDevo,  
            child: Text('Post'),
            ),
        ],
       ),

       ],
     ),
    );
  }

  Future<void> addDevo(){
  CollectionReference devocional = FirebaseFirestore.instance.collection('devocionais_diarios');
         return devocional.doc('devocional')
          .set({
            'tema'     : _controllerTema.text,
            'mensagem' : _controllerMsg.text,
            'autor'    : _controllerAutor.text})
          .then((value) {
                Navigator.pop(context);
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