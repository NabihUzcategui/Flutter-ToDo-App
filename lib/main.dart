import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/screens/home_screen.dart';
import 'package:flutter_todo_app/todo_bloc/todo_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          onBackground: Colors.black,
          primary: Colors.cyanAccent,
          onPrimary: Colors.black,
          secondary: Colors.green,
          onSecondary: Colors.white,
        ),
      ),
      home: BlocProvider<TodoBloc>(
        create: (context) => TodoBloc()
          ..add(
            TodoStarted(),
          ),
        child: const HomeScreen(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:path_provider/path_provider.dart';

// import 'screens/home_screen.dart';
// import 'simple_bloc_observer.dart';
// import 'todo_bloc/todo_bloc.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   HydratedBloc.storage = await HydratedStorage.build(
//     storageDirectory: await getTemporaryDirectory(),
//   );
//   Bloc.observer = SimpleBlocObserver();
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Todo App',
//       theme: ThemeData(
//         colorScheme: const ColorScheme.light(
//             background: Colors.white,
//             onBackground: Colors.black,
//             primary: Colors.yellowAccent,
//             onPrimary: Colors.black,
//             secondary: Colors.lightGreen,
//             onSecondary: Colors.white),
//       ),
//       home: BlocProvider<TodoBloc>(
//         create: (context) => TodoBloc()..add(TodoStarted()),
//         child: const HomeScreen(),
//       ),
//     );
//   }
// }
