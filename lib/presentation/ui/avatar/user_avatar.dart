import 'package:flutter/material.dart';

import '../../../core/theme/theme_extensions.dart';
import '../wrappers/tappable.dart';
import '../wrappers/telegram/telegram_user_wrapper.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.size,
    super.key,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return TelegramUserWrapper(builder: (context, user) {
      return Tappable(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox.square(
            dimension: size ?? 60,
            child: user.photoUrl != null
                ? Image.network(
                    user.photoUrl!,
                    webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
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
                      user.avatarLetter,
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
