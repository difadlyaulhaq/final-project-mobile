import 'package:finalp/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4957, 0.9231],
                  colors: [Colors.white, Colors.red.shade900],
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 121,
                      height: 196,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          labelText: 'Nama',
                          hintText: 'Masukkan Nama Anda',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          labelText: 'NIK',
                          hintText: 'Masukkan NIK Anda',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          labelText: 'Daerah',
                          hintText: 'Masukkan daerah Anda',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    SizedBox(height: 50),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('Login'.toUpperCase()),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade900,
                          minimumSize: Size(200, 40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Welcome to the Homepage!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
