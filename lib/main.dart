import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_reverpod/Screens/HomeScreens.dart';

void main() {
  runApp(ProviderScope(child:  MyApp()));
}

final counterProvider = StateProvider((ref) => 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: Scaffold(body: ProviderScope(child: MyHomePage()))),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final counter = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) { 
      if(counter == 5){
       showDialog(context: context, builder: (context){
         return AlertDialog(
           title: Text("warning"),
           content: Text("counter is increasing"),
           actions: [
             TextButton(onPressed: (){
               Navigator.of(context).pop();
             }, child: Text("Ok"))
           ],
         );

       });
      }
    });

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("counter"),
        actions: [
          IconButton(onPressed: (){
            ref.invalidate(counterProvider);
          }, icon: Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ref.read(counterProvider.notifier).state++;
      },
        child: Icon(Icons.add),
      ),
      body: Center  (child: HomeScreen())
    ));
  }
}

