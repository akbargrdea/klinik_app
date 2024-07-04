import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pegawai"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NIP                         : ${pegawai.nip}"),
            const SizedBox(height: 8.0),
            Text("Nama                     : ${pegawai.nama}"),
            const SizedBox(height: 8.0),
            Text("Tanggal Lahir        : ${pegawai.tanggal_lahir.toString()}"),
            const SizedBox(height: 8.0),
            Text("Nomor Telepon     : ${pegawai.nomor_telepon}"),
            const SizedBox(height: 8.0),
            Text("Email                      : ${pegawai.email}"),
            const SizedBox(height: 8.0),
            Text("Password              : ${pegawai.password}"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Ubah")),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Hapus")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
