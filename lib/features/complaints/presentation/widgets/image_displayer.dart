import 'dart:io';
import 'package:flutter/material.dart';

class SmallPhotoCarousel extends StatelessWidget {
  final List<String>? networkImages;
  final List<File>? localImages;

  const SmallPhotoCarousel({
    super.key,
    this.networkImages,
    this.localImages,
  });

  @override
  Widget build(BuildContext context) {
    final int itemCount =
        networkImages?.length ?? localImages?.length ?? 0;

    if (itemCount == 0) {
      return const Text("No images available");
    }

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          Widget imageWidget;

 
          if (networkImages != null) {
            imageWidget = Image.network(
              networkImages![index],
              fit: BoxFit.cover,
            );
          }
          else {
            imageWidget = Image.file(
              localImages![index],
              fit: BoxFit.cover,
            );
          }

          return GestureDetector(
            onTap: () => _openPreview(context, index),
            child: Container(
              width: 90,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: imageWidget,
              ),
            ),
          );
        },
      ),
    );
  }


  void _openPreview(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: networkImages != null
            ? Image.network(networkImages![index])
            : Image.file(localImages![index]),
      ),
    );
  }
}