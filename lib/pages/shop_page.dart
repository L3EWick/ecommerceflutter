import 'package:flutter/material.dart';
import 'package:studingwidgets/components/shoe_tile.dart';
import 'package:studingwidgets/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          // search bar
          
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: 
              BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Search',
                style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey  
                ),
              ],
            )
          ),
          
          // message

          Padding(
            padding: const EdgeInsets.symmetric(vertical:25.0),
            child: Text(
              'everyone files.. some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                 Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              //create a new shoe
              Shoe shoe = Shoe(
                name: 'KD Trey 5', 
                price: '458', 
                description: 'Cool shoe', 
                imagePath: 'lib/images/1.png'
                );
              return ShoeTile(

              shoe: shoe,
                
              );
             },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left:25, right: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
    );
  }
}