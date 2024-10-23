import 'package:flutter/material.dart';
import 'Page2.dart'; // Pastikan Page2 sudah diimplementasikan

class home extends StatelessWidget {
  final String username;
  final String sekolah;
  final String role;
  final String desc;

  const home({
    super.key,
    required this.username,
    required this.sekolah,
    required this.role,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/beg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white.withOpacity(0.9), // Warna dengan alpha 150
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/images/photo.jpg"),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        username, // Menampilkan username dari input
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "$role at $sekolah", // Menampilkan role dan sekolah dari input
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        desc, // Menampilkan deskripsi dari input
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Page2(), // Pindah ke Page2
                            ),
                          );
                        },
                        child: const Text(
                          'See More',
                          style: TextStyle(color: Colors.blue),
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
}
