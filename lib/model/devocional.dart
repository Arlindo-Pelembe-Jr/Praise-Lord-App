class Devocional{

  Devocional(this._id,this._tema,this._mensagem,this._autor);

   String _id;
   String _tema;
   String _mensagem;
   String _autor;

   
   String get id => _id;
   set id (String id)=>this._id=id;

   String get tema => _tema;
   set tema (String tema)=>this._tema=tema;

   String get mensagem => _mensagem;
   set mensagem (String mensagem)=>this._mensagem=mensagem;

   String get autor => _autor;
   set autor (String autor)=>this._autor=autor;
 
   Devocional.map(dynamic obj){
     this._id       = obj['id'];
     this._tema     = obj['tema'];
     this._mensagem = obj['mensagem'];
     this._autor    = obj['autor'];
   }
   Map<String,dynamic> toMap(){

     var map = Map<String,dynamic>();
     if(id != null){
       map['id'] = _id;
     }
     map['tema'] = _tema;
     map['mensagem'] = _mensagem;
     map['autor'] = _autor;

     return map;
   }

   Devocional.fromMap(Map<String,dynamic> map,String id){
     this._id       = id ?? ' ';
     this._tema     = map['tema'];
     this._mensagem = map['mensagem'];
     this._autor    = map['autor'];
   }
}