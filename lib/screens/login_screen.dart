// import 'package:flutter/material.dart';
// import 'admin_dashboard.dart'; // ✅ Import this line
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Icon(Icons.agriculture_outlined, size: 72, color: Colors.green),
//               const SizedBox(height: 16),
//               Text(
//                 'Welcome to AgriNova',
//                 style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                   color: Colors.green[800],
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Username or Email',
//                   prefixIcon: const Icon(Icons.person),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: const Icon(Icons.lock),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
//
//               //  Admin Login Button
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.admin_panel_settings),
//                 label: const Text('Login as Admin'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => const AdminDashboard()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green[800],
//                   minimumSize: const Size(double.infinity, 48),
//                 ),
//               ),
//
//               const SizedBox(height: 12),
//
//               //  User login still TODO
//               OutlinedButton.icon(
//                 icon: const Icon(Icons.person_outline),
//                 label: const Text('Login as User'),
//                 onPressed: () {
//                   // TODO: Navigate to user dashboard
//                 },
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.green[800],
//                   side: BorderSide(color: Colors.green.shade700),
//                   minimumSize: const Size(double.infinity, 48),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'user_dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.agriculture_outlined, size: 72, color: Colors.green),
              const SizedBox(height: 16),
              Text(
                'Welcome to AgriNova',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.green[800],
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username or Email',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.admin_panel_settings),
                label: const Text('Login as Admin'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const AdminDashboard()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                icon: const Icon(Icons.person_outline),
                label: const Text('Login as User'),
                onPressed: () {
                  // ✅ Directly navigate to User Dashboard
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const UserDashboard()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green[800],
                  side: BorderSide(color: Colors.green.shade700),
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
