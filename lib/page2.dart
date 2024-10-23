import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Diri'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/beg.jpg"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0), // Padding atas 20 pixel
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("assets/images/photo.jpg"),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white.withOpacity(0.9), // Warna dengan alpha 150
                child: const Padding(
                  padding: EdgeInsets.all(16.0), // Padding 16 dari semua sisi
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "My name is Salma Hayya Rahman. I am currently studying at SMK Wikrama Bogor, as a 12th grade student, majoring in Software and Game Development (PPLG).",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white.withOpacity(0.9), // Warna dengan alpha 150

                child: const Padding(
                  padding: EdgeInsets.all(16.0), // Padding 16 dari semua sisi
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "History",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "My history is that I fell down while playing bicycle and lost 2 teeth.",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white.withOpacity(0.9), // Warna dengan alpha 150

                child: const Padding(
                  padding: EdgeInsets.all(16.0), // Padding 16 dari semua sisi
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Agar teks berada di sebelah kiri
                    children: <Widget>[
                      Text(
                        "Skill",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0), // Jarak antara judul dan daftar
                      Text(
                        "• UI/UX Design",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "• Web Development (HTML, CSS, JavaScript,)",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "• Wordpress Development",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
