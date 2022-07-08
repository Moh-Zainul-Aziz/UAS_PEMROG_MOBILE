import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[createHeader(), createSubTitle(), createCartList(), footer(context)],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: const Text(
                  "Total :",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Text(
                  "Rp. 300.000.",
                  style: TextStyle(color: Colors.greenAccent.shade700, fontSize: 14),
                ),
              ),
            ],
          ),
         
          RaisedButton(
            onPressed: () {
            },
            color: Colors.green,
            padding: const EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(const Radius.circular(24))),
            child: const Text(
              "Checkout",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Container(
      alignment: Alignment.topLeft,
      
      child: const Text(
        "SHOPPING CART",
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),

      margin: const EdgeInsets.only(left: 12, top: 12),
    );
  }

  createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: const Text(
        "Total(3) Items",
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      margin: const EdgeInsets.only(left: 12, top: 4),
    );
  }

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 3,
    );
  }

  createCartListItem() {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: const BoxDecoration(color: Colors.white, borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: const DecorationImage(image: AssetImage("img/jeruk.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(right: 8, top: 4),
                        child: const Text(
                          "Jeruk Nipis",
                          maxLines: 2,
                          softWrap: true,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              "100.000",
                              style: TextStyle(color: Colors.green),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10, top: 8),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(const Radius.circular(4)), color: Colors.green),
          ),
        )
      ],
    );
  }
}