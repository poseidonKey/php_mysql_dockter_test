import 'package:board/presentation/home_screen.dart';
import 'package:board/presentation/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/repository/board_repository_impl.dart';
import 'data/source/remote/board_api.dart';

void main() {
  runApp(
    ChangeNotifierProvider.value(
      value: HomeViewModel(BoardRepositoryImpl(api: BoardApi())),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
