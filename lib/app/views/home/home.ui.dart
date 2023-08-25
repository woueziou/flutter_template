import 'package:fantassin/app/core/settings/model.dart';
import 'package:fantassin/app/core/vendors/get_id_locator.dart';
import 'package:fantassin/app/views/home/home.controller.dart';
import 'package:fantassin/helpers/manager/ui.base.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(AppSettings.appName),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            locator<HomeController>().increment();
          },
          child: const Icon(Icons.add)),
      body: BaseUi<HomeController>(builder: (context, controller, child) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 24.sp),
              )
            ],
          ),
        );
      }),
    );
  }
}
