import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/devocional_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EvangelhoService{


    CollectionReference<Map<String, dynamic>> devocional = FirebaseFirestore.instance.collection(evangelhoCollection);

 

    Future<void> addEvangelho(DevocionalModel devocionalModel) async {
      await devocional
            .add(devocionalModel.toJson())
            .then((value) => print('Evangelho Adicionado'))
            .catchError((error) => print('Falha ao Adiconar $error'));
  }
Stream<QuerySnapshot<Map<String,dynamic>>> getEvangelhoStream(){
  return devocional.snapshots(includeMetadataChanges: true);
}

List<DevocionalModel> getEvangelho(QuerySnapshot<Map<String,dynamic>> snapshot, String data){
  List<DevocionalModel> devocional = [];


  snapshot.docs.forEach((DocumentSnapshot doc) {  
    if(doc['categoria'] == data){
      DevocionalModel devocionalModel = DevocionalModel.fromJson(doc.data());
      devocional.add(devocionalModel);
      
    }
  });
  return devocional.toSet().toList();
}

List<DevocionalModel> getEvangelho2(List<QueryDocumentSnapshot<Map<String,dynamic>>> snapshot, String data){
  List<DevocionalModel> devocional = [];
   DevocionalModel devocionalModel;
           snapshot.map((DocumentSnapshot e) {
                              print('service: '+e['categoria'].toString());
               if(e['categoria'] == data){
                 print('service: '+e['categoria']);
                //  for(int i=0; i <= e.data().length; i++){ 
      /*DevocionalModel*/ devocionalModel = DevocionalModel.fromJson(e.data());

                 }
      devocional.add(devocionalModel);
      
    // }
          });

  // snapshot.docs.forEach((doc) {  
  //   if(doc['categoria'] == data){
  //     DevocionalModel devocionalModel = DevocionalModel.fromJson(doc.data());
  //     devocional.add(devocionalModel);
      
  //   }
  // });
  return devocional.toSet().toList();
}
}