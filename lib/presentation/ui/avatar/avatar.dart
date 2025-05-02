import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    required this.photoUrl,
    this.size,
    super.key,
  });

  final double? size;
  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox.square(
        dimension: size ?? 60,
        child: Image.network(
          photoUrl,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, imageChunkEvent) {
            if (imageChunkEvent == null) return child;

            return CircularProgressIndicator(
              strokeWidth: 10,
              strokeCap: StrokeCap.round,
              value: _progress(
                imageChunkEvent.cumulativeBytesLoaded,
                imageChunkEvent.expectedTotalBytes,
              ),
            );
          },
        ),
      ),
    );
  }

  double? _progress(int? bytesLoaded, int? totalBytes) {
    if (bytesLoaded != null && totalBytes != null) {
      return bytesLoaded / totalBytes;
    }
    return null;
  }
}
