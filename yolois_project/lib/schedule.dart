import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
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
      body: ListView(
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mata Kuliah',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jam',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),
          ScheduleItem(
            mataKuliah: 'Administrasi Jaringan',
            jam: '08.00 - 10.00',
            icon: 'assets/ajs.png',
          ),
          Divider(),
          ScheduleItem(
            mataKuliah: 'Internet Of Things',
            jam: '10.00 - 12.00',
            icon: 'assets/iot.png',
          ),
          Divider(),
          ScheduleItem(
            mataKuliah: 'Kemananan Jaringan',
            jam: '08.00 - 10.00',
            icon: 'assets/keamanan_jaringan.png',
          ),
          Divider(),
          ScheduleItem(
            mataKuliah: 'Pemrograman Microservice',
            jam: '10.00 - 12.00',
            icon: 'assets/microservice.png',
          ),
          Divider(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 20, 117, 197),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleItem extends StatelessWidget {
  final String mataKuliah;
  final String jam;
  final String icon;

  ScheduleItem({
    required this.mataKuliah,
    required this.jam,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(icon),
                radius: 20,
              ),
              SizedBox(width: 8),
              Text(
                mataKuliah,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jam,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScheduleScreen(),
  ));
}
