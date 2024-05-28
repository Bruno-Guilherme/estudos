import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for main banner
            const BannerFull(),
            const SizedBox(height: 16),
            // Dots indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(true),
                const SizedBox(width: 8),
                _buildDot(false),
                const SizedBox(width: 8),
                _buildDot(false),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Categorias',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Category placeholders
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryPlaceholder(context, 'Decoração'),
                const SizedBox(width: 8),
                _buildCategoryPlaceholder(context, 'Personalizados'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryPlaceholder(context, 'Buffet'),
                const SizedBox(width: 8),
                _buildCategoryPlaceholder(context, 'Cerimonial'),
                const SizedBox(width: 8),
                _buildCategoryPlaceholder(context, 'Ver mais'),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Os mais próximos de você',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Nearby placeholders
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNearbyPlaceholder(context),
                const SizedBox(width: 8),
                _buildNearbyPlaceholder(context),
                const SizedBox(width: 8),
                _buildNearbyPlaceholder(context),
                const SizedBox(width: 8),
                _buildNearbyPlaceholder(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildCategoryPlaceholder(BuildContext context, String text) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNearbyPlaceholder(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

class BannerFull extends StatefulWidget {
  const BannerFull({
    super.key,
  });

  @override
  State<BannerFull> createState() => _BannerState();
}

class _BannerState extends State<BannerFull> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 4,
          child: PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return BannerItems().items[index];
            },
          ),
        ),
      ],
    );
  }
}

class BannerItems {
  List items = [
    Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 9, 172, 23),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 158, 3, 3),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  ];
}
