import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 117, 197),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/mahasiswa.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>[
              DashboardCard(
                  title: 'Schedule',
                  image: 'assets/schedule.png',
                  color: Color.fromARGB(255, 249, 173, 60)),
              DashboardCard(
                  title: 'Classroom',
                  image: 'assets/classroom.png',
                  color: Color.fromARGB(255, 249, 173, 60)),
              DashboardCard(
                  title: 'Device Condition',
                  image: 'assets/device_condition.png',
                  doubleSize: true,
                  color: Color.fromARGB(255, 249, 173, 60)),
              DashboardCard(
                  title: 'Status',
                  image: 'assets/status.png',
                  color: Color.fromARGB(255, 249, 173, 60)),
              DashboardCard(
                  title: 'Dosen',
                  image: 'assets/dosen.png',
                  color: Color.fromARGB(255, 249, 173, 60)),
              DashboardCard(
                  title: 'Mahasiswa',
                  image: 'assets/mahasiswa.png',
                  color: Color.fromARGB(255, 249, 173, 60)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 32, 123, 197),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String image;
  final bool doubleSize;
  final Color color;

  const DashboardCard({
    Key? key,
    required this.title,
    required this.image,
    this.doubleSize = false,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 5, 5, 5),
                  fontWeight: FontWeight.bold, // Membuat judul tebal
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Image.asset(
              image,
              width: doubleSize ? 102.0 : 82.0,
              height: doubleSize ? 102.0 : 82.0,
            ),
          ],
        ),
      ),
    );
  }
}
