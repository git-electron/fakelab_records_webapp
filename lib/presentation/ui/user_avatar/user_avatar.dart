import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram_wrapper.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.size,
    super.key,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return TelegramWrapper(builder: (context, data) {
      return Clickable(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox.square(
            dimension: size ?? 60,
            child: data.photoUrl != null
                ? Image.network(
                    data.photoUrl!,
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
                  )
                : Container(
                    decoration: BoxDecoration(
                      gradient: context.colors.primaryGradient,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      data.avatarLetter,
                      style: context.styles.header,
                    ),
                  ),
          ),
        ),
      );
    });
  }

  double? _progress(int? bytesLoaded, int? totalBytes) {
    if (bytesLoaded != null && totalBytes != null) {
      return bytesLoaded / totalBytes;
    }
    return null;
  }
}
