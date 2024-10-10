import 'package:flutter/material.dart';
import '../model/Pasien.dart';
import 'pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({super.key, required this.pasien});
  @override
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _IdPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _nipPasienCtrl = TextEditingController();
  final _tlPasienCtrl = TextEditingController();
  final _notelpPasienCtrl = TextEditingController();
  final _emailPasienCtrl = TextEditingController();
  final _passPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _IdPasienCtrl.text = widget.pasien.id.toString();
      _namaPasienCtrl.text = widget.pasien.nama;
      _nipPasienCtrl.text = widget.pasien.nip;
      _tlPasienCtrl.text = widget.pasien.nomor_telepon;
      _notelpPasienCtrl.text = widget.pasien.nomor_telepon;
      _emailPasienCtrl.text = widget.pasien.email;
      _passPasienCtrl.text = widget.pasien.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Data Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien(),
              const SizedBox(height: 20),
              _fieldNIPPasien(),
              const SizedBox(height: 20),
              _fieldTLPasien(),
              const SizedBox(height: 20),
              _fieldNoTelpPasien(),
              const SizedBox(height: 20),
              _fieldEmailPasien(),
              const SizedBox(height: 20),
              _fieldPassPasien(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldIdPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "ID Pasien"),
      controller: _IdPasienCtrl,
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _fieldNIPPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP Pasien"),
      controller: _nipPasienCtrl,
    );
  }

  _fieldTLPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tlPasienCtrl,
    );
  }

  _fieldNoTelpPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Telepon Pasien"),
      controller: _notelpPasienCtrl,
    );
  }

  _fieldEmailPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Email Pasien"),
      controller: _emailPasienCtrl,
    );
  }

  _fieldPassPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password Pasien"),
      controller: _passPasienCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = Pasien(
            id: int.parse(_IdPasienCtrl.text),
            nama: _namaPasienCtrl.text,
            nip: _nipPasienCtrl.text,
            tanggal_lahir: _tlPasienCtrl.text,
            nomor_telepon: _notelpPasienCtrl.text,
            email: _emailPasienCtrl.text,
            password: _passPasienCtrl.text,
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
