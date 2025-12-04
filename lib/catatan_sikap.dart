import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:sidata_app/detail_catatan_sikap.dart';
import 'package:sidata_app/widgets/appbar.dart';

class CatatanSikap extends StatefulWidget {
  const CatatanSikap({super.key});

  @override
  State<CatatanSikap> createState() => _CatatanSikapState();
}

class _CatatanSikapState extends State<CatatanSikap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPage(),
            body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                "Catatan Sikap Saya",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.amber.shade200, width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.warning_amber_rounded,
                        color: Colors.deepOrange[600], size: 22),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Perhatian",
                          style: TextStyle(
                            color: Color.fromARGB(255, 136, 33, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Jika ada catatan yang tidak sesuai atau keliru,\nhubungi guru jurusan untuk mengajukan klarifikasi.",
                          style: TextStyle(color: Colors.deepOrange[900]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            _statBox(
              title: "Total Catatan",
              value: "0",
              icon: FontAwesomeIcons.file,
               iconColor: Colors.blue,
               iconBgColor: Colors.blue.withOpacity(0.2)
            ),
            SizedBox(height: 20),

            _statBox(
              title: "Dalam Perbaikan",
              value: "0",
              icon: FontAwesomeIcons.bolt,
               iconColor: Colors.amber,
               iconBgColor: Colors.amber.withOpacity(0.2)
            ),
            SizedBox(height: 20),

            _statBox(
              title: "Sudah Berubah",
              value: "0",
              icon: FontAwesomeIcons.check,
               iconColor: Colors.green,
               iconBgColor: Colors.green.withOpacity(0.2)
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Daftar Catatan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ExpansionTile(
                  tilePadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  childrenPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Expanded(
                        child: Text(
                          "Disiplin",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  children: [
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _detailItem("Catatan", "Sering terlambat masuk kelas"),
                        _detailItem("Status", "Belum diperbaiki"),
                        _detailItem("Dilaporkan oleh", "Wali Kelas"),
                        _detailItem("Update terakhir", "01 Desember 2025"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCatatanSikap()),);
                        },
                        child: Text("Lihat Detail"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
  Widget _statBox({required String title, required String value, required IconData icon, required Color iconColor, required Color iconBgColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text(value,
                    style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: iconBgColor,
                shape: BoxShape.circle,
              ),
              child: FaIcon(icon, color: iconColor, size: 23,)
            ),
          ],
        ),
      ),
    );
  }
}
Widget _detailItem(String label, String value) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Colors.grey[800])),
        SizedBox(height: 3),
        Text(value,
            style: TextStyle(fontSize: 14, color: Colors.black87)),
      ],
    ),
  );
}
