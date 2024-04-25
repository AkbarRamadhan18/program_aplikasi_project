import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 20, 117, 197), // Warna background biru
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120), // Spacer untuk logo
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 70, // Memperbesar radius logo
                backgroundImage: AssetImage('assets/logo.png'),
              ),
            ),
            SizedBox(height: 40), // Spacer antara logo dan form login
            Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Menggunakan tinggi layar
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(120.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30), // Spacer antara judul dan input
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 40, // Memperbesar ukuran judul
                      color: const Color.fromARGB(255, 20, 117, 197),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Username', // Judul untuk input username
                    style: TextStyle(
                      fontSize: 16, // Memperbesar ukuran judul
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[200], // Ubah menjadi abu-abu
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password', // Judul untuk input password
                    style: TextStyle(
                      fontSize: 16, // Memperbesar ukuran judul
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[200],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk tombol login di sini
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 20, 117, 197),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white, // Memberikan warna teks putih
                        fontWeight:
                            FontWeight.bold, // Membuat teks menjadi cetak tebal
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Tambahkan logika untuk lupa password di sini
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
