import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({super.key, required this.pegawai});
  @override
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _IdPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _tlPegawaiCtrl = TextEditingController();
  final _notelpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passPegawaiCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _IdPegawaiCtrl.text = widget.pegawai.id.toString();
      _namaPegawaiCtrl.text = widget.pegawai.nama;
      _nipPegawaiCtrl.text = widget.pegawai.nip;
      _tlPegawaiCtrl.text = widget.pegawai.nomor_telepon;
      _notelpPegawaiCtrl.text = widget.pegawai.nomor_telepon;
      _emailPegawaiCtrl.text = widget.pegawai.email;
      _passPegawaiCtrl.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              const SizedBox(height: 20),
              _fieldNIPPegawai(),
              const SizedBox(height: 20),
              _fieldTLPegawai(),
              const SizedBox(height: 20),
              _fieldNoTelpPegawai(),
              const SizedBox(height: 20),
              _fieldEmailPegawai(),
              const SizedBox(height: 20),
              _fieldPassPegawai(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldIdPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "ID Pegawai"),
      controller: _IdPegawaiCtrl,
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  _fieldNIPPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP Pegawai"),
      controller: _nipPegawaiCtrl,
    );
  }

  _fieldTLPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pegawai"),
      controller: _tlPegawaiCtrl,
    );
  }

  _fieldNoTelpPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Telepon Pegawai"),
      controller: _notelpPegawaiCtrl,
    );
  }

  _fieldEmailPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Email Pegawai"),
      controller: _emailPegawaiCtrl,
    );
  }

  _fieldPassPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password Pegawai"),
      controller: _passPegawaiCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = Pegawai(
            id: int.parse(_IdPegawaiCtrl.text),
            nama: _namaPegawaiCtrl.text,
            nip: _nipPegawaiCtrl.text,
            tanggal_lahir: _tlPegawaiCtrl.text,
            nomor_telepon: _notelpPegawaiCtrl.text,
            email: _emailPegawaiCtrl.text,
            password: _passPegawaiCtrl.text,
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
