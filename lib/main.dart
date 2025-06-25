import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GameList',
          style: TextStyle(
            fontSize: 30, // Bigger font size
            fontWeight: FontWeight.bold, // Bold text
            // Add shadow here
            shadows: [
              Shadow(
                blurRadius: 6, // Amount of blur
                color: Colors.black.withOpacity(0.2), // Color and opacity of the shadow
                offset: Offset(4, 4), // Shadow offset
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove the default shadow of AppBar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlue], // Gradient background
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Outer padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push content to top and bottom
            children: [
              // User Profile Content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'User Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text('Karl Ryzen E. Magsino'),
                  const SizedBox(height: 16),
                  const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text('ryzen@example.com'),
                  const SizedBox(height: 16),
                  const Text(
                    'Company',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text('BSU'),
                  const SizedBox(height: 16),
                  const Text(
                    'Contact Number',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text('09876543212'),
                ],
              ),

              // Logout button with Icon and Text
              Center(
                child: SizedBox(
                  width: 300, height: 40,// Adjust width as needed
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center align the content
                      children: const [
                        Icon(
                          Icons.exit_to_app, // More appropriate icon for logout
                          size: 25, // Adjust the size of the icon
                          color: Colors.blueAccent,
                        ),
                        SizedBox(width: 7), // Space between the icon and text
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 15), // Style for the text
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
