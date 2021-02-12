
import 'package:Praise_Lord/model/evangelho.dart';
import 'package:Praise_Lord/model/jesusAguaViva.dart';
// import 'package:Praise_Lord/pages/notificationPlugin.dart';
import 'package:Praise_Lord/pages/view.dart';
// import 'package:flutter_local_notifications_platform_interface/src/notification_app_launch_details.dart';
import '../main.dart';
import 'devocionalDay.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'localNotificationScreen.dart';
import 'package:Praise_Lord/utils/notficationPlugin.dart';


// import 'package:Praise_Lord/utils/databaseHelper.dart';


// String ctg,catego;  Categ cteg; Categoria catgoria; 
class HomePage extends StatefulWidget {
  final  Categ categ; final Categoria categoria;
  HomePage({this.categ:Categ.all,this.categoria:Categoria.all});
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

 
   final  Categ categ;   Categoria categoria;
    CatgRepository catgRepository = new CatgRepository(); CapaJesusRepo capaJesusRepo = new CapaJesusRepo();
  _HomePageState( {this.categ:Categ.all,this.categoria:Categoria.all});
     List<Catg> cate ;  int count=0,tamanho=0; List<CapaJesus> capaJesus;
 //  final NotificationAppLaunchDetails notificationAppLaunchDetails;
        
 @override
 void initState(){
   super.initState();
  //  helper.initializeDatabase();
 }
 

  @override
  Widget build(BuildContext context) {
    if(cate == null && capaJesus == null){
      cate = List<Catg>();
      capaJesus = List<CapaJesus>();
      _upd();
    }

    return  DefaultTabController(
            length: 2, 
            child: Scaffold(
               drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
           
              ListTile(
              title: Text('Devocional Dia'),
              onTap: () {
               
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DevocionalDay()));
              },
            ),
            ListTile(
              title: Text('Definicoes'),
              onTap: () {
                // Navigator.pushNamed(context, '/anotacoes');
              },
            ),
            ListTile(
              title: Text('Teste Notificacao'),
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> HomePageN(notifLaunch)));

              },
            ),
        
          ],
        ),
      ),
      appBar: AppBar( 
        title:Text('Praise Lord'),
        bottom: TabBar(
          tabs: [ 
            Tab(text:'EVANGELISMO',),
            Tab(text:'DEVOCIONAIS'),
            ], 
        ),
      
      ),
      body: TabBarView(
        children: [ 
          _loadList(),
          _loadDevo(),
        ],
        ),
    ),
    );
  }
 
  _upd(){
   List<Catg> listE = catgRepository.loadCatg(categ);
   List<CapaJesus> listCapJesus = capaJesusRepo.loadCapaJesus(categoria);
   
   setState(() {
     this.cate = listE;
     this.count=listE.length;
     this.capaJesus = listCapJesus;
     this.tamanho =listCapJesus.length;
   });
    
  }
 _loadDevo(){
   return ListView.builder( 
     padding: EdgeInsets.all(8.0),
     itemCount: tamanho,
     itemBuilder: (context, index){
      return InkWell( 
            onTap: (){
              //  catego=this.capaJesus[index].titulo;
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PageListTitle(this.capaJesus[index].categoria,this.capaJesus[index].titulo)));
                      // catgoria = this.capaJesus[index].categoria;
                      //  print(catego);
                      //  downloadFirestore();
            },
           child: Card(
            
            // shape: ShapeBorder.,
            color: Colors.white70,
            child: Column( 
              children: <Widget>[ 
                SizedBox(
                  height: 120.0,
                  child: Stack( 
                    children: <Widget>[ 
                      Positioned.fill(
                        bottom: 35.0, 
                        child: Image.asset(
                           this.capaJesus[index].img,
                          // 'assets/The Four.png', 
                          fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          left: 8.0,
                          right: 15.0,
                          child: FittedBox( 
                            fit: BoxFit.scaleDown,
                            alignment:Alignment.bottomLeft,
                            child: Text( 
                              this.capaJesus[index].titulo,
                              style: Theme.of(context)
                              .textTheme 
                              .headline6 
                              .copyWith(color:Colors.black),
                              ),
                          ), 
                          ),
                    ],
                    
                    ),
                ),
                Padding( 
                  padding: EdgeInsets.all(8),
                  child: Text(this.capaJesus[index].subTitulo),
                  ),
              ],
            ),
          ),
          
          );
     }, 
     );
  
 }
  _loadList(){

    return ListView.builder(
          padding: EdgeInsets.all(10.0),
      itemCount: count,
      itemBuilder: (context, i){
          return  InkWell( 
            onTap: (){
              // ctg=this.cate[i].catg;
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailPage(this.cate[i].categ,this.cate[i].catg)));
                      // cteg= this.cate[i].categ;
                      //  print(cteg);
            },
           child: Card(
            
            // shape: ShapeBorder.,
            color: Colors.white70,
            child: Column( 
              children: <Widget>[ 
                SizedBox(
                  height: 120.0,
                  child: Stack( 
                    children: <Widget>[ 
                      Positioned.fill(
                        bottom: 35.0, 
                        child: Image.asset(
                           this.cate[i].img,
                          // 'assets/The Four.png', 
                          fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          left: 8.0,
                          right: 15.0,
                          child: FittedBox( 
                            fit: BoxFit.scaleDown,
                            alignment:Alignment.bottomLeft,
                            child: Text( 
                              cate[i].catg,
                              style: Theme.of(context)
                              .textTheme 
                              .headline6 
                              .copyWith(color:Colors.black),
                              ),
                          ), 
                          ),
                    ],
                    
                    ),
                ), 
              ],
            ),
          ),
          
          );
      },

    );
  }
 
}

