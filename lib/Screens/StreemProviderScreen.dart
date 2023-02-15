import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/StreemProviderViewModel.dart';
class StreemProviderScreen extends ConsumerWidget {
  const StreemProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final streamvalue = ref.watch(streamvalueProvider);


    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("StreemProvider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
             child: streamvalue.when(data: (data){
               return Text("here value: ${data}");
             }, error: (error,_){
               Center(
                 child: Text("error occoured"),
               );
             }, loading: (){
               Center(
                 child:CircularProgressIndicator() ,
               );
             }),
           )
          ],
      ),
    ));
  }
}
