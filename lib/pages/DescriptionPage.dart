import 'package:flutter/material.dart';

class BusinessDescriptionPage extends StatelessWidget {
  const BusinessDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Description'),
        backgroundColor: Colors.lightBlue.shade300, // Set app bar background color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when button is pressed
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Business Name
            Text(
              'Business Name',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade300, // Set text color
                fontFamily: 'Pacifico', // Set custom font family
              ),
            ),
            SizedBox(height: 20.0),
            // Animated Container for Image
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: 200.0,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300], // Placeholder color
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/business.png',
                  height: 500,
                  width: 400,
                  // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Description of the Business with Fade Animation
            TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0.0, (1 - value) * 50),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Praesent eu turpis nec leo tempor commodo nec in dui. '
                          'Vivamus id fringilla purus. Aliquam pretium euismod libero, '
                          'at lobortis orci laoreet a. Suspendisse potenti. In suscipit, '
                          'ipsum a placerat ultricies, nisi nisi efficitur ligula, in '
                          'finibus justo mauris id odio. Sed id neque lacinia, fermentum '
                          'eros eu, congue leo. In hac habitasse platea dictumst. '
                          'Pellentesque habitant morbi tristique senectus et netus et '
                          'malesuada fames ac turpis egestas.',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            // Contact Information with Scale Animation
            TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(
                  scale: value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Information',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue.shade300,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.lightBlue.shade300),
                          SizedBox(width: 10.0),
                          Text(
                            '123 Main Street, City, Country',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.lightBlue.shade300),
                          SizedBox(width: 10.0),
                          Text(
                            '+1234567890',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            // Reviews with Fade Animation
            TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      // Sample Review Card
                      Card(
                        elevation: 3.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                          title: Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.0),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                    'Praesent eu turpis nec leo tempor commodo nec in dui.',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange, size: 20.0),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '5.0',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
