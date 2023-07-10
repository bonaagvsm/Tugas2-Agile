import 'package:flutter/material.dart';
import 'package:flutter_application_2/pertemuan12/listPembayaran.dart';
import 'package:flutter_application_2/pertemuan12/ListFotografer.dart';
import 'package:flutter_application_2/pertemuan12/ListGedung.dart';
import 'package:flutter_application_2/pertemuan12/ListDekor.dart';
import 'package:flutter_application_2/pertemuan12/ListFotograferProvider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 40,
            color: Color.fromARGB(255, 221, 206, 206),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Cari Promo', prefixIcon: Icon(Icons.search)),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Image.network(
                      "data:image/jpeg;base64,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"),
                  subtitle:
                      Text("Nikah Ga Perlu Mahal Yang Penting SAHHHH!!!!..."),
                  title: Text("Promo Nikah Murah yaa "),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.19),
                          child: Text("promo berlaku di bulan Juli saja!",
                              style: TextStyle(
                                  color: Colors.red.withOpacity(0.6))),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListGedungScreen()));
                        },
                        icon: const Icon(Icons.apartment)),
                    Text("Gedung")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListDekorScreen()));
                        },
                        icon: const Icon(Icons.star)),
                    Text("Dekorasi")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ListFotograferScreen()));
                        },
                        icon: const Icon(Icons.camera_alt)),
                    Text("Fotografer")
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "data:image/jpeg;base64,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"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: const ListTile(
                  title: Text('Lagi Trending',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0))),
                ),
              ),
            ),
          ),
          Container(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.gifgit.com/site-images/toolpage-images/gradient-tool-example1.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: const ListTile(
                  title: Text('Promo 7.7 ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
            ),
          ),
          Container(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/02/42/77/22/360_F_242772256_PRwokoyoXkDCIISNjfj9N3If0TPFtje8.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: const ListTile(
                  title: Text('Promo Bulan Juli ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 90, 13, 65))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
