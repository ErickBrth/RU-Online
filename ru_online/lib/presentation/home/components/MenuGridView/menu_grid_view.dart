import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'menu_card.dart';

class MenuGridView extends StatefulWidget {
  const MenuGridView({super.key});

  @override
  State<MenuGridView> createState() => _MenuGridViewState();
}

class _MenuGridViewState extends State<MenuGridView> {
  final List<Map<String, String>> menuItems = [
    {
      'image': 'https://dayfeed.com.br/wp-content/uploads/2024/02/423515365_17878576497010770_8250443779821015490_n-850x560.jpg',
      'title': 'Frango a parmegiana'
    },
    {
      'image': 'https://img.saborosos.com.br/imagens/berinjela-a-parmegiana-848x477.jpg',
      'title': 'Berinjela a parmegiana'
    },
    {
      'image': 'https://s2-receitas.glbimg.com/_SCth24saE9t5ikCVxDa-cS4UsY=/0x0:1280x800/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/r/u/0v67sWR6ST28ShUfu3dA/abobora-refogada.jpg',
      'title': 'Batata doce e jerimum cozidos'
    },
    {
      'image': 'https://www.saboresajinomoto.com.br/uploads/images/recipes/escondidinho-de-carne-moida.jpg',
      'title': 'Escondidinho de carne'
    },
    {
      'image': 'https://melepimenta.com/wp-content/uploads/2018/09/Salada-folhas-damascos-passas-Baixa-1.jpg.webp',
      'title': 'Mix de folhas'
    },
    {
      'image': 'https://as1.ftcdn.net/v2/jpg/04/62/95/32/1000_F_462953237_YMrPzp3Kzj81liGOgUc7vXax5AD3bogF.jpg',
      'title': 'Feijão tropeiro'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.50,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuCard(
            image: menuItems[index]['image']!,
            title: menuItems[index]['title']!,
          );
        },
      ),
    );
  }
}