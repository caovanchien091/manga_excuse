import 'package:manga_excuse/manga_excuse.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

void main() => AppBootstrap.I.boot(
      initRoute: (injection) {
        return MainRoute.launch;
      },
      complete: (initRoute, onGenerate, onUnknown) {
        runApp(
          Application(
            initRoute: initRoute,
            onGenerateRoute: onGenerate,
            onUnknownRoute: onUnknown,
          ),
        );
      },
    );
