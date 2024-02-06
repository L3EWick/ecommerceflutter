import 'package:flutter/material.dart';
import 'package:studingwidgets/models/shoe.dart';

class Cart extends ChangeNotifier{

List<Shoe> shoeShop = [

      Shoe(
          name: 'KD Trey 5', 
          price: '168', 
          description: 'Com seu cabedal leve e sistema de suporte macio, o KD Trey 5 X pode ajudá-lo a flutuar como o KD.', 
          imagePath: 'lib/images/1.png'
    ),
      Shoe(
          name: 'Air Zoom', 
          price: '117', 
          description: 'Uma passada elástica para qualquer corrida, a sensação familiar e perfeita do Peg retorna para ajudá-lo a atingir seus objetivos.', 
          imagePath: 'lib/images/2.png'
    ),
      Shoe(
          name: 'Jordans One Take 4', 
          price: '257', 
          description: 'O solado do Jordan One Take 4 envolve quase até a entressola para que você possa começar, parar ou mudar de direção em um instante.', 
          imagePath: 'lib/images/3.png'
    ),
      Shoe(
          name: 'Air Zoom Alphafly', 
          price: '359', 
          description: 'Depois de dar alguns passos no Nike Air Zoom Alphafly NEXT% 2, você nunca mais verá seu par favorito de tênis de corrida antigo da mesma maneira.', 
          imagePath: 'lib/images/4.png'
    ),
      Shoe(
          name: 'Invincible 3', 
          price: '290', 
          description: 'O Invincible Run 3 possui amortecimento espesso para ajudar você a ficar atento e ativo hoje, amanhã e sempre. ', 
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

void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
} 