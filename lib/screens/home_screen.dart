import 'package:flutter/material.dart';
import '../main.dart';
import 'common_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MotoTopBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search bar
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: MotoBoxApp.dark),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text('Search Motorcycles, Scooters',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Filter chips
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _Chip(label: 'ALL', selected: true),
                          _Chip(label: 'Honda'),
                          _Chip(label: 'Yamaha'),
                          _Chip(label: 'Suzuki'),
                          _Chip(label: 'Trade-in'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    Text('Nearby listings',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 12),

                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _ListingCard(
                              name: 'Suzuki Burgman 15',
                              status: 'BRAND NEW',
                              price: 'P158,000'),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _ListingCard(
                              name: 'Yamaha Aerox 155',
                              status: '2ND HAND - 3,300km odo',
                              price: 'P133,000'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _ListingCard(
                              name: 'Honda Click 125',
                              status: 'BRAND NEW',
                              price: 'P86,000'),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _ListingCard(
                              name: 'Suzuki Raider 150',
                              status: 'BRAND NEW',
                              price: 'P75,000'),
                        ),
                      ],
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

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  const _Chip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? MotoBoxApp.orange : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: selected ? MotoBoxApp.orange : MotoBoxApp.dark),
      ),
      child: Text(label,
          style: TextStyle(
              color: selected ? Colors.white : MotoBoxApp.dark,
              fontSize: 13)),
    );
  }
}

class _ListingCard extends StatelessWidget {
  final String name;
  final String status;
  final String price;
  const _ListingCard(
      {required this.name, required this.status, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // STACK: image with a favorite icon on top
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/scooter.jpg',
                        fit: BoxFit.contain,
                        errorBuilder: (c, e, s) => const Icon(
                            Icons.two_wheeler,
                            size: 60,
                            color: MotoBoxApp.orange),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(Icons.favorite_border,
                          size: 20, color: MotoBoxApp.orange),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 2),
              Text(status,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 9, color: Colors.grey)),
              const SizedBox(height: 4),
              Text(price,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 4),
          decoration: BoxDecoration(
            color: MotoBoxApp.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text('VIEW',
              style: TextStyle(color: Colors.white, fontSize: 10)),
        ),
      ],
    );
  }
}