import 'package:go_router/go_router.dart';

import 'features/form/form_controller.dart';
import 'features/form/form_page.dart';

GoRouter get routes => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => FormPage(controller: FormController()),
        )
      ],
    );
