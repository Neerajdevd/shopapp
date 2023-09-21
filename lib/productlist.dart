import 'package:flutter/material.dart';
import 'package:shopapp/global_variable.dart';
import 'package:shopapp/itemcard.dart';
import 'package:shopapp/secondpage.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> item = const [
    "Clothes",
    "Bags",
    "Shoes",
    "Shops",
    "Accessories",
  ];
  late String selecteditem;
  void initState() {
    selecteditem = item[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 60, 99),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.list,
        //     size: 35,
        //     color: Colors.white,
        //   ),
        // ),
        titleSpacing: 80,
        title: const Text(
          'Trendy',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 32),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/girl1.jpg"),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 43, 72),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 7, 43, 72),
        surfaceTintColor: Colors.white,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for...",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (context, index) {
                  final items = item[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 2),
                    child: GestureDetector(
                        onTap: () {
                          selecteditem = items;
                        },
                        child: Text(items,
                            style: const TextStyle(
                                fontFamily: "Lato",
                                color: Colors.white,
                                fontSize: 18))),
                  );
                }),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: ((context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Newpage(product: product);
                      }));
                    },
                    child: Productcard(
                      text: product['color'] as String,
                      price: product['price'] as double,
                      image: product['img'] as String,
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
