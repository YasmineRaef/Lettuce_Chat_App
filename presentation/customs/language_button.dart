import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lib_getx_template/app/app_localizations.dart';
import 'package:lib_getx_template/data/get_storage.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({super.key});

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("language".translateS(context)),
      const Gap(10),
      IconButton(
          onPressed: () {
            setState(() {
              if (checkCurrentLocale() == true) {
                myLocale = const Locale('ar');
              } else {
                myLocale = const Locale('en');
              }
              changeLocal(myLocale);
              box.write('local', myLocale);
              //   box.listen(() {
              //   print(box.read('local'));
              // });
            });
          },
          icon: const Icon(Icons.language))
    ]);
  }
}
