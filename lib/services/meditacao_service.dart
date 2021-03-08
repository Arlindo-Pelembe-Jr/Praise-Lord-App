import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/devocional.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MeditacaoService{

 CollectionReference meditacao = FirebaseFirestore.instance.collection(meditacaoCollection);

 Stream<QuerySnapshot> getMeditacaoStream(){
   return meditacao.snapshots(includeMetadataChanges: true);
 }


List<String> getTitulo(QuerySnapshot snapshot){
  List<String> titulo = [];

  snapshot.docs.forEach((doc) {
    if(doc['categoria'] !=null){
      titulo.add(doc['categoria']);
      print('titulo'+titulo.toList().toString());
    }
   });
   return titulo;
}

List<Devocional> geMeditacao(QuerySnapshot snapshot,String categoria){
  List<Devocional> meditacao = [];
  
  snapshot.docs.forEach((doc) {
    if(doc['categoria'] == categoria){
      Devocional devocional = Devocional.fromMap(doc.data(),doc.id);
      meditacao.add(devocional);
      print('data ${meditacao.toList().toString()}');
    }
   });
   return meditacao.toSet().toList();
}





}