import 'package:flutter/material.dart';
import 'package:flutter_multi_provider_state_management_demo/cart.dart';
import 'package:flutter_multi_provider_state_management_demo/money.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(
            create: (context) => Money(),
          ),
          ChangeNotifierProvider<Cart>(
            create: (context) => Cart(),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text("Multi Provider State Management"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Balance: "),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<Money>(
                            builder: (context, value, _) {
                              return Text(
                                value.balance.toString(),
                                style: const TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w500),
                              );
                            },
                          )),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, value, child) {
                        return Row(
                          children: [
                            Text(
                              "Apple (10000) x ${value.quantity},",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Total price : ${NumberFormat.currency(locale: 'id_IDR', symbol: 'Rp').format(10000 * value.quantity)}",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<Money>(
                      builder: (BuildContext context, Money money, _) {
                        return Consumer<Cart>(
                          builder: (BuildContext context, Cart value, _) {
                            return ElevatedButton(
                              onPressed: () {
                                if (money.balance >= 10000) {
                                  value.quantity += 1;
                                  money.balance -= 10000;
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.add),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Add")
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Consumer<Money>(
                      builder: (BuildContext context, Money money, _) {
                        return Consumer<Cart>(
                          builder: (BuildContext context, Cart value, _) {
                            return ElevatedButton(
                              onPressed: () {
                                if (value.quantity > 0) {
                                  value.quantity -= 1;
                                  money.balance += 10000;
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.remove),
                                  SizedBox(width: 5),
                                  Text('Remove'),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
