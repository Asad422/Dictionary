import 'package:app/screens/dictionary/dictionary_widget.dart';
import 'package:app/screens/dictionary/grammar/grammar.dart';
import 'package:app/screens/dictionary/wotd/wotd_widget.dart';
import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color_Theme.themecolor,
        title: Text('Главное меню',),
        
      ),
      body: Container(
        color: Color_Theme.tablecolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 10),
                 child: Image.asset('assets/home.png',
                      width:200 ,
                      height: 100,),
               ),

               Text('Учить английский - легко',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   

                  ElevatedButton(
                    
                    
                    style: ButtonStyle(
                      backgroundColor:  MaterialStateProperty.all(Color_Theme.wordcolor),
                      shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(6.0),
      side: BorderSide(
        width: 5,
        color:Color_Theme.themecolor)
    )),
                    ),
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Dictionary_Widget() ));
  },
  child: Container(
    height: 100,
    width: 100,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        
        children: [
              
              Icon( 
                Icons.book,
                size: 24.0,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Словарь'), 
              
        ],
      ),
    ),
  ),),
               ElevatedButton(
                    
                    
                    style: ButtonStyle(
                      backgroundColor:  MaterialStateProperty.all(Color_Theme.wordcolor),
                      shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(6.0),
      side: BorderSide(
        width: 5,
        color:Color_Theme.themecolor)
    )),
                    ),
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Grammar_Home_Widget_Swipe() ));
  },
  child: Container(
    height: 100,
    width: 100,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical :20,horizontal: 5),
      child: Column(
        
        children: [
              
              Icon( 
                Icons.rule_sharp,
                size: 24.0,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Грамматика'), 
         
        ],
      ),
    ),
  ),),
               
                ],
              ),
    
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
     ElevatedButton(
                  
                  
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all(Color_Theme.wordcolor),
                    shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
    
        borderRadius: BorderRadius.circular(6.0),
        side: BorderSide(
          width: 5,
          color:Color_Theme.themecolor)
      )),
                  ),
      onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Wotd_Home() ));
      },
      child: Container(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          
          children: [
            
            Icon( 
              Icons.create_new_folder_rounded,
              size: 24.0,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Слово\n  дня'), 
            
          ],
        ),
      ),
      ),),
      ],),
    
            ],
          ),
        ),
      ),
    );
  }
}