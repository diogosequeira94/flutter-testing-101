import 'package:flutter/material.dart';
import 'package:flutter_testing_101/history_tab.dart';
import 'package:flutter_testing_101/inherited_widgets/inherited_calculator.dart';
import 'package:flutter_testing_101/operations_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Operations'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          OperationsTab(
            calculator: InheritedCalculator.of(context).calculator,
          ),
          HistoryTab(),
        ],
      ),
    );
  }
}