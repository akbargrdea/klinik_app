import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;

  const PasienItem({super.key, required this.pasien}); // Corrected syntax

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(pasien.nama),
          subtitle: Text(pasien.nip),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
