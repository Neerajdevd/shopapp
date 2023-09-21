import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  final String text;
  final String image;
  final double price;

  const Productcard(
      {super.key,
      required this.text,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children:
             [
              Positioned(
                child: Container(
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(11)),
                  child: Image(
                    image: AssetImage(image),
                    height: 230,
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '\$$price',
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
