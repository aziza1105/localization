// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:localization/generated/codegen_loader.g.dart';
// import 'package:localization/generated/locale_keys.g.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//
//   /// Commands for running easy localization and generating code
//   /// flutter pub run easy_localization:generate -o codegen_loader.g.dart -S lib/assets/strings
//   /// flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S lib/assets/strings
//
//   runApp(EasyLocalization(
//     supportedLocales: const [Locale('uz'), Locale('ru'), Locale('en')],
//     path: 'assets/translations',
//     fallbackLocale: const Locale('uz'),
//     saveLocale: true,
//     assetLoader: const CodegenLoader(),
//     child: const LocalizationApp(),
//   ));
// }
//
// class LocalizationApp extends StatelessWidget {
//   const LocalizationApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       home: Builder(builder: (context) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Localization App"),
//           ),
//         //   body: Column(
//         //     children: [
//         //       Center(
//         //           child: Text(LocaleKeys.welcome.tr(),
//         //               style: const TextStyle(
//         //                 fontSize: 24,
//         //                 fontWeight: FontWeight.w700,
//         //               ),
//         //
//         // )
//         // ),
//         // ]
//         // ),
//           floatingActionButton: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FloatingActionButton.large(
//                   onPressed: () {
//                     context.setLocale(const Locale('uz'));
//                   },
//                   child: const Text("O'zbekcha")),
//               FloatingActionButton.large(
//                   onPressed: () {
//                     context.setLocale(const Locale('ru'));
//                   },
//                   child: const Text("Русский")),
//               FloatingActionButton.large(
//                   onPressed: () {
//                     context.setLocale(const Locale('en'));
//                   },
//                   child: const Text("English"))
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
//
//
//
//
//
// //     Text(
// //       LocaleKeys.days_ago.tr(args: [
// //         '${DateTime.now().difference(DateTime(2009, 4, 27)).inDays}',
// //         '${DateTime.now().difference(DateTime(2009, 4, 27)).inHours}',
// //       ]),
// //       style:
// //           const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
// //     ),
// //   ],
// // ),


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/generated/codegen_loader.g.dart';
import 'package:localization/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [Locale('uz'), Locale('ru'), Locale('en')],
    path: 'assets/translations',
    fallbackLocale: const Locale('uz'),
    saveLocale: true,
    assetLoader: const CodegenLoader(),
    child: const LocalizationApp(),
  ));
}

class LocalizationApp extends StatefulWidget {
  const LocalizationApp({Key? key}) : super(key: key);

  @override
  _LocalizationAppState createState() => _LocalizationAppState();
}

class _LocalizationAppState extends State<LocalizationApp> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    List<String> words = [
      LocaleKeys.welcome.tr(),
      LocaleKeys.days_ago.tr(),
      LocaleKeys.hello.tr(),
      LocaleKeys.back.tr(),
      LocaleKeys.go.tr(),
      LocaleKeys.sleep.tr(),
      LocaleKeys.start.tr(),
      LocaleKeys.stop.tr(),
      LocaleKeys.yes.tr(),
      LocaleKeys.no.tr(),
      LocaleKeys.up.tr(),
      LocaleKeys.down.tr(),
      LocaleKeys.left.tr(),
      LocaleKeys.right.tr(),
      LocaleKeys.morning.tr(),
      LocaleKeys.evening.tr(),
      LocaleKeys.today.tr(),
      LocaleKeys.yesterday.tr(),
      LocaleKeys.tomorrow.tr(),
      LocaleKeys.soon.tr(),
      LocaleKeys.never.tr(),
      LocaleKeys.always.tr(),
      LocaleKeys.maybe.tr(),
      LocaleKeys.definitely.tr(),
      LocaleKeys.possibly.tr(),
      LocaleKeys.clearly.tr(),
      LocaleKeys.obviously.tr(),
      LocaleKeys.perhaps.tr(),
      LocaleKeys.surely.tr(),
      LocaleKeys.actually.tr(),
      LocaleKeys.eventually.tr(),
      LocaleKeys.finalized.tr(),
      LocaleKeys.recently.tr(),
      LocaleKeys.currently.tr(),
      LocaleKeys.previously.tr(),
      LocaleKeys.initially.tr(),
      LocaleKeys.ultimately.tr(),
      LocaleKeys.specifically.tr(),
      LocaleKeys.particularly.tr(),
      LocaleKeys.generally.tr(),
      LocaleKeys.naturally.tr(),
      LocaleKeys.normally.tr(),
      LocaleKeys.usually.tr(),
      LocaleKeys.rarely.tr(),
      LocaleKeys.occasionally.tr(),
      LocaleKeys.frequently.tr(),
      LocaleKeys.constantly.tr(),
      LocaleKeys.regularly.tr(),
      LocaleKeys.often.tr(),
      LocaleKeys.apple.tr(),
    ];

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Localization App"),
          ),
          body: PageView.builder(
            controller: pageController,
            itemCount: words.length,
            itemBuilder: (context, index) {
              return Center(
                child: Text(
                  words[index],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(
                onPressed: () {
                  _changeLanguage(0); // English
                },
                child: const Text("Eglish"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  _changeLanguage(1); // Russian
                },
                child: const Text("Русский"),
              ),
              FloatingActionButton.large(
                onPressed: () {
                  _changeLanguage(2); // Uzbek
                },
                child: const Text("Uzbek"),
              ),
            ],
          ),
        );
      }),
    );
  }

  void _changeLanguage(int languageIndex) {
    setState(() {
      currentIndex = pageController.page!.toInt();
      context.setLocale(
        languageIndex == 0
            ? const Locale('en')
            : languageIndex == 1
            ? const Locale('ru')
            : const Locale('uz'),
      );
    });
  }
}

