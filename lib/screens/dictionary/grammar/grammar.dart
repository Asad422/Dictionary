import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


List<Widget> _grammarWidgets = <Widget>[Contiditionals(),ArticlesWidget(),PassiveWidget(),StateWidget()];


class Grammar_Home_Widget extends StatelessWidget {
  const Grammar_Home_Widget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color_Theme.themecolor,
        title: 
      Text('Грамматика'),


      ),
      body:       Container(
        color: Color_Theme.wordcolor,
        child: Swiper(
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Text("Conditionals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),
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
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Text("Articles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),
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
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: Text("Passive voice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),
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
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Text("Tenses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),
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