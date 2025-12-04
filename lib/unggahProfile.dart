import 'package:flutter/material.dart';
import 'package:sidata_app/widgets/appbar.dart';

class Unggahprofile extends StatelessWidget {
  const Unggahprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPage(),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                Icon(Icons.arrow_circle_left_outlined, color: Color(0xFF003B8E), size: 22,),
                SizedBox(width: 6),
                Text(
                  "Kembali ke Panduan Penggunaan",
                  style: TextStyle(
                    color: Color(0xFF003B8E),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 18), 

          Row(
            children: [
              Icon(Icons.menu_book_sharp, color: Color(0xFF003B8E), size: 28,),
              SizedBox(width: 8,),
              Text("Panduan Penggunaan", style: TextStyle(color:  Color(0xFF003B8E), fontSize: 25, fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Text("Unggah Profile", style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Halaman ini memberikan panduan langkah demi langkah "
              "untuk mengunggah foto profil pengguna. Pengguna "
              "diinstruksikan untuk mengakses bagian Pengaturan Akun, "
              "mengisi field Unggah Photo Profile, dan menyimpan "
              "perubahan yang telah dilakukan.",
              style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey[800],)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. Klik pada bagian Pengaturan Akun,", style: TextStyle(fontSize: 15, color: Colors.grey[800]),),
                      SizedBox(height: 5),
                      Text("2. Lalu isi field Unggah Photo Profile", style: TextStyle(fontSize: 15, color: Colors.grey[800]), ),
                      SizedBox(height: 5),
                      Text("3. Jika sudah, klik Simpan", style: TextStyle(fontSize: 15, color: Colors.grey[800]),),
                      SizedBox(height: 10),
                    ],
            ),
          )
        ],
        )
      )
    );
  }
}