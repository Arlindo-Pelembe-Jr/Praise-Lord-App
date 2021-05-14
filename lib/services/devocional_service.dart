import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/devocional_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DevocionalService{


    CollectionReference devocional = FirebaseFirestore.instance.collection(devocionalCollection);

    Future<void> addDevocional(DevocionalModel devocionalModel) async {
      await devocional
            .add(devocionalModel.toJson())
            .then((value) => print('Devocional Adicionado'))
            .catchError((error) => print('Falha ao Adiconar $error'));
  }

Stream<QuerySnapshot> getDevocionalStream(){
  return devocional.snapshots(includeMetadataChanges: true);
}

List<DevocionalModel> getDevocional(QuerySnapshot snapshot, String data){
  List<DevocionalModel> devocional = [];

  snapshot.docs.forEach((doc) {  
    if(doc['data'] == data){
      DevocionalModel devocionalModel = DevocionalModel.fromJson(doc.data());
      devocional.add(devocionalModel);
      
    }
  });
  return devocional.toSet().toList();
}
}