import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Garamond', // Font klasik & elegan
      ),
      home: const PemobsApp(),
    );
  }
}

class PemobsApp extends StatelessWidget {
  const PemobsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), // Beige mewah
      appBar: AppBar(
        title: const Text("Iam ChillGuy"),
        backgroundColor: const Color(0xFF5D4037), // Coklat tua klasik
        elevation: 3,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Garamond',
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Trio Chill Guy",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Garamond',
                  color: Color(0xFF3D2C8D), // Deep purple klasik
                ),
              ),
              const SizedBox(height: 15),

              // Gambar Mahasiswa
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/trioo.png',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),

              // Kata-Kata Hari Ini
              _buatCard(
                title: "📜 Yapping 📜",
                backgroundColor: const Color(0xFFEEE8AA), // Warna emas klasik
                textColor: Colors.black,
                children: [
                  _buatBarisFakta("🎩 WONG LIYO NGERTI OPO"),
                  _buatBarisFakta("🧐 LAHIR NAK PRAPATAN E RUNGKUT"),
                  _buatBarisFakta("🇮🇩 IKI INDONESIA DUDUK ENGLAND"),
                  _buatBarisFakta("💼 WONG ASOR ORA BAKAL NDLOSOR"),
                  _buatBarisFakta("🎭 OPO EEEEEEEE"),
                ],
              ),

              const SizedBox(height: 10),

              // Galeri Gambar
              const Text(
                "🛠️ Kuliah Starter Pack 🏛️",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Garamond',
                  color: Color(0xFF3D2C8D), // Warna klasik ungu tua
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buatKotakGambar('assets/images/laptop.png', 'Laptop 💻'),
                  _buatKotakGambar('assets/images/beatt.png', 'Motor 🏍️'),
                  _buatKotakGambar('assets/images/76.png', 'Cigarette 🚬'),
                ],
              ),

              const SizedBox(height: 10),

              // Tips Mahasiswa
              _buatCard(
                title: "🏆 Tiga Tips Kesuksesan 🏆",
                backgroundColor: const Color(0xFFEEE8AA), // Warna coklat kayu klasik
                textColor: Colors.black,
                children: [
                  _buatBarisFakta(" 1️⃣Berdoa dengan sungguh-sungguh 🤲🏻"),
                  _buatBarisFakta(" 2️⃣Berusaha dengan strategi yang tepat 📚"),
                  _buatBarisFakta(" 3️⃣Kembali nomer satu 😹"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buatCard({
    required String title,
    required Color backgroundColor,
    required Color textColor,
    required List<Widget> children,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Garamond',
              color: textColor,
            ),
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }

  Widget _buatBarisFakta(String teks) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        teks,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Garamond',
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buatKotakGambar(String gambar, String label) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFD4AF37), width: 2), // Gold border
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              gambar,
              width: 55,
              height: 55,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Garamond',
            color: Color(0xFF3D2C8D), // Warna ungu klasik
          ),
        ),
      ],
    );
  }
}