import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth;
        double cardHeight = cardWidth * 1.65;

        return Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: cardHeight * 0.7,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: GoogleFonts.lato(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start,

                    maxLines: 2, // Limite de linhas para garantir a quebra
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
