import 'package:account_book/models/resources/custom_annotations.dart';
import 'package:flutter/material.dart';

/// ユーザーにより設定された各カテゴリーに割り振られた予算を表示する。
/// 現在のステータスを可視化することで、容易に当月の残予算を把握できることが目的。
@DocumentAnnotation()
class BudgetsScreen extends StatelessWidget {
  const BudgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Coming soon...'));
  }
}
