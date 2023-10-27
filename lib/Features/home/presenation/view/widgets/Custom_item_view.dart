import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../Core/UTILS/custom_loading.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          errorWidget:(context, url, error) =>  const Icon(Icons.error),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
