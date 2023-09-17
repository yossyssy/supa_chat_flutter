import 'package:flutter/material.dart';
import 'package:supa_chat_flutter/pages/top_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // packageをインポート

Future<void> main() async {
  // main関数をFutureに変更
  WidgetsFlutterBinding.ensureInitialized(); // Flutterの初期化を確認
  await dotenv.load(fileName: '.env'); // .envファイルを読み込み
  final String anonKey = dotenv.env['SUPABASE_ANON'] ?? ''; // Anon keyを.envから取得
  final String projectUrl = dotenv.env['SUPABASE_URL'] ?? ''; // URLを.envから取得

  await Supabase.initialize(
    anonKey: anonKey, // プロジェクトAnon key
    url: projectUrl, // プロジェクトURL
  );
  runApp(const MainApp());
}

// void main() {
//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TopPage(),
    );
  }
}

// final String? token = dotenv.env['SUPABASE_ANON']; // .env に記述したアクセストークンを取得