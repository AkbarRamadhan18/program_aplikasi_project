import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail Matakuliah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CourseInfo(),
    );
  }
}

class CourseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Matakuliah'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/profile_pic.jpg'), // Replace 'assets/profile_pic.jpg' with your image asset path
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Matakuliah',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Set text color to white
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.7, // Set the card height to 70% of the screen height
              child: Card(
                elevation: 5,
                color: const Color.fromARGB(
                    255, 20, 117, 197), // Set card background color to blue
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      16.0, 24.0, 16.0, 16.0), // Add top padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: _buildInputField('Kode Matakuliah'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: _buildInputField('NO RUANGAN'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: _buildInputField('NAMA DOSEN'),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: _buildInputField('JAM'),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add close button action here
                          },
                          child: Text(
                            'CLOSE',
                            style: TextStyle(
                              color: Colors.white, // Set text color to black
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 249, 173,
                                60), // Set button background color to yellow
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white, // Set text color to white
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            fillColor: const Color.fromARGB(255, 57, 182,
                240), // Set input field background color to light blue
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  10.0), // Adjust the border radius as needed
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.0, // Adjust the vertical padding as needed
              horizontal: 16.0, // Adjust the horizontal padding as needed
            ),
          ),
        ),
      ],
    );
  }
}
