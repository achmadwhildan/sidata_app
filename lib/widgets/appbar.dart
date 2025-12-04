import 'package:flutter/material.dart';
import 'package:sidata_app/panduan.dart';
import 'package:sidata_app/permintaanSaksi.dart';

class AppbarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.20),
      title: Row(
        children: [
          Icon(Icons.home_outlined, color: Colors.grey),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Achmad Whildan",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                "PPLG XII-5",
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: PopupMenuButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onSelected: (value) {
              if (value == "Dashboard") {
              } else if (value == "Profil") {
              } else if (value == "Jelajahi") {
              } else if (value == "Jurnal Pembiasaan") {
              } else if (value == "Catatan Sikap") {
              } else if (value == "Progress") {
              } else if (value == "Permintaan Saksi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Permintaansaksi()),
                );
              } else if (value == "Panduan Penggunaan") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Panduan()),
                );
              }
            },

            icon: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/09486.jpg"),
            ),
            itemBuilder: (context) => [
              _menuItem(Icons.dashboard, "Dashboard"),
              _menuItem(Icons.person, "Profil"),
              _menuItem(Icons.explore, "Jelajahi"),
              PopupMenuItem(child: Divider()),
              _menuItem(Icons.library_books, "Jurnal Pembiasaan"),
              _menuItem(Icons.check_circle, "Permintaan Saksi"),
              _menuItem(Icons.bar_chart, "Progress"),
              _menuItem(Icons.warning, "Catatan Sikap"),
              PopupMenuItem(child: Divider()),
              _menuItem(Icons.menu_book, "Panduan Penggunaan"),
              _menuItem(Icons.settings, "Pengaturan Akun"),
              _menuItem(Icons.logout, "Log Out"),
            ],
          ),
        ),
      ],
    );
  }

  static PopupMenuItem<String> _menuItem(IconData icon, String text) {
    return PopupMenuItem<String>(
      value: text,
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
