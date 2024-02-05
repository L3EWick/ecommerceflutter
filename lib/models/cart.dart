import 'package:flutter/material.dart';
import 'package:studingwidgets/models/shoe.dart';

class Cart extends ChangeNotifier{

List<Shoe> shoeShop = [

      Shoe(
          name: 'KD Trey 5', 
          price: '168', 
          description: 'Cool shoe', 
          imagePath: 'lib/images/1.png'
    ),
      Shoe(
          name: 'Air Zoom', 
          price: '117', 
          description: 'Cool shoe', 
          imagePath: 'lib/images/2.png'
    ),
      Shoe(
          name: 'Jordans One Take 4', 
          price: '257', 
          description: 'Cool shoe', 
          imagePath: 'lib/images/3.png'
    ),
      Shoe(
          name: 'Air Zoom Alphafly Next', 
          price: '359', 
          description: 'Cool shoe', 
          imagePath: 'lib/images/4.png'
    ),
      Shoe(
          name: 'Invincible 3', 
          price: '458', 
          description: 'Cool shoe', 
          imagePath: 'lib/images/5.png'
    ),

  ];

List<Shoe> userCart = [

];

List<Shoe> getShoeList(){
  return shoeShop;
} 

List<Shoe> getUserCart(){
  return userCart;
} 

void addItemToCart(Shoe shoe){
    userCart.add(shoe);
}

void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
}

}