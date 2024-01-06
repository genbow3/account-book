import 'package:account_book/models/resources/custom_annotations.dart';
import 'package:flutter/material.dart';

/// アプリの設定項目などを一覧表示する画面
@DocumentAnnotation()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Divider(endIndent: 10, indent: 10),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('カテゴリー編集'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(endIndent: 10, indent: 10),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('収支リセット'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(endIndent: 10, indent: 10),
      ],
    );
  }
}
