library manga_excuse;

import 'package:manga_excuse/manga_excuse.dart';

export 'package:flutter/material.dart';
export 'bootstrap/app_bootstrap.dart';

void main() => AppBootstrap.I.boot(
      runApp: runApp,
      initRoute: (injection) {
        return 'authSingIn';
      },
    );
