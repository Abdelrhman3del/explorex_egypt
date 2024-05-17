// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Historical Places`
  String get AppBarMuseumScreen {
    return Intl.message(
      'Historical Places',
      name: 'AppBarMuseumScreen',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchBar {
    return Intl.message(
      'Search',
      name: 'searchBar',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get Notification {
    return Intl.message(
      'Notification',
      name: 'Notification',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get ContactUs {
    return Intl.message(
      'Contact us',
      name: 'ContactUs',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get AboutUs {
    return Intl.message(
      'About us',
      name: 'AboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Favorite List`
  String get List {
    return Intl.message(
      'Favorite List',
      name: 'List',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get TermsConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'TermsConditions',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `The GrandEgyptian Museum`
  String get TheGrandEgyptianMuseum {
    return Intl.message(
      'The GrandEgyptian Museum',
      name: 'TheGrandEgyptianMuseum',
      desc: '',
      args: [],
    );
  }

  /// `ViewProfile`
  String get ViewProfile {
    return Intl.message(
      'ViewProfile',
      name: 'ViewProfile',
      desc: '',
      args: [],
    );
  }

  /// `Kafr Nassar, Al Giza Desert, Giza Governorate 3513204`
  String get LocationMuseum {
    return Intl.message(
      'Kafr Nassar, Al Giza Desert, Giza Governorate 3513204',
      name: 'LocationMuseum',
      desc: '',
      args: [],
    );
  }

  /// `Personal information`
  String get PersonalInformation {
    return Intl.message(
      'Personal information',
      name: 'PersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get PhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get EmailAddress {
    return Intl.message(
      'Email Address',
      name: 'EmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get Country {
    return Intl.message(
      'Country',
      name: 'Country',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get ChangePassword {
    return Intl.message(
      'Change password',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Remove Account`
  String get RemoveAccount {
    return Intl.message(
      'Remove Account',
      name: 'RemoveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Personal information`
  String get EditPersonalInformation {
    return Intl.message(
      'Edit Personal information',
      name: 'EditPersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove your account`
  String get TittleRemoveAccount {
    return Intl.message(
      'Are you sure you want to remove your account',
      name: 'TittleRemoveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get Remove {
    return Intl.message(
      'Remove',
      name: 'Remove',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
