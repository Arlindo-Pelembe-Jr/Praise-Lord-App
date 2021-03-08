
import 'package:Praise_Lord/helpers/constants.dart';
import 'package:Praise_Lord/model/evangelho.dart';
import 'package:Praise_Lord/model/jesusAguaViva.dart';
import 'package:Praise_Lord/pages/detail_page.dart';
import 'package:Praise_Lord/pages/view.dart';
import 'package:Praise_Lord/widgets/custom_button.dart';
import '../main.dart';
import 'devocionalDay.dart';
import 'package:flutter/material.dart';
import 'package:Praise_Lord/utils/notficationPlugin.dart';
import 'package:Praise_Lord/widgets/card.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
            // appBar: AppBar( 
            //   title:Text('Praise Lord'),
            // ),
            body: Stack(
            children: [
               Image.asset(
               backgroundImage,
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               fit: BoxFit.cover,
              ),
                Container(
                    // color: Colors.white12,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 500),
                    child:Row(
                      children: [
                        Text('Praise Lord'),
                      ],
                    ),
                  ),
                 Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.fromLTRB(18, MediaQuery.of(context).size.height/2.1, 18, 0),
                    child: GridView.count(
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4,
                              padding: EdgeInsets.all(8),
                              crossAxisCount: 2,
                              children: [
                                CustomButton(
                                  title: 'Devocional–Dia',
                                  onTap: (){
                                    print('tap');
                                  },
                                ),
                                CustomButton(
                                  title: 'Evangelho',
                                  onTap: (){
                                    print('tap');
                                  },
                                ),
                                CustomButton(
                                  title: 'Meditação',
                                  onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage()));

                                    print('tap');
                                  },
                                ),
                                CustomButton(
                                  title: 'Definições',
                                  onTap: (){
                                    print('tap');
                                  },
                                ),

                              ],
                              ),
                    
                         
                    
                       )
                          ]
            ),
          );
  }
}
class Home extends StatefulWidget {
  final  Categ categ; final Categoria categoria;
  Home({this.categ:Categ.all,this.categoria:Categoria.all});
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

 
   final  Categ categ;   Categoria categoria;
    CatgRepository catgRepository = new CatgRepository(); CapaJesusRepo capaJesusRepo = new CapaJesusRepo();
  _HomeState( {this.categ:Categ.all,this.categoria:Categoria.all});
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
           child: CustomCard(
             image: this.capaJesus[index].img,
             title:this.capaJesus[index].titulo,
             subtitle: this.capaJesus[index].subTitulo,
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
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailPage1(this.cate[i].categ,this.cate[i].catg)));
                      // cteg= this.cate[i].categ;
                      //  print(cteg);
            },
           child: CustomCard(
             title: this.cate[i].catg,
             image: this.cate[i].img,
             ),
          
          );
      },

    );
  }
 
}

