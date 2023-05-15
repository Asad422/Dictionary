import 'package:app/screens/dictionary/wotd/request.dart';
import 'package:app/themes/app_colors.dart';
import 'package:word_generator/word_generator.dart';

import 'package:flutter/material.dart';

import '../group_form/group_form_widget_model.dart';
 final wordGenerator = WordGenerator();
 class Wotd_Home extends StatelessWidget {
    final _model = GroupFormWidgetModel();
  Wotd_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     GroupFormWidgetModelProvider(child: Wotd_Widget() , model: _model);
  }
}
class Wotd_Widget extends StatefulWidget {
  const Wotd_Widget({super.key});

  @override
  State<Wotd_Widget> createState() => _Wotd_WidgetState();

 
}

class _Wotd_WidgetState extends State<Wotd_Widget> {

Map <String , String > words = {};
 getRandomNouns() {
  words.clear();
    final List<String> nouns = wordGenerator.randomNouns(5);
    nouns.forEach((element) { 
     request(element).then((String translation) {
        words[element] = translation ;
        if(words.length == 5){
             setState(() {});
        }
          }      )
      ;}
      );
      }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: getRandomNouns, icon: Icon(Icons.generating_tokens))
        ],
        
        title: Text('WotD'),backgroundColor: Color_Theme.themecolor,),
      body: Center(
       child :
   Expanded(
    
     child: Container(
      color: Color_Theme.wordcolor,
       child: ListView.builder(
       itemCount: words.length,
       itemBuilder: (BuildContext context, int index) {
        String key = words.keys.elementAt(index);
        return new Column(
          children: <Widget>[
            SizedBox(
            
              width : double.infinity,
              child: new Card(
                color : Color_Theme.tablecolor,
                 elevation: 5,
                 child: Padding(padding:
                 EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(key,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),),
                        Text(words[key].toString(),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)
                      ],
                     ),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                          IconButton(
                            
                            
                            onPressed: () {
                              GroupFormWidgetModelProvider.read(context)?.model.word = key;
                              GroupFormWidgetModelProvider.read(context)?.model.translation = words[key]!;
                             GroupFormWidgetModelProvider.read(context)?.model.saveWordForWotd(context);
                            setState(() {
                               words.remove(key);
                            });
                            
     
                            
     
                           
                             
                              
                            
                            } 
                          
                          , icon: Icon(
                            
                            Icons.add
                            ,color: Colors.black,)),
                        
                      ],
                     )
                   ],
                 ),
                 
                 
                 ),
              ),
            ),
           
          ],
        );
       },
        ),
     ),
   )
    
  ,

            
          
      ),
    );
  }
}




