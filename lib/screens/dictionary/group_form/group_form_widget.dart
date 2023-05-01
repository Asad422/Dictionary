import 'package:app/screens/dictionary/group_form/group_form_widget_model.dart';
import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';


class GroupFormWidget extends StatefulWidget {
  const GroupFormWidget({super.key});
  @override
  State<GroupFormWidget> createState() => _GroupFormWidgetState();
}

class _GroupFormWidgetState extends State<GroupFormWidget> {
  final _model = GroupFormWidgetModel();
  @override
  Widget build(BuildContext context) {
      return GroupFormWidgetModelProvider(child: _GroupFormWidgetBody() , model: _model);

  }
}
class _GroupFormWidgetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
      backgroundColor: Color_Theme.wordcolor,
      appBar: AppBar(title: 
 Text('Добавить слово'
        ),backgroundColor: 
      Color_Theme.themecolor,),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GroupWordWidget(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
             heroTag: "btn1",
            onPressed: ()=> GroupFormWidgetModelProvider.read(context)?.model.saveWord(context)
          
          ,backgroundColor: Color_Theme.themecolor,
          child: const Icon(Icons.done,color: Colors.white,)),



      
        ],
      ),
    )
    ;
  }
}
class GroupWordWidget extends StatelessWidget {
  const GroupWordWidget({super.key});

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
              border: OutlineInputBorder(
                
            )
            ,hintText: 'Слово'),
            
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
            border: OutlineInputBorder(),hintText: 'Перевод'),
          
           onChanged: (value )=> GroupFormWidgetModelProvider.read(context)?.model.translation = value, ),



        ],
      ),
    )    ;
  }
}