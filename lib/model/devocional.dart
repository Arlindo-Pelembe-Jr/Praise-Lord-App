class Devocional{

  // Devocional(this._id,this._categoria,this._tema,this._mensagem,this._autor);
    Devocional(this._subtitulo,this._imgTopo,this._mensagem,this._imgBottom);


  //  String _id;
  //  String _tema;
   String _subtitulo;
   String _mensagem;
   String _imgTopo;
   String _imgBottom;
  //  String _autor;
  //  String _categoria;

   
  //  String get id => _id;
  //  set id (String id)=>this._id=id;

  //  String get categoria => _categoria;
  //  set categoria (String categoria)=>this._categoria=categoria;

  //  String get tema => _tema;
  //  set tema (String tema)=>this._tema=tema;
   String get subtitulo => _subtitulo;
   set subtitulo (String titulo)=>this._subtitulo=subtitulo;
   String get mensagem => _mensagem;
   set mensagem (String mensagem)=>this._mensagem=mensagem;
    String get imgTop => _imgTopo;
   set imgTop (String imgTop)=> this._imgTopo=imgTop;
   String get imgBottom => this._imgBottom;
   set imgBottom (String imgBottom)=>this._imgBottom=imgBottom;

  //  String get autor => _autor;
  //  set autor (String autor)=>this._autor=autor;
 
   Devocional.map(dynamic obj){
    //  this._id       = obj['id'];
    //  this._categoria     = obj['categoria'];
    //  this._tema     = obj['tema'];
     this._subtitulo = obj['subtitulo'];
     this._imgTopo = obj['image_top'];
     this._mensagem = obj['mensagem'];
     this._imgBottom = obj['image_bottom'];

    //  this._autor    = obj['autor'];
   }
   Map<String,dynamic> toMap(){

     var map = Map<String,dynamic>();
    //  if(_id != null){
      //  map['id'] = _id;
    //  }
    //  map['tema'] = _tema;
    //  map['categoria'] = _categoria;
     map['subtitulo'] = _subtitulo;
     map['image_top'] = _imgTopo;
     map['mensagem']  = _mensagem;
     map['image_bottom'] = _imgBottom;
    //  map['autor'] = _autor;

     return map;
   }

   Devocional.fromMap(Map<String,dynamic> map,String id){
    //  this._id       = id ?? ' ';
    //  this._tema     = map['tema'];
    //  this._categoria     = map['categoria'];
     this._subtitulo = map['subtitulo'];
     this._imgTopo = map['image_top'];   
     this._mensagem = map['mensagem'];
     this._imgBottom = map['image_bottom'];

    //  this._autor    = map['autor'];
   }
}


// class Customer {
//     int id;
//     String firstName;
//     String lastName;
//     String email;

//     Customer({
//         this.id,
//         this.firstName,
//         this.lastName,
//         this.email,
//     });

//     int get id => id;
//     String get firstName => firstName;
//     String get lastName => lastName;
//     String get email => email;


//     factory Customer.fromJson(Map<String, dynamic> data) => new Customer(
//         id: data["id"],
//         firstName: data["first_name"],
//         lastName: data["last_name"],
//         email: data["email"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "first_name": firstName,
//         "last_name": lastName,
//         "email": email,
//     };
// }