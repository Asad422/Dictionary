import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


List<Widget> _grammarWidgets = <Widget>[Contiditionals(),ArticlesWidget(),PassiveWidget(),StateWidget(),ComparisonWidget(),
ReportedSpeech()];



class Grammar_Home_Widget_Swipe extends StatefulWidget {
  Grammar_Home_Widget_Swipe({super.key});

  @override
  State<Grammar_Home_Widget_Swipe> createState() => _Grammar_Home_Widget_SwipeState();
}

class _Grammar_Home_Widget_SwipeState extends State<Grammar_Home_Widget_Swipe> {
      String title = 'Грамматика';

      void changeTitle(int index){
        switch (index)
        {
          case 0:
            setState(() {
              title = 'Conditionals';
            });
            break;
          case 1:
          setState(() {
              title = 'Articles';
            });
            break;
              case 2:
          setState(() {
              title = 'PassiveVoice';
            });
            break;

              case 3:
          setState(() {
              title = 'Tenses';
            });
            break;
             case 4:
          setState(() {
              title = 'Degrees of Comparison';
            });
            break;
            case 5:
          setState(() {
              title = 'Reported Speech';
            });
            break;
            

        }
    }

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(  backgroundColor: Color_Theme.themecolor,
      title: Text(title),
      ),
      body:  Container(
        color: Color_Theme.wordcolor,
        child: Swiper(
          onIndexChanged: (index)=> changeTitle(index) ,
            itemBuilder: (context, index) {
              
              return _grammarWidgets[index];
            
            },
            indicatorLayout: PageIndicatorLayout.COLOR,
            autoplayDelay: 10000,
            autoplayDisableOnInteraction: true,


            autoplay: true,
            itemCount: _grammarWidgets.length,
            pagination:  SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: const DotSwiperPaginationBuilder(
                    color: Colors.grey, activeColor: Color(0xff38547C)),
              ),
             
          
            
          ),
      ),
    );
  }
}

class Contiditionals extends StatelessWidget {

  const Contiditionals({super.key});
  
  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.25),
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.5),
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Тип  Условного',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Как образуется',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Пример Употребления',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
      
                    ]
                  ),  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Zero' )),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('If + Present Simple + Present Simple',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Постоянные факты:\n\nIf I go to bed late ,its difficult for me to get up on time',)),
                      ),
      
                    ]
                  ),
      
                   TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('First')),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('If + Present Simple + Future Simple',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Реальная ситуация в будущем:\n\nIf you are late again , I will have to fire you',)),
                      ),
      
                    ]
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Second')),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('If + Past Simple + Future Simple in the Past',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Нереальная ситуация в прошлом:\n\nIf I were you ,I would do my homework',)),
                      ),
      
                    ]
                  ),
                   TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Third')),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('If + Past Perfect + Future Perfect in the Past',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Нереальная ситуация в прошлом с условием,справедливым для настоящего:\n\nIf we had set off earlier , we wouldnt have missed train',)),
                      ),
      
                    ]
                  )
                ],
              ),
            ),

            
          ],
        
      
    );
    
  }
  
}

class ArticlesWidget extends StatelessWidget {
  const ArticlesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( mainAxisSize: MainAxisSize.min,
          children: [
          
             
        
            
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.20),
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.25),
              3: FractionColumnWidth(0.30)
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('A / AN',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('THE',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Нулевой',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Значение',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Center(child: Text('Один из многоих предметов,неважно какой именно',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Определенный предмет или явление',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('-')),
                      ),
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Употребление',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Center(child: Text('С существительными в единственном числе',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Center(child: Text('С существительными в единственном и множественном числе',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Center(child: Text('С абстрактными и неисчисляемыми существительными')),
                      ),
                        
                    ]
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Примеры',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Center(child: Text('Its a pen',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Center(child: Text('Its the pen you gave me',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Center(child: Text('I like hot coffee')),
                      ),
                ],
              ),
          ])
            )
            
          ],
        
      
    );
  }
}



class PassiveWidget extends StatelessWidget {
  const PassiveWidget({super.key});

  @override

    Widget build(BuildContext context) {
    return Column( mainAxisSize: MainAxisSize.min,
          children: [
            
             
          
            
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.23),
              1: FractionColumnWidth(0.38),
              2: FractionColumnWidth(0.38),
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Время',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Активный залог',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Пассивный залог',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                     
      
                    ]
                  ), 
                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('P.S',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I make a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake IS MADE')),
                      ),
                     
      
                    ]
                  ),  
                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('P.C',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I AM MAKING a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake IS BEEING MADE')),
                      ),
                     
      
                    ]
                  ),    
                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Past S',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I MADE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake WAS MADE')),
                      ),
                      
                     
      
                    ]

                    
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Past.C',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I WAS MAKING a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake WAS BEEING MADE')),
                      ),
                     
      
                    ]
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Present.P',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I HAVE MADE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake HAS BEEN MADE')),
                      ),
                     
      
                    ]
                  ),  
                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Past.P',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I HAD MAKE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake HAD BEEN MADE')),
                      ),
                     
      
                    ]
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('F.S',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I WILL MAKE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake WILL BE MADE')),
                      ),
                     
      
                    ]
                  ),  
                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('be goint to',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I AM GOING TO MAKE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake IS GOINT TO BE MADE')),
                      ),
                     
      
                    ]
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Modal',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I MUST MAKE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake MUST BE MADE')),
                      ),
                     
      
                    ]
                  ),  

                    TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Modal Perfect',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('I SHOULD HAVE MADE a cake')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('A cake SHOULD HAVE BEEN MADE')),
                      ),
                     
      
                    ]
                  ),  
          ])
            )
            
          ],
        
      
    );
  }
    
  }

class StateWidget extends StatelessWidget {
  const StateWidget({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Column( mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.09),
              1: FractionColumnWidth(0.23),
              2: FractionColumnWidth(0.22),
              3: FractionColumnWidth(0.22),
              4: FractionColumnWidth(0.24),
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('',)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Continuos',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Simple',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Perfect',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Perfect C.',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('Present',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('to be + Ving',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('V1 /dont + V1/doesnt + V1')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('have/has + V3 ')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Have/has + been + Ving',)),
                      ),
      
                    ]
                  ),  
  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('Past',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('to be + Ving',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('V2 /didnt + V1')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('had + V3 ')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('had + been + Ving',)),
                      ),
                 ] ),

                 TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('Future',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Will + be + Ving',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Will + V1')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Will + have + V3 ')),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Will + have been + Ving',)),
                      ),
                ])
          ])

            )
            
          ],
        
      
    );
  }
}
class ReportedSpeech extends StatelessWidget {
  const ReportedSpeech({super.key});

  @override
 @override
  Widget build(BuildContext context) {
    return Column( mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.25),
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.5),
              
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Direct Speech',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Reported Speech',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Example',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    
      
                    ]
                  ),  
                          
                    TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Present Simple',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Past Simple',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('He said : "I want some oranges."\nHe said he wanted some oranges.',)),
                      ),
                    
      
                    ]
                  ),  
                    TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Present Continuous',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Past Continuous',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('They said : "We are studying hard."\nThey said they were studying hard.',)),
                      ),
                    
      
                    ]
                  ),  
                   TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Present Perfect',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Past Perfect',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('She said : "I have bought new dress"\nShe said she had bought a new dress.',)),
                      ),
                    
      
                    ]
                  ),  
                   TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Past Simple',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Past Perfect',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('She said : "I finished my homework"\nShe said she had finished her homework.',)),
                      ),
                    
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                     
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(child: Text('Will',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('Would',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('She said : "I will alway love Tom"\nShe said she would always love Tom.',)),
                      ),
                    
      
                    ]
                  ),  
                    
                  
                  
  
                 

            
          ])

            )
            
          ],
        
      
    );
  }
}
class ComparisonWidget extends StatelessWidget {
  const ComparisonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( mainAxisSize: MainAxisSize.min,
          children: [
          
             
        
            
            Card(
              color: Color_Theme.tablecolor,
              margin: EdgeInsets.all(10),
              shadowColor: Colors.grey,
              elevation: 5,
              child: Table(
                
                 columnWidths: const <int, TableColumnWidth>{
              0: FractionColumnWidth(0.33),
              1: FractionColumnWidth(0.33),
              2: FractionColumnWidth(0.34),
             
            },
                border: TableBorder.all(),
                children:const  [
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: Text('POSITIVE',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('COMPARATIVE',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('SUPERLATIVE',style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                     
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Short\nBig',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Center(child: Text('+ ER\nshorter\nbigger',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('the ...+EST\nthe shortest\nthe biggest ',)),
                      ),
                      
      
                    ]
                  ),  
                   TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Silly\nnarrow',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Center(child: Text('+ ER\nsillier\nnarrower',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('the ...+EST\nthe silliest\nthe narrowest ',)),
                      ),
                      
      
                    ]
                  ),  
                  TableRow(
                     
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(child: Text('Modern\nBeautiful',style: TextStyle(fontWeight: FontWeight.bold))),
                      ) ,
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Center(child: Text('MORE +\nmore modern \nmore beautiful',)),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(12.0),
                        child: Center(child: Text('the MOST +\nthe most modern \nthe most beautiful ',)),
                      ),
                      
      
                    ]
                  ),  

                    
                    
          ])
            )
            
          ],
        
      
    );
  }
}
