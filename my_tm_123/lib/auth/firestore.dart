import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firestore extends StatefulWidget {
  const Firestore({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();

}
class _HomePageState extends State {
  final nameCtrl=TextEditingController();
  final amountCtrl=TextEditingController();
  final CollectionReference users=FirebaseFirestore.instance.collection(
      'expenses'
  );
  String? editId;
  @override
  void dispose(){
    nameCtrl.dispose();
    amountCtrl.dispose();
    super.dispose();
  }
  void openUserDialog({DocumentSnapshot? doc}){
    if(doc!=null){
      nameCtrl.text=doc['Expense_Name'];
      amountCtrl.text=doc['Expense_Amount'];
      editId=doc.id;
    }
    else{
      nameCtrl.clear();
      amountCtrl.clear();
      editId=null;
    }
    showDialog(context: context, builder: (context1)=>AlertDialog(
      title: Text(editId==null?'Add User':'Edit User'),
      content: Column(
        mainAxisSize: .min,
        children: [
          TextField(
            controller: nameCtrl,
            decoration: InputDecoration(hintText: 'Expense_Name',),
          ),
          TextField(
            controller: amountCtrl,
            decoration: InputDecoration(hintText: 'Expense_Amount',),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context1);
        }, child:const Text('Cancel')),
        ElevatedButton(
          child: Text(editId==null?'Add':'Update'),
          onPressed: ()async{
            final name=nameCtrl.text.trim();
            final amount=amountCtrl.text.trim();
            if(name.isEmpty||amount.isEmpty)
              return;

            try {
              if(editId==null){
                await users.add({
                  'Expense_Name':name,
                  'Expense_Amount':amount,
                  'createdAt':FieldValue.serverTimestamp(),
                });
                Navigator.pop(context1);
              }
              else {
                await users.doc(editId).update({
                  'Expense_Name': name,
                  'Expense_Amount': amount,
                  'updatedAt': FieldValue.serverTimestamp(),
                });
              }
              Navigator.pop(context1);
            }catch(e){
              debugPrint('Firestore error: $e');
            }
          },
        )
      ],
    )
    );
  }
  Future<void> deleteUser(String id)async{
    try{
      await users.doc(id).delete();
    }catch(e){
      debugPrint('Delete error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Expense List'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        
        stream: users.snapshots(),
        builder: (context,snap)
        {
          if(snap.hasError) return const Center(child: Text('Something wrong'));

          if(!snap.hasData) {
              return Center(child: CircularProgressIndicator(),);
            }
          final docs = snap.data!.docs;

          if(docs.isEmpty){
            return const Center(child: Text('No data found'),);
          }

            return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Card(color: Colors.green[50],
                    child: ListTile(
                      title: Text(docs?[index]['Expense_Name']),
                      subtitle: Text(
                        docs?[index]['Expense_Amount'],
                      ),
                      trailing:
                      Row(
                        mainAxisSize: .min,
                        children: [
                          IconButton(onPressed: ()=>openUserDialog(doc: docs?[index]), icon: Icon(Icons.edit)),
                          IconButton(onPressed: ()=>deleteUser(docs![index].id), icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );

                });

          
        },
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () => openUserDialog(),
          child: const Icon(Icons.add),
        )
    );
  }

}