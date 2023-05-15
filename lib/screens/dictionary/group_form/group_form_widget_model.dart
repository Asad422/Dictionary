

import 'package:app/domain/entity/group.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class GroupFormWidgetModel {
  var word = '';
  var translation = '';
  int index = 0;


  void saveWord(BuildContext context) async {

      if(word.isEmpty || translation.isEmpty ){
        return; 
      }
      if( !Hive.isAdapterRegistered(1)){
        Hive.registerAdapter(GroupAdapter());
      }
     final box =  await Hive.openBox<Group>('groups_box');

      
      final group = Group(name: word, transaltion: translation);
      await box.add(group);
      Navigator.pop(context);
  }

  void saveWordForWotd(BuildContext context) async{
     if(word.isEmpty || translation.isEmpty ){
        return; 
      }
      if( !Hive.isAdapterRegistered(1)){
        Hive.registerAdapter(GroupAdapter());
      }
     final box =  await Hive.openBox<Group>('groups_box');
      final group = Group(name: word, transaltion: translation);
      await box.add(group);
  }

  void editWord(BuildContext context,int index) async {
       if(word.isEmpty || translation.isEmpty ){
        return; 
      }
      if( !Hive.isAdapterRegistered(1)){
        Hive.registerAdapter(GroupAdapter());
      }
     final box =  await Hive.openBox<Group>('groups_box');

     box.putAt(index, Group(name: word, transaltion: translation));
     Navigator.of(context).pop();

  }
}

class GroupFormWidgetModelProvider extends InheritedWidget {
  final GroupFormWidgetModel model;
  const GroupFormWidgetModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  static GroupFormWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GroupFormWidgetModelProvider>();
  }

  static GroupFormWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GroupFormWidgetModelProvider>()
        ?.widget;
    return widget is GroupFormWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(GroupFormWidgetModelProvider oldWidget) {
    return true;
  }
}
