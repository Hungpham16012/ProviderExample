import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/bloc/countbloc.dart';
import 'package:providertest/pages/nextscreen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Provider')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Số lượng: ${counter.count}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text('Tang'),
            ),
            ElevatedButton(
              onPressed: () {
                counter.giam();
              },
              child: const Text('Giam'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NextScreen()));
                },
                child: const Text('Next Screen')),
          ],
        ),
      ),
    );
  }
}
