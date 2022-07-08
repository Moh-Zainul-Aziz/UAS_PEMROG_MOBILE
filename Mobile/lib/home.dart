 import 'package:flutter/material.dart';
 import 'cart.dart';
    void main() {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ));
    }
    
    class Home extends StatefulWidget {
      const Home({Key? key}) : super(key: key);
    
      @override
      _MyAppState createState() => _MyAppState();
    }
    
    class _MyAppState extends State<Home> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Home"),
            ),
          ),
          body: GridView.count(
            //widget yang akan ditampilkan dalam 1 baris adalah 2
            crossAxisCount: 2,
            children: [
              //card ditampilkan disini
              //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
              CustomCard(title: "Jeruk Nipis",harga: "Rp 200.000.000", image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/12/31/9fdc210f-0323-47e8-b800-f22585c61b48.jpg"),
              CustomCard(title: "Apel Merah",harga: "Rp 200.000.000", image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/10/14/a7493602-1d6c-4ed5-bc8a-eaeeea3856b6.jpg"),
              CustomCard(title: "Duren",harga: "Rp 200.000.000", image: "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/12/9/57cb823a-ca79-43b4-851a-a935e8abbbbb.jpg"),
              CustomCard(title: "Semangka",harga: "Rp 200.000.000", image: "https://cf.shopee.co.id/file/9ee8b1c4aa26c919b57a5fc38a53af87"),
            ],
          ),
        );
      }
    }
    
    //membuat customcard yang bisa kita panggil setiap kali dibutuhkan
    class CustomCard extends StatelessWidget {
    
      //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
      //parameter ini akan mengisi title dan gambar pada setiap card
      CustomCard({required this.title,required this.harga, required this.image});
    
      String title;
      String image;
      String harga;
    
      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            //menambahkan bayangan
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(title,
                   style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(harga),
                ),
                MaterialButton(
                 padding: const EdgeInsets.all(10),
                 child: Text('Beli', style: TextStyle(color: Colors.white),),
                 color: Color.fromARGB(255, 71, 220, 57),
                 onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  CartPage(),
                    )
                    );
                 },
                ),  
              ],
            ),
          ),
        );
      }
    }
