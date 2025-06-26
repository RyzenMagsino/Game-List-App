import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyGameList',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ── Top navigation bar ────────────────────────────────────────────────
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'MyGameList',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.account_circle, size: 32),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),

      // ── Body ──────────────────────────────────────────────────────────────
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // One-line greeting
            Row(
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8), // small gap
                Text(
                  'Ryzen',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Centered tiles
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  NavTile(label: 'Account', icon: Icons.person_outline),
                  NavTile(label: 'My Worlds', icon: Icons.public),
                  NavTile(label: 'My Items', icon: Icons.inventory_2_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavTile extends StatelessWidget {
  final String label;
  final IconData icon;

  const NavTile({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.primaryContainer,
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 3),
            spreadRadius: 1,
            color: Colors.black12,
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
