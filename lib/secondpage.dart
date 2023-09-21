import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  final Map<String, Object> product;

  const Newpage({super.key, required this.product});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  int selectedsize = 0;
       
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Colors.white,
        titleSpacing: 90,
        title: const SizedBox(
          child: Text("Details",
              style: TextStyle(
                  fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          Text(
              widget.product['t-shirt'] != null
                  ? widget.product['t-shirt'] as String
                  : "",
              style: const TextStyle(
                  fontFamily: "Lato",
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                height: 350,
                child: Image.asset(widget.product['img'] as String),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 190,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 229, 239, 248)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$${widget.product['price']}',
                      style: const TextStyle(
                          fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            (widget.product['sizes'] as List<int>).length,
                        itemBuilder: (context, index) {
                          final size =
                              (widget.product['sizes'] as List<int>)[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedsize = size;
                                });
                              },
                              child: Chip(
                                label: Text(size.toString()),
                                backgroundColor:
                                    selectedsize == size ? Colors.blue : null,
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 50)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Add to Cart",
                                style: TextStyle(
                                    fontFamily: "Lato",
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
