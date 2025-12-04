import 'package:flutter/material.dart';
import '../widgets/appbar.dart';

class Permintaansaksi extends StatefulWidget {
  const Permintaansaksi({super.key});

  @override
  State<Permintaansaksi> createState() => _PermintaansaksiState();
}

class _PermintaansaksiState extends State<Permintaansaksi> {
  List<Map<String, String>> requestList = [
    {"nama": "Budi Pratama", "tanggal": "20 Nov 2025"},
    {"nama": "Siti Rahma", "tanggal": "21 Nov 2025"},
    // {"nama": "Dimas Saputra", "tanggal": "22 Nov 2025"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppbarPage(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
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

            SizedBox(height: 20),

            requestList.isEmpty
                ? Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.groups, size: 65, color: Colors.grey[500]),
                          SizedBox(height: 14),
                          Text(
                            "Belum ada permintaan",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 6),
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
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: requestList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          margin: EdgeInsets.only(bottom: 14),
                          child: ExpansionTile(
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),

                            leading: CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.blue[200],
                              child: Icon(
                                Icons.person,
                                size: 26,
                                color: Colors.white,
                              ),
                            ),

                            title: Text(
                              requestList[index]["nama"]!,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),

                            subtitle: Text(
                              requestList[index]["tanggal"]!,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                  right: 18,
                                  left: 18,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 10,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Setujui",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),

                                    SizedBox(width: 10),

                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 10,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        side: BorderSide(color: Colors.red),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Tolak",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
