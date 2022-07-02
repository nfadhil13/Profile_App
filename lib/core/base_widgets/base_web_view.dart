import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suitmedia_assessment/core/base_widgets/base_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BaseWebView extends StatefulWidget {
  final String url;
  const BaseWebView({Key? key, required this.url}) : super(key: key);

  @override
  State<BaseWebView> createState() => _BaseWebViewState();
}

class _BaseWebViewState extends State<BaseWebView> {
     @override
   void initState() {
     super.initState();
     // Enable virtual display.
     if (Platform.isAndroid) WebView.platform = AndroidWebView();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(context, title: ""),
      body: WebView(
        initialUrl: widget.url,
      ),
    );
  }
}
