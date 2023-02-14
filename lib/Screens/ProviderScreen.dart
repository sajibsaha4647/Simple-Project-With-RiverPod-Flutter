import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/ProviderViewModel.dart';
class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref  ) {

    var providerviewmodel = ref.watch(myProvider);
    var test = ref.watch(providerviewmodel.valueprovider);

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
          children: [
            InkWell(
                onTap: (){
                  ref.read(providerviewmodel.valueprovider);
                },
                child: Text("${test}"))
          ],
      ),
    ));
  }
}
