import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
          ),
          body: Column(
            children: [
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR90b07If3lj8xBWnmdtUrPfgqLHRwTeWBL4twaBPDkEt63ypwe5hXVBv8&s=10'),
              SizedBox(
                height: 10,
              ),
              Text('Nama : Bawakdewak'),
              SizedBox(
                height: 10,
              ),
              Text('Hobi : Badminton sambil ngoding'),
              SizedBox(
                height: 10,
              ),
              Text('Kelas : XII RPL 1'),
              SizedBox(
                height: 10,
              ),
              Text('Umur : 20 Tahun sebelum masehi'),
              SizedBox(
                height: 10,
              ),
              Text('Alamat : Bantul Kota'),
            ],
          )
        ),
      ),
    );
  }
}

//profile
//foto
//nama
//hoby
//kelas
//umur
//alammat