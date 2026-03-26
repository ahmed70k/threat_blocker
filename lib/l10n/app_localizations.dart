import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @phishingAnalyzer.
  ///
  /// In en, this message translates to:
  /// **'Phishing Analyzer'**
  String get phishingAnalyzer;

  /// No description provided for @securityOverview.
  ///
  /// In en, this message translates to:
  /// **'Security Overview'**
  String get securityOverview;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @analyzeLink.
  ///
  /// In en, this message translates to:
  /// **'Analyze Link'**
  String get analyzeLink;

  /// No description provided for @scanSuspiciousUrl.
  ///
  /// In en, this message translates to:
  /// **'Scan a suspicious URL for threats'**
  String get scanSuspiciousUrl;

  /// No description provided for @safetyTips.
  ///
  /// In en, this message translates to:
  /// **'Safety Tips'**
  String get safetyTips;

  /// No description provided for @learnStayProtected.
  ///
  /// In en, this message translates to:
  /// **'Learn how to stay protected'**
  String get learnStayProtected;

  /// No description provided for @recentActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get recentActivity;

  /// No description provided for @historyScannedLinks.
  ///
  /// In en, this message translates to:
  /// **'History of your scanned links'**
  String get historyScannedLinks;

  /// No description provided for @yourSafetyScore.
  ///
  /// In en, this message translates to:
  /// **'Your Safety Score'**
  String get yourSafetyScore;

  /// No description provided for @greatProtection.
  ///
  /// In en, this message translates to:
  /// **'Great Protection'**
  String get greatProtection;

  /// No description provided for @safetyScorePercent.
  ///
  /// In en, this message translates to:
  /// **'92%'**
  String get safetyScorePercent;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @newSafetyTip.
  ///
  /// In en, this message translates to:
  /// **'New Safety Tip'**
  String get newSafetyTip;

  /// No description provided for @safetyTipDesc.
  ///
  /// In en, this message translates to:
  /// **'Learn how to spot fake login pages in 3 easy steps.'**
  String get safetyTipDesc;

  /// No description provided for @twoHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'2h ago'**
  String get twoHoursAgo;

  /// No description provided for @systemUpdate.
  ///
  /// In en, this message translates to:
  /// **'System Update'**
  String get systemUpdate;

  /// No description provided for @systemUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Our detection engine has been updated with the latest threat data.'**
  String get systemUpdateDesc;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @scanWarning.
  ///
  /// In en, this message translates to:
  /// **'Scan Warning'**
  String get scanWarning;

  /// No description provided for @scanWarningDesc.
  ///
  /// In en, this message translates to:
  /// **'You recently scanned a link that was flagged as high risk.'**
  String get scanWarningDesc;

  /// No description provided for @twoDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'2 days ago'**
  String get twoDaysAgo;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @highRiskDetected.
  ///
  /// In en, this message translates to:
  /// **'High Risk Detected'**
  String get highRiskDetected;

  /// No description provided for @phishingWarningMessage.
  ///
  /// In en, this message translates to:
  /// **'This link shows signs of phishing behavior. We recommend not visiting this site.'**
  String get phishingWarningMessage;

  /// No description provided for @exampleRiskUrl.
  ///
  /// In en, this message translates to:
  /// **'https://bit.ly/secure-login-update'**
  String get exampleRiskUrl;

  /// No description provided for @analysisResult.
  ///
  /// In en, this message translates to:
  /// **'Analysis Result'**
  String get analysisResult;

  /// No description provided for @securityDetails.
  ///
  /// In en, this message translates to:
  /// **'Security Details'**
  String get securityDetails;

  /// No description provided for @certificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get certificate;

  /// No description provided for @certificateDesc.
  ///
  /// In en, this message translates to:
  /// **'Valid but recently issued'**
  String get certificateDesc;

  /// No description provided for @redirects.
  ///
  /// In en, this message translates to:
  /// **'Redirects'**
  String get redirects;

  /// No description provided for @redirectsDesc.
  ///
  /// In en, this message translates to:
  /// **'3 redirects detected'**
  String get redirectsDesc;

  /// No description provided for @domainAge.
  ///
  /// In en, this message translates to:
  /// **'Domain Age'**
  String get domainAge;

  /// No description provided for @domainAgeDesc.
  ///
  /// In en, this message translates to:
  /// **'Only 4 days old'**
  String get domainAgeDesc;

  /// No description provided for @returnHome.
  ///
  /// In en, this message translates to:
  /// **'Return to Home'**
  String get returnHome;

  /// No description provided for @reportFalsePositive.
  ///
  /// In en, this message translates to:
  /// **'Report False Positive'**
  String get reportFalsePositive;

  /// No description provided for @phishingLinkAnalyzer.
  ///
  /// In en, this message translates to:
  /// **'Phishing Link\nAnalyzer'**
  String get phishingLinkAnalyzer;

  /// No description provided for @staySafeDigitalWorld.
  ///
  /// In en, this message translates to:
  /// **'Stay safe in the digital world'**
  String get staySafeDigitalWorld;

  /// No description provided for @enterUrlToScan.
  ///
  /// In en, this message translates to:
  /// **'Enter URL to scan'**
  String get enterUrlToScan;

  /// No description provided for @copyPasteLinkDescription.
  ///
  /// In en, this message translates to:
  /// **'Copy and paste the link you want to verify. We will check it against our database of known threats.'**
  String get copyPasteLinkDescription;

  /// No description provided for @pleaseEnterUrl.
  ///
  /// In en, this message translates to:
  /// **'Please enter URL'**
  String get pleaseEnterUrl;

  /// No description provided for @exampleUrlHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/login'**
  String get exampleUrlHint;

  /// No description provided for @startAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Start Analysis'**
  String get startAnalysis;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter email'**
  String get pleaseEnterEmail;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter Password'**
  String get pleaseEnterPassword;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @noAccountRegister.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Register'**
  String get noAccountRegister;

  /// No description provided for @name_hint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name_hint;

  /// No description provided for @email_hint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email_hint;

  /// No description provided for @password_hint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password_hint;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password_hint;

  /// No description provided for @name_validator.
  ///
  /// In en, this message translates to:
  /// **'Please enter Name'**
  String get name_validator;

  /// No description provided for @email_validator.
  ///
  /// In en, this message translates to:
  /// **'Please enter Email'**
  String get email_validator;

  /// No description provided for @password_validator.
  ///
  /// In en, this message translates to:
  /// **'Please enter Password'**
  String get password_validator;

  /// No description provided for @confirm_password_validator.
  ///
  /// In en, this message translates to:
  /// **'Please enter Confirm Password'**
  String get confirm_password_validator;

  /// No description provided for @register_button.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register_button;

  /// No description provided for @analysis_title.
  ///
  /// In en, this message translates to:
  /// **'Analyzing Link Safety'**
  String get analysis_title;

  /// No description provided for @analysis_description.
  ///
  /// In en, this message translates to:
  /// **'Checking for malware, phishing attempts, and suspicious redirection paths.'**
  String get analysis_description;

  /// No description provided for @analysis_progress.
  ///
  /// In en, this message translates to:
  /// **'Analyzing security certificates (65%)'**
  String get analysis_progress;

  /// No description provided for @scanning_link.
  ///
  /// In en, this message translates to:
  /// **'Scanning Link...'**
  String get scanning_link;

  /// No description provided for @only_four_days_old.
  ///
  /// In en, this message translates to:
  /// **'Only 4 days old'**
  String get only_four_days_old;

  /// No description provided for @valid_recently_issued.
  ///
  /// In en, this message translates to:
  /// **'Valid but recently issued'**
  String get valid_recently_issued;

  /// No description provided for @phishing_link_analyzer.
  ///
  /// In en, this message translates to:
  /// **'Phishing Link\nAnalyzer'**
  String get phishing_link_analyzer;

  /// No description provided for @stay_safe_digital_world.
  ///
  /// In en, this message translates to:
  /// **'Stay safe in the digital world'**
  String get stay_safe_digital_world;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
