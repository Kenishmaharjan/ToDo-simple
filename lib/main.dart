// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, body_might_complete_normally_nullable, unnecessary_string_interpolations, prefer_typing_uninitialized_variables, list_remove_unrelated_type, avoid_print, unused_element

import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final fieldText = TextEditingController();
  var list = [''];
  var v;
  void add() {
    setState(() {
      list.add(v);
      fieldText.clear();
    });
  }

  void delete(int index) {
    setState(() {
      list.remove('${list[index]}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      color: Colors.blueAccent,
      home: Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: TextFormField(
                        controller: fieldText,
                        onChanged: (val) {
                          setState(() {
                            v = val;
                            HashSet;
                            print(HashSet);
                          });
                        },
                      ),
                    )
                  : ListTile(
                      trailing: TextButton(
                          onPressed: () {
                            delete(index);
                            transfer() {
                              print(identityHashCode(ObjectKey));
                            }
                          },
                          child: Icon(Icons.delete)),
                      leading: Icon(Icons.line_style_outlined),
                      title: Text('${list[index]}'),
                    );
            }),
        appBar: AppBar(
          title: Text("To do app"),
        ),
        drawer: Drawer(child: DrawerHeader(child: Text("drawer header"))),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
