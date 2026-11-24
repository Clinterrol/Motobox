import 'package:flutter/material.dart';
import '../main.dart';
import 'common_widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MotoTopBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Text('AEROX 155', style: textTheme.headlineMedium),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // STACK: image with "2ND HAND" badge on top
                          SizedBox(
                            height: 220,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/scooter.jpg',
                                    fit: BoxFit.contain,
                                    errorBuilder: (c, e, s) => const Icon(
                                        Icons.two_wheeler,
                                        size: 90,
                                        color: MotoBoxApp.orange),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: MotoBoxApp.orange,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text('2ND HAND',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text('Yamaha Aerox 155',
                              style: textTheme.titleMedium),
                          const SizedBox(height: 4),
                          const Text('2ND HAND - 3,300km odo',
                              style: TextStyle(color: Colors.grey)),
                          const SizedBox(height: 8),
                          const Text('P133,000',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: MotoBoxApp.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text('BUY NOW',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const MotoBottomNav(),
          ],
        ),
      ),
    );
  }
}