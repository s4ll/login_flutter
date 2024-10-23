import 'package:flutter/material.dart';
import 'home.dart'; // Import halaman home

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan watermark debug banner
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Memberikan padding di seluruh sisi form
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10), // Jarak antara "Welcome Back!" dan deskripsi
              const Text(
                'Masukan data anda dengan benar.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20), // Jarak antara teks dan form input
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: const Icon(Icons.person), // Ikon di sebelah kiri
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Membuat border melengkung
                  ),
                ),
              ),
              const SizedBox(height: 20), // Jarak antar form input
              TextFormField(
                controller: _sekolahController,
                decoration: InputDecoration(
                  hintText: "Sekolah",
                  prefixIcon: const Icon(Icons.school), // Ikon di  sebelah kiri
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Jarak antar form input
              TextFormField(
                controller: _roleController,
                decoration: InputDecoration(
                  hintText: "Role",
                  prefixIcon: const Icon(Icons.co_present_rounded), // Ikon di  sebelah kiri
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Jarak antar form input
              TextFormField(
                controller: _descController,
                decoration: InputDecoration(
                  hintText: "Desc",
                  prefixIcon: const Icon(Icons.description), // Ikon di  sebelah kiri
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 30), // Jarak sebelum tombol login
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Redirect ke halaman home saat tombol ditekan dan kirim data input user
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(
                          username: _usernameController.text,
                          sekolah: _sekolahController.text,
                          role: _roleController.text,
                          desc: _descController.text,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Ukuran tombol lebih besar
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Membuat tombol melengkung
                    ),
                  ),
                  child: const Text(
                    "submit",
                    style: TextStyle(fontSize: 18, color: Colors.black), // Ukuran teks lebih besar
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
