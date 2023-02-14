import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_reverpod/Providers/FutureProviderViewModel.dart';

import '../Services/Apiservices.dart';

class FutureProviderDetails extends ConsumerWidget {
  const FutureProviderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var futuresingleindexProvider = ref.watch(viewModelfutureProvider.select((value) => value.singleIndex));
    var checksingleindex = ref.read(futuresingleindexProvider);

    var trygetlist = ref.watch(viewDetailswatchProvider);
    // var readresponse = ref.read(trygetlist);

    print("readresponse");
    print(trygetlist);
    return SafeArea(child: Scaffold(
      body: Column(
        children: [

        ],
      ),
    ));
  }
}
