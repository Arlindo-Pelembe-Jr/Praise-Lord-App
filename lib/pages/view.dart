
import 'package:Praise_Lord/model/evangelho.dart';
import 'package:Praise_Lord/model/jesusAguaViva.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailPage1 extends StatefulWidget {
  DetailPage1(this.enumCategoria,this.strCategoria);
  String strCategoria; Categ enumCategoria;
  @override
  _DetailPage1State createState() => _DetailPage1State(this.enumCategoria,this.strCategoria);
}

class _DetailPage1State extends State<DetailPage1> {
  _DetailPage1State(this.verficationeEnum,this.title);
   String title; Categ verficationeEnum;
   EvangelhoRepository evangelhoRepository = new EvangelhoRepository();
     List<Evangelho> evg ;  int count=0;  
     @override
  Widget build(BuildContext context) {
    if(evg == null){
      evg = [];
      _upd();
    }
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        title: Text(
          this.title,
          style: TextStyle( 
            color: Colors.black,
          ),
        ),
      ),
      body: _loadList(),
    );
  }

  _loadList(){
   return ListView.builder(
     itemCount: count,
     itemBuilder: (BuildContext context, int i){
       return Padding( 
          padding: EdgeInsets.all(18.0),
         child:Column(
        children: <Widget>[ 
          SizedBox(height: 1.0,),
          Text(
            evg[i].titulo,
            // textAlign: TextAlign.start,
            style: TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 1.0,),
         _imgSized(evg[i].img),
          SizedBox(height: 1.0,),
          Text(evg[i].subtitulo,
          textAlign: TextAlign.center,
          style: TextStyle( 
       fontWeight: FontWeight.w500,
          ),
          ),
              Padding(
              padding: EdgeInsets.all(17.0),
              child: Text( evg[i].desv,
            //  softWrap: true,
             textAlign: TextAlign.justify,
             style: TextStyle( 
               fontSize: 15,
               wordSpacing: 0.1,
             ),
             ),
            ),
        ],
       ) ,
       );
     }
      );
  }
  _imgSized(String img){
    if(img !='assets/branco.png'){ 
      return  SizedBox(
           height: 200.0,
           width: 350.0,
            child:Image.asset(
            img,
            //  height: 250.0,
            ), 
            );
    }else{
      return SizedBox(height:0);
    }

  }
  _upd(){
   List<Evangelho> listE = EvangelhoRepository.loadEvang(this.verficationeEnum);
   setState(() {
     this.evg = listE;
     this.count=listE.length;
   });
  }
}



// ignore: must_be_immutable
class PageListTitle extends StatefulWidget {
  PageListTitle(this.enumCatego,this.strCatego);
  String strCatego; Categoria enumCatego;
  @override
  _PageListTitleState createState() => _PageListTitleState(this.enumCatego,this.strCatego);
}

class _PageListTitleState extends State<PageListTitle> {
  _PageListTitleState(this.enumCatego,this.strCatego);
  String strCatego; Categoria enumCatego;
  List<Jesus> listJesus; int count =0;
  JesusDatabase jesusDatabase = new JesusDatabase();
 

  @override
  Widget build(BuildContext context) {
    if(listJesus == null){
      listJesus = [];
      _updList();
    }
    print(count);
    return Scaffold(
      appBar: AppBar( 
        title: Text(strCatego),
      
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: count, 
          itemBuilder:(context, index){
            return Container(
              decoration: BoxDecoration( 
                color:Colors.blueGrey,
              ),
              child: ListTile( 
                title: Text(  
                  '${index+1}. '+listJesus[index].tema,
                   style: TextStyle( 
                         fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                       ),
                       
                ),
                onTap: (){
Navigator.push(context,MaterialPageRoute(builder: (context)=> ReaderPage(listJesus[index].categoriaN, listJesus[index].versoDia, listJesus[index].mensagem)));
                },
              ),
            );
          },
          ),
    );
  }
 
 _updList(){
   List<Jesus> listJ = JesusDatabase.loadJesusDB(enumCatego);
   setState(() {
     this.listJesus = listJ;
     this.count = listJ.length;
   });
 }
  
}


// ignore: must_be_immutable
class ReaderPage extends StatelessWidget {
  ReaderPage(this.title,this.verso,this.mensagem);
  String title,verso,mensagem; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(title),
      ),
      body: Container( 
        width: MediaQuery.of(context).size.width,
        // height: height /8,
        padding: EdgeInsets.all(9),
        child: Column( 
          children: [ 
          Text(title,
          style: TextStyle( 
                       fontSize: 22.6,
                       fontWeight: FontWeight.bold,
                     ),
                    
          ),
          Text(verso),

          Expanded( 
            flex: 2,
            child: 
            ListView(
             padding: EdgeInsets.all(8),
             children: [
            
               Text(
                 mensagem,
                // +''+mensagem +''+mensagem +''+mensagem+''+mensagem +''+mensagem+''+mensagem +''+mensagem+''+mensagem +''+mensagem,
                  style: TextStyle( 
                       fontSize: 16.0,
                       fontWeight: FontWeight.w400,
                     ),
                     textAlign: TextAlign.start,
                 ),
             ],
             ),
          ),
          
          ],
          ),
      // )
      ),
    );
  }
}