// import 'dart:io';

// import 'package:Praise_Lord/model/jesusAguaViva.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DbHelper{
//   static DbHelper _databaseHepler;
//   static Database _database;

//   String devoTable = 'aguaviva_table';
//   String colId = 'id';
//   String colTitle = 'idFirestore';
//   String colCateg = 'categoria';
//   String colTema = 'tema';
//   String colSub = 'subtitulo';
//   String colMensagem ='mensagem';
//   String colAutor= 'autor';

//   DbHelper._createInstance();

//   factory DbHelper(){

//     if(_databaseHepler == null){
//       _databaseHepler = DbHelper._createInstance();
//     }
//     return _databaseHepler;
//   }

//   Future<Database> get database async{

//     if(_database == null){
//       _database = await initializeDatabase();
//     }
//     return _database;
//   }

//   Future<Database> initializeDatabase() async{
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = directory.path + 'teste.db';

//     var devoDatabase = await openDatabase(path,version: 1,onCreate: _createDb);
//     return devoDatabase;
//   }

//   void _createDb(Database db, int newVersion)async{
//     await db.execute(''' 
//     CREATE TABLE $devoTable(
//       $colId INTEGER PRIMARY KEY AUTOINCREMENT,
//       $colTitle TEXT,
//       $colCateg TEXT,
//       $colTema TEXT,
//       $colSub TEXT,
//       $colMensagem TEXT,
//       $colAutor TEXT
//       )
    
//     ''');
//   }
  
//   Future<List<Map<String,dynamic>>> getDevoMapList() async{
//     Database db = await this.database;
//     var result = await db.query(devoTable, orderBy: '$colTema ASC');
//     return result;
//   }

//   Future<int> insertDevo(Map<String,dynamic> map)async{
//     Database db = await this.database;

//     var result = await db.insert(devoTable, map);
//     return result;
//   }
  

//   	Future<int> getCount() async {
// 			Database db = await this.database;
// 			List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT (*) from $devoTable');
// 			int result = Sqflite.firstIntValue(x);
// 			return result;
// 		}

//     Future<List<Jesus>> getDevoList()async{

//       var devoMapList = await getDevoMapList();
//       int count = devoMapList.length;

//       List<Jesus> devoList = List<Jesus>();
//       for(int i=0; i< count; i++){
//         devoList.add(Jesus.fromMap(devoMapList[i]));
//       }
//       return devoList;
//     }
//   }


// Future<int> createCustomer(Customer customer) async {
//   var result = await database.insert("Customer", customer.toMap());
//   return result;
// }

// Future<List> getCustomers() async {
//   var result = await database.query("Customer", columns: ["id", "first_name", "last_name", "email"]);

//   return result.toList();
// }


// Future<Customer> getCustomer(int id) async {
//   List<Map> results = await db.query("Customer",
//       columns: ["id", "first_name", "last_name", "email"],
//       where: 'id = ?',
//       whereArgs: [id]);

//   if (results.length > 0) {
//     return new Customer.fromMap(results.first);
//   }

//   return null;
// }

// Future<int> updateCustomer(Customer customer) async {
//   return await database.update("Customer", customer.toMap(), where: "id = ?", whereArgs: [customer.id]);
// }

// Future<int> deleteCustomer(int id) async {
//   return await database.delete("Customer", where: 'id = ?', whereArgs: [id]);
// }

// createCustomer(Customer customer) async {
//     var result = await database.rawInsert(
//       "INSERT INTO Customer (id,first_name, last_name, email)"
//       " VALUES (${customer.id},${customer.firstName},${customer.lastName},${customer.email})");
//     return result;
//   }