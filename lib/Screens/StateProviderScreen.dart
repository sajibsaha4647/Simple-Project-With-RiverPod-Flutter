import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/ProviderViewModel.dart';
import '../Providers/StateProviderViewModel.dart';
class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var providerviewmodel = ref.watch(mystateProvider);
    var test = ref.watch(providerviewmodel.valueprovider);
    var test2 = ref.watch(providerviewmodel.increval);

    ref.listen(providerviewmodel.increval, (previous, next) {
      print("${previous}....${next}");
    });

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("StateProvider"),
      ),
      body: Column(
        children: [
          InkWell(
              onTap: (){
                ref.read(providerviewmodel.valueprovider);
              },
              child: Text("${test[0]["sajib"]}")),
          SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: (){
                ref.read(providerviewmodel.increval.notifier).state++;
              },
              child: Text("${test2}")),
          InkWell(
              onTap: (){
                ref.invalidate(providerviewmodel.increval);
              },
              child: Text("invalidated ${test2}")),
        ],
      ),
    ));
  }
}
