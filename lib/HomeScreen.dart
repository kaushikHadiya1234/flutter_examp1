import 'dart:io';

import 'package:flutter/material.dart';
class MultiTable extends StatefulWidget {
  const MultiTable({Key? key}) : super(key: key);

  @override
  State<MultiTable> createState() => _MultiTableState();
}

class _MultiTableState extends State<MultiTable> {

  String n='';
  int n1=1;



  List l1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
  ];
  List l2 = [
    1,2,3,4,5,6,7,8,9,10
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Multiplication table"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    child: Text("$n",style: TextStyle(fontSize: 25),),
                  ),
                ),
                InkWell(onTap: () {
                  setState(() {
                    n='';
                  });
                },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.backspace),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: GridView.builder(itemBuilder: (context, index) {
                return InkWell(
                onTap: () {
                  setState(() {
                    n +="${l1[index]}";
                    n1=int.parse(n);
                  });
                },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade300,
                            blurStyle:  BlurStyle.normal,
                            blurRadius: 8,
                          )
                        ]
                    ),
                    child: Center(
                      child: Text("${l1[index]}",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                );
              },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,mainAxisExtent: 50,mainAxisSpacing: 5,crossAxisSpacing: 5),itemCount: l1.length),
            ),
            SizedBox(height: 25),
            Container(
              height: 300,
                child: Column(
                    children: l1.asMap().entries.map((e) => Text("$n1 * ${l2[e.key]} = ${n1!*l2[e.key]}",style: TextStyle(fontSize: 25),)).toList()
                )
            ),
          ],
        )
      ),
    );
  }

}
