import 'package:avo_expenses/models/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Consumer<TransactionData>(
      builder: (context, transactionData, child){
        return  Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: ktopBorderRadius,
            ),
            child: ListView.builder(
              itemBuilder: (context, index){
                final cat = transactionData.categories[index];
                return  ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
                  leading: cat.categoryIcon,
                  title: Text(
                    cat.categoryName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.05),
                  ),
                  trailing: Text('\$ ${cat.totalAmount.toString()}',
                      style: TextStyle(
                        fontSize: width * 0.04,
                      )),
                  onTap: (){
                    Navigator.pushNamed(context, '/detail');
                  },
                );
              },
              itemCount: transactionData.categoriesLength,
            ),
          ),
        );
      },
    );
  }
}
