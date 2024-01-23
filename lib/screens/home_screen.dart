import 'dart:developer';

import 'package:demo_provider/screens/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateProvider = Provider.of<StateProvider>(context,listen: false);
    debugPrint('Build call');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click To Increase Counter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Consumer<StateProvider>(
              builder: (context, value, child) {
                return Text(
                  '${value.count}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                );
              },
            ),
            FloatingActionButton(
              onPressed: () {
                stateProvider.inreamentCount();
                log('${stateProvider.count}');
              },
              child: const Text('Click'),
            )
          ],
        ),
      ),
    );
  }
}

