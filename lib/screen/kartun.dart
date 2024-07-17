import 'package:flutter/material.dart';
import 'package:myapp/screen/detail_kartun.dart';


class kartun extends StatelessWidget {
  final List<Map<String, dynamic>> kartunData = [
    {
      "nama": "Onepiec",
      "jenis": "Kartun",
      "image": "assets/images/onepiec.jpg",
      "gallery": [
        "assets/images/onepiec2.jpg",
        "assets/images/onepiec3.jpg",
        "assets/images/onepiec4.jpg"
      ],
      "desc":
          "One Piece merupakan karya fiksi Eiichiro Oda yang bercerita tentang seorang remaja (Luffy) yang ingin mewujudkan cita-citanya untuk mengarungi lautan dan menjadi seorang raja bajak laut.",
    },
    {
      "nama": "Upin Ipin",
      "jenis": "Kartun",
      "image": "assets/images/upinipin.jpg",
      "gallery": [
        "assets/images/upinipin2.jpg",
        "assets/images/upinipin3.jpg",
        "assets/images/upinipin4.jpg"
      ],
      "desc":
          "Upin & Ipin adalah serial televisi animasi anak-anak yang dirilis pada 14 September 2007 di Malaysia dan disiarkan di TV9",
    },
    {
      "nama": "Spombob",
      "jenis": "Kartun",
      "image": "assets/images/spombob.jpg",
      "gallery": [
        "assets/images/spombob2.jpg",
        "assets/images/spombob3.jpg",
        "assets/images/spombob4.jpg"
      ],
      "desc":
        "Kisah dalam SpongeBob Squarepants berpusat pada kehidupan makhluk laut di kota Bikini Bottom, nama yang diambil dari bebatuan karang Bikini Atoll di Samudera Pasifik.",
    },
    {
      "nama": "Boboboy",
      "jenis": "Kartun",
      "image": "assets/images/boboboy.jpg",
      "gallery": [
        "assets/images/boboby2.jpg",
        "assets/images/boboboy3.jpg",
        "assets/images/boboboy4.jpg"
      ],
      "desc":
          "menceritakan tentang seorang anak yang memiliki kekuatan luar biasa untuk melawan makhluk asing yang ingin menyerang Bumi.",
    },
      {
        "nama": "Gumbal",
        "jenis": "Kartun",
        "image": "assets/images/gumbal.jpg",
        "gallery": [
          "assets/images/gumbal2.jpg",
          "assets/images/gumbal3.jpg",
          "assets/images/gumbal4.jpg"
        ],
        "desc":
            "Gumball digambarkan sebagai orang ceria, imajinatif, optimis, dan nakal. ",
      },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kartun'),
        backgroundColor: Color.fromARGB(255, 236, 50, 202),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/art.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: kartunData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailKartun(
                        nama: kartunData[index]["nama"],
                        jenis: kartunData[index]["jenis"],
                        image: kartunData[index]["image"],
                        gallery: kartunData[index]["gallery"],
                        desc: kartunData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${kartunData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${kartunData[index]["nama"]} - ${kartunData[index]["jenis"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}