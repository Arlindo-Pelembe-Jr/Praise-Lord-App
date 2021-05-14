import 'package:flutter/material.dart';
// import 'package:Praise_Lord/model/devocional.dart';

class DevocionalModel extends ChangeNotifier{

   DevocionalModel();
  //  DevocionalModel(this._id,this._titulo,/*this._devocional,*/this._autor,this._categoria,this._data);

   String _id;
   String _titulo;
  //  List<Devocional> _devocional;
   String _mensagem;

   String _autor;
   String _categoria; 
   String _data; 



      String get id => _id;

   setId (String id) {
     this._id=id;
     notifyListeners();
     } 

   String get categoria => _categoria;
   setCategoria (String categoria){
     this._categoria=categoria;
    notifyListeners();
   }

   String get titulo => _titulo;
   setTitulo (String titulo){ 
     this._titulo=titulo;  
     notifyListeners();
     }
       String get mensagem => _mensagem;
   setMensagem (String mensagem){ 
     this._mensagem=mensagem;  
     notifyListeners();
     }
      String get autor => _autor;
   setAutor (String autor){ 
     this._autor=autor;
     notifyListeners();
     }

    //  List<Devocional> get devocional => _devocional;
    //  set devocional(List<Devocional> obj){
    //    this._devocional = obj;
    //    notifyListeners();
    //  }

      String get data => _data;
   setData (String data){ 
     this._data=data;
     notifyListeners();
     }


     DevocionalModel.fromJson(Map<String,dynamic> json){
       _id = json['id'];
       _titulo = json['titulo'];
       _mensagem = json['mensagem'];

      //  if(json['devocional'] != String){
      //    _devocional = [];
      //    json['devocional'].forEach( (v) {
      //       _devocional.add(new Devocional.fromMap(v, ' '));
      //    });
      //  }
       _autor = json['autor'];
       _categoria = json['categoria'];
       _data = json['data'];

     }

     Map<String,dynamic> toJson(){
       final Map<String,dynamic> data = new Map<String,dynamic>();
       data['id'] = _id ?? '';
       data['titulo'] = _titulo;
       data['mensagem'] = _mensagem;

       // ignore: unrelated_type_equality_checks
      //  if(this._devocional != String){
      //    data['devocional'] = this._devocional.map((v) => v.toMap()).toList();
      //  }
       data['autor'] = _autor;
       data['categoria'] = _categoria;
       data['data'] = _data;
       return data;
     }
}