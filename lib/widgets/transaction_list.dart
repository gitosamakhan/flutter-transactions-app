import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transactions/models/transaction.dart';

class TransactionList extends StatelessWidget {
  // initializing transaction lists to get from user transsctions
  final List<Transaction> transactions;

  // Funtion to delete transaction
  final Function deleteTx;

  // constructor that recieves transactions lists
  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text("No Transactions"),
                Container(
                  height: 200,
                  child: Image.asset('assets/images/none.png'),
                ),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: transactions.map((tx) {
                      return ListTile(
                        title: Text('${tx.title}'),
                        subtitle: Text(DateFormat.yMMMd().format(tx.date)),
                        trailing: Text('\$${tx.ammount}'), 
                        onTap: (){},
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
    );
  }
}
