import 'package:flutter/material.dart';
import 'Game.dart';

class Itemcard extends StatelessWidget {
  final Game games;

  const Itemcard({
    super.key,
    required this.games,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Add shadow for depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      margin: EdgeInsets.all(10.0), // Space around the card
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding inside the card
        child: Row(
          children: [
            // Left side: Column for text content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0), // Padding between image and text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    // Game Name
                    Text(
                      games.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8.0), // Space between name and description

                    // Game Description
                    Text(
                      games.description,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 12.0), // Space before the rating

                    // Rating
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          games.rate.toString(), // Display the rating
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Right side: Image (with fixed size and alignment)
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners on the image
              child: Image.network(
                games.imageUrl, // Assuming your Game class has an image URL field
                fit: BoxFit.cover,
                height: 100.0, // Image height
                width: 100.0, // Image width
              ),
            ),
          ],
        ),
      ),
    );
  }
}
