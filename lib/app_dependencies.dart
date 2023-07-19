import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shop_app/util/dio_util.dart';

class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    //TODO: Provider
    // 
    // return MultiProvider(
    //   providers: [
    //     Provider(create: (context) => DioUtil().dio),
    //     Provider(
    //       create: (context) => AppClient(
    //         context.read(),
    //       ),
    //     ),
    //   ],
    //   child: child,
    // );
  }
}