import 'package:flutter/material.dart';
import 'add_crop_screen.dart';
import 'view_crops_screen.dart';
import 'transactions_screen.dart';
import 'user_actiivity_screen.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _DashboardTile(
              icon: Icons.add_circle_outline,
              label: 'Add Crop',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AddCropScreen()),
                );
              },
            ),
            _DashboardTile(
              icon: Icons.list_alt,
              label: 'View Crops',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ViewCropsScreen()),
                );
              },
            ),
            _DashboardTile(
              icon: Icons.account_balance_wallet,
              label: 'Transactions',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TransactionsScreen()),
                );
              },
            ),
            _DashboardTile(
              icon: Icons.supervised_user_circle,
              label: 'User Activities',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const UserActivityScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green.shade50,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: Colors.green.shade700),
              const SizedBox(height: 10),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
