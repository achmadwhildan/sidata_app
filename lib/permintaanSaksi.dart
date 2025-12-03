import 'package:flutter/material.dart';
import '../widgets/appbar.dart';

class Permintaansaksi extends StatefulWidget {
  const Permintaansaksi({super.key});

  @override
  State<Permintaansaksi> createState() => _PermintaansaksiState();
}

class _PermintaansaksiState extends State<Permintaansaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppbarPage(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Permintaan Saksi",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              "Kelola permintaan dari saksi dari siswa lain",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              decoration: BoxDecoration(
                color: Color(0xFFE8F2FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Thursday, 20 November 2025",
                style: TextStyle(
                  color: Color.fromARGB(255, 32, 106, 209),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "PENGIRIM",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "TANGGAL",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "KONFIRMASI",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(height: 1, color: Colors.grey[300]),

                  // KONTEN KOSONG DI TENGAH
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Icon(Icons.groups, size: 55, color: Colors.grey[500]),
                        SizedBox(height: 14),
                        Text(
                          "Belum ada permintaan",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Belum ada yang mengirim permintaan saksi kepada Anda",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
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
