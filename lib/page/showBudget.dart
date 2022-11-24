import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/dataBudget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class showBudget extends StatefulWidget {
  const showBudget({super.key});

  @override
  State<showBudget> createState() => _showBudgetState();
}

class _showBudgetState extends State<showBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: myDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dataBudget.databudgets[index].judul,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                      DateFormat('EEEE, MMMM d, yyyy')
                          .format(dataBudget.databudgets[index].date),
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dataBudget.databudgets[index].nominal.toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        dataBudget.databudgets[index].tipe,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dataBudget.databudgets.length,
      ),
    );
  }
}