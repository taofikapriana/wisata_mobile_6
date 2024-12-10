import 'package:flutter/material.dart';

class Pertemuan7listview extends StatelessWidget {
  const Pertemuan7listview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan7listview'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'List View'),
              Tab(text: 'List View Builder'),
               Tab(text: 'List View Saparated'),
            ],
             ),
        ),
        body: TabBarView(
          children: [
            ContohListView(),
            ContohListViewBuilder(),
            ContohListViewSeparated(),
          ], 
          ),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberlist = [1,2,3,4,5,6,7];
   ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberlist.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),            
          ),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      ).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.pink, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      itemCount: numberList.length,
    );
  }
}

class ContohListViewSeparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.pink, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20,
            color: Colors.amber,
          );
        },
        itemCount: numberList.length);
  }
}