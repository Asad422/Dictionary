






import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'dictionary_widget_model.dart';
import 'group_form/group_form_widget_model.dart';

class Dictionary_Widget extends StatefulWidget {
  const Dictionary_Widget({super.key});

  @override
  State<Dictionary_Widget> createState() => _Dictionary_WidgetState();
}

class _Dictionary_WidgetState extends State<Dictionary_Widget> {
  final  _model = GroupsWidgetModel();
  @override
  Widget build(BuildContext context) {
    return GroupsWidgetModelProvider(child:  _GroupWidgetBody(), model: _model) ;
  }
}
class _GroupWidgetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Color_Theme.themecolor,
        title:  Text('Словарь'),
      ),

      body: _GroupList(),
      backgroundColor: Color_Theme.tablecolor,
      floatingActionButton:FloatingActionButton
      (backgroundColor:  Color_Theme.themecolor,
        onPressed: () { GroupsWidgetModelProvider.read(context)?.model.showForm(context);  },
        child: Icon(Icons.add,color:Colors.white,)
      ),
    );
  }
}


class _GroupList extends StatefulWidget {
  

  @override
  State<_GroupList> createState() => _GroupListState();
}

class _GroupListState extends State<_GroupList> {
  @override
  Widget build(BuildContext context) {
   final groupsCount= GroupsWidgetModelProvider.watch(context)?.model.groups.length ?? 0;
    return ListView.separated(separatorBuilder: (BuildContext context,int index){
      return const Divider(height: 3,color: Colors.black,);
    }, itemBuilder: (BuildContext context,int index){
      return _GroupListRow( indexInList: index,);
    }
    , itemCount: groupsCount
             );
  }
}

class _GroupListRow extends StatelessWidget {



  _GroupListRow({required this.indexInList});
  final int indexInList;

  Widget build(BuildContext context) {
    final _model = GroupsWidgetModelProvider.read(context)!.model;
    final group = _model.groups[indexInList];
    final index = indexInList+1;


    return 
    Slidable(
      endActionPane:  ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                 
                    
                    onPressed:(BuildContext context){
                      _model.deleteGroup(indexInList);
                    },
                   backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Удалить',
                  ),
                   SlidableAction(
                 
                    
                    onPressed:(BuildContext context){
                      GroupFormWidgetModelProvider.read(context)?.model.index = indexInList;
                      _model.showFormEdit(context);
                    },
                   backgroundColor: Color.fromARGB(255, 3, 108, 245),
                    foregroundColor: Colors.white,
                    icon: Icons.edit,
                    label: 'Изменить',
                  ),
                  
                ],
              ),
      
      child: 
    ListTile(
      title: 
        
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('${index.toString()}.  ' +group.name),
        ),
      trailing: Padding (
        padding: EdgeInsets.only(right: 10),
        child : 
        Text( group.transaltion,style: TextStyle(
          fontWeight: FontWeight.bold
        ),)
        ),
    ));
  }
}