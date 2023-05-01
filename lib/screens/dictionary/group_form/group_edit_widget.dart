
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import 'group_form_widget_model.dart';

class GroupFormWidgetEdit extends StatefulWidget {
  const GroupFormWidgetEdit({super.key});

  @override
  State<GroupFormWidgetEdit> createState() => _GroupFormWidgetEditState();
}

class _GroupFormWidgetEditState extends State<GroupFormWidgetEdit> {
  final _model = GroupFormWidgetModel();
  @override
  Widget build(BuildContext context) {
      return GroupFormWidgetModelProvider(child: _GroupFormWidgetBodyEdit() , model: _model);

  }
}
class _GroupFormWidgetBodyEdit extends StatelessWidget {

  

  
  

  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
       backgroundColor: Color_Theme.wordcolor,
      appBar: AppBar(title: 
 Text('Редактировать слово'
        ),backgroundColor: 
      Color_Theme.themecolor,),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GroupWordWidgetEdit(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
             heroTag: "btn1",
            onPressed: ()=>GroupFormWidgetModelProvider.read(context)?.model.editWord(context, GroupFormWidgetModelProvider.read(context)!.model.index )
          
          ,backgroundColor: Color_Theme.themecolor,
          child: const Icon(Icons.done,color: Colors.white,)),



          

        ],
      ),
    )
    ;
  }
}
class GroupWordWidgetEdit extends StatelessWidget {
  const GroupWordWidgetEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            cursorColor: Color_Theme.themecolor,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color_Theme.themecolor,width: 3),

              ),
              border: OutlineInputBorder(),hintText: "Слово"),
            autofocus: true,
              
              onChanged: (value )=> GroupFormWidgetModelProvider.read(context)?.model.word = value, 
            )
            ,
            SizedBox(height: 10,),
          TextField(
            
            cursorColor: Color_Theme.themecolor,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color_Theme.themecolor,width: 3),

              ),
              border: OutlineInputBorder(),hintText: "Перевод"),
          
           onChanged: (value )=> GroupFormWidgetModelProvider.read(context)?.model.translation = value, ),



        ],
      ),
    )    ;
  }
}