import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AgriNova - User Dashboard"),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _buildCard(
              icon: Icons.shopping_bag,
              label: 'Buy Crops',
              onTap: () {
                // TODO: Navigate to Buy Crops Page
              },
            ),
            _buildCard(
              icon: Icons.store,
              label: 'Sell Produce',
              onTap: () {
                // TODO: Navigate to Sell Produce Page
              },
            ),
            _buildCard(
              icon: Icons.eco,
              label: 'Crop Suggestions',
              onTap: () {
                // TODO: Navigate to Crop Suggestions Page
              },
            ),
            _buildCard(
              icon: Icons.map,
              label: 'Land Leasing',
              onTap: () {
                // TODO: Navigate to Land Leasing Page
              },
            ),
            _buildCard(
              icon: Icons.history,
              label: 'Orders History',
              onTap: () {
                // TODO: Navigate to Orders History Page
              },
            ),
            _buildCard(
              icon: Icons.contact_support,
              label: 'Support',
              onTap: () {
                // TODO: Navigate to Support Page
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: Colors.green[700]),
              const SizedBox(height: 10),
              Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
