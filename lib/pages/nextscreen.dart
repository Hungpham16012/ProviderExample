import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/bloc/countbloc.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text('Số lượng: ${counter.count}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment(); // Sử dụng hàm tang() thay vì giam()
              },
              child: const Text('Tang'),
            ),
            ElevatedButton(
              onPressed: () {
                counter.giam(); // Sử dụng hàm giam() cho nút này
              },
              child: const Text('Giam'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.back_hand),
                  label: const Text('Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    counter.reset();
                  },
                  child: const Text('Reset'),
                )
              ],
            ),
            Expanded(
              // Sử dụng Expanded để ListView có không gian dọc cần thiết
              child: ListView.builder(
                itemCount: counter.count,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text('Sao số ${index + 1} '),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
