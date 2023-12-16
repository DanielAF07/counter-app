import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Functions'), actions: [
        IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
        ),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              count == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  count = 0;
                });
              }),
          const SizedBox(height: 16),
          CustomFloatingButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  count += 1;
                });
              }),
          const SizedBox(height: 16),
          CustomFloatingButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (count == 0) return;
                  count -= 1;
                });
              }),
        ],
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;

  final VoidCallback? onPressed;

  const CustomFloatingButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
