import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddHistoryPage extends StatelessWidget {
  const AddHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Tambah Baru'),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Tanggal',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text('2023-01-01'),
              DView.spaceWidth(),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.event),
                  label: Text('Pilih')),
            ],
          ),
          DView.spaceHeight(),
          Text(
            'Tipe',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          DView.spaceHeight(4),
          DropdownButtonFormField(
            value: 'Pemasukan',
            items: ['Pemasukan', 'Pengeluaran'].map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e),
              );
            }).toList(),
            onChanged: (value) {},
            decoration:
                InputDecoration(border: OutlineInputBorder(), isDense: true),
          ),
          DView.spaceHeight(),
          DInput(
            controller: TextEditingController(),
            hint: 'Jualan',
            title: 'Sumber/Objek Pengeluaran',
          ),
          DView.spaceHeight(),
          DInput(
            controller: TextEditingController(),
            hint: '30000',
            title: 'Harga',
            inputType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
