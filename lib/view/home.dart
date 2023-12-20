import 'package:counter_provider/controller/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print("UI rebuilding");
    final providerData = Provider.of<CounterNotifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<CounterNotifier>(
          builder: (context, value, child) {
            print("Widget rebuilding");
            return Text(value.counter.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: providerData.incriment),
    );
  }
}
