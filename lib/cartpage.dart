import 'package:flutter/material.dart';
import 'package:shopapp/global_variable.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(
              fontFamily: "Lato",
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 43, 72),
      ),
      backgroundColor: const Color.fromARGB(255, 7, 43, 72),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            final cartdetails = cart[index];
            return ListTile(
                title: Text(cartdetails['title'] as String,
                    style: const TextStyle(
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                subtitle: Text("Size:${cartdetails['size']}",
                    style: const TextStyle(
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(cartdetails['imgurl'].toString()),
                  radius: 30,
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      print("delete");
                    });
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ));
          },
        ),
      ),
    );
  }
}
