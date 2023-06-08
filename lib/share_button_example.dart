import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareButtonExample extends StatelessWidget {
  const ShareButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: const Text('Paylaş'),
      onPressed: () {
        if (Platform.isAndroid) {
          Share.share(
              'https://play.google.com/store/apps/details?id=com.dousoftware.bilgilenelim&gl=TR',
              subject: 'Bilgilenelim');
        } else if (Platform.isIOS) {
          Share.share(
              'https://apps.apple.com/tr/app/pubg-mobile/id1330123889?l=tr',
              subject: 'PUBG Mobile');
        }
      },
    ));
  }
}
