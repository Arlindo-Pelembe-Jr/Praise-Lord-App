import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/devocional_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MeditacaoService{

    CollectionReference<Map<String, dynamic>> meditacao = FirebaseFirestore.instance.collection(meditacaoCollection);




    Future<void> addMediitacao(DevocionalModel devocionalModel) async {
      await meditacao
            .add(devocionalModel.toJson())
            .then((value) => print('Meditacao Adicionado'))
            .catchError((error) => print('Falha ao Adiconar $error'));
  }
List<String> getTitulo(QuerySnapshot<Map<String,dynamic>> snapshot){
  List<String> titulo = [];

  snapshot.docs.forEach((DocumentSnapshot doc) {
    if(doc['categoria'] !=null){
      titulo.add(doc['categoria']);
      print('titulo'+titulo.toList().toString());
    }
   });
   return titulo;
}



Stream<QuerySnapshot<Map<String,dynamic>>> getMeditacaoStream(){
  return  meditacao.snapshots(includeMetadataChanges: true);
}
List<DevocionalModel> getMeditacao(QuerySnapshot<Map<String,dynamic>> snapshot, String data){
  List<DevocionalModel> devocional = [];


  snapshot.docs.forEach((DocumentSnapshot doc) {  
    if(doc['categoria'] == data){
      DevocionalModel devocionalModel = DevocionalModel.fromJson(doc.data());
      devocional.add(devocionalModel);
      
    }
  });
  return devocional.toSet().toList();
}


}