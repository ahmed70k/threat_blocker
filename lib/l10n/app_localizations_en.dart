// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get phishingAnalyzer => 'Phishing Analyzer';

  @override
  String get securityOverview => 'Security Overview';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get analyzeLink => 'Analyze Link';

  @override
  String get scanSuspiciousUrl => 'Scan a suspicious URL for threats';

  @override
  String get safetyTips => 'Safety Tips';

  @override
  String get learnStayProtected => 'Learn how to stay protected';

  @override
  String get recentActivity => 'Recent Activity';

  @override
  String get historyScannedLinks => 'History of your scanned links';

  @override
  String get yourSafetyScore => 'Your Safety Score';

  @override
  String get greatProtection => 'Great Protection';

  @override
  String get safetyScorePercent => '92%';

  @override
  String get notifications => 'Notifications';

  @override
  String get newSafetyTip => 'New Safety Tip';

  @override
  String get safetyTipDesc =>
      'Learn how to spot fake login pages in 3 easy steps.';

  @override
  String get twoHoursAgo => '2h ago';

  @override
  String get systemUpdate => 'System Update';

  @override
  String get systemUpdateDesc =>
      'Our detection engine has been updated with the latest threat data.';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get scanWarning => 'Scan Warning';

  @override
  String get scanWarningDesc =>
      'You recently scanned a link that was flagged as high risk.';

  @override
  String get twoDaysAgo => '2 days ago';

  @override
  String get warning => 'Warning';

  @override
  String get highRiskDetected => 'High Risk Detected';

  @override
  String get phishingWarningMessage =>
      'This link shows signs of phishing behavior. We recommend not visiting this site.';

  @override
  String get exampleRiskUrl => 'https://bit.ly/secure-login-update';

  @override
  String get analysisResult => 'Analysis Result';

  @override
  String get securityDetails => 'Security Details';

  @override
  String get certificate => 'Certificate';

  @override
  String get certificateDesc => 'Valid but recently issued';

  @override
  String get redirects => 'Redirects';

  @override
  String get redirectsDesc => '3 redirects detected';

  @override
  String get domainAge => 'Domain Age';

  @override
  String get domainAgeDesc => 'Only 4 days old';

  @override
  String get returnHome => 'Return to Home';

  @override
  String get reportFalsePositive => 'Report False Positive';

  @override
  String get phishingLinkAnalyzer => 'Phishing Link\nAnalyzer';

  @override
  String get staySafeDigitalWorld => 'Stay safe in the digital world';

  @override
  String get enterUrlToScan => 'Enter URL to scan';

  @override
  String get copyPasteLinkDescription =>
      'Copy and paste the link you want to verify. We will check it against our database of known threats.';

  @override
  String get pleaseEnterUrl => 'Please enter URL';

  @override
  String get exampleUrlHint => 'https://example.com/login';

  @override
  String get startAnalysis => 'Start Analysis';

  @override
  String get pleaseEnterEmail => 'Please enter email';

  @override
  String get email => 'Email';

  @override
  String get pleaseEnterPassword => 'Please enter Password';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get noAccountRegister => 'Don\'t have an account? Register';

  @override
  String get name_hint => 'Name';

  @override
  String get email_hint => 'Email';

  @override
  String get password_hint => 'Password';

  @override
  String get confirm_password_hint => 'Confirm Password';

  @override
  String get name_validator => 'Please enter Name';

  @override
  String get email_validator => 'Please enter Email';

  @override
  String get password_validator => 'Please enter Password';

  @override
  String get confirm_password_validator => 'Please enter Confirm Password';

  @override
  String get register_button => 'Register';

  @override
  String get analysis_title => 'Analyzing Link Safety';

  @override
  String get analysis_description =>
      'Checking for malware, phishing attempts, and suspicious redirection paths.';

  @override
  String get analysis_progress => 'Analyzing security certificates (65%)';

  @override
  String get scanning_link => 'Scanning Link...';

  @override
  String get only_four_days_old => 'Only 4 days old';

  @override
  String get valid_recently_issued => 'Valid but recently issued';

  @override
  String get phishing_link_analyzer => 'Phishing Link\nAnalyzer';

  @override
  String get stay_safe_digital_world => 'Stay safe in the digital world';

  @override
  String get signInToProceed => 'Sign in to proceed to your account';

  @override
  String get dontHaveAccount => 'Don\'t have an account? ';

  @override
  String get createAnAccount => 'Create an account to get started';

  @override
  String get register => 'Register';

  @override
  String get safetyTipsTitle => 'Safety Knowledge Base';

  @override
  String get tip1Title => 'Verify the URL carefully';

  @override
  String get tip1Desc =>
      'Always look at the domain name in the address bar. Phishers often use addresses that look very similar to the real ones (e.g., paypa1.com instead of paypal.com).';

  @override
  String get tip2Title => 'HTTPS is not a safety icon';

  @override
  String get tip2Desc =>
      'A lock icon only means the connection is encrypted, not that the site is legitimate. Many phishing sites use HTTPS certificates to appear trustworthy.';

  @override
  String get tip3Title => 'Urgency is a red flag';

  @override
  String get tip3Desc =>
      'Phishing emails often create a false sense of urgency (e.g., \'Your account will be suspended in 24 hours\'). Legitimate companies will rarely communicate this way.';

  @override
  String get tip4Title => 'Avoid link shorteners from strangers';

  @override
  String get tip4Desc =>
      'Be cautious of links using bit.ly or other shorteners when sent via unexpected SMS or DM. Use our tool to scan them before clicking.';

  @override
  String get tip5Title => 'Protect your credentials';

  @override
  String get tip5Desc =>
      'Never share your password or OTP (One-Time Password) over email or chat. Legitimate organizations will never ask for them.';

  @override
  String get activityHistory => 'Activity History';

  @override
  String get noRecentActivity => 'No recent activity found';

  @override
  String get safe => 'Safe';

  @override
  String get malicious => 'Malicious';

  @override
  String get suspicious => 'Suspicious';

  @override
  String get clearAll => 'Clear All';

  @override
  String get confirmReport => 'Confirm Report';

  @override
  String get reportMessage =>
      'Are you sure you want to report this link as a safe site? Our team will review it manually.';

  @override
  String get cancel => 'Cancel';

  @override
  String get report => 'Report';

  @override
  String get thankYouReporting =>
      'Thank you for your feedback! We will review the link.';

  @override
  String get serverLocation => 'Server Location';

  @override
  String get usa => 'United States';

  @override
  String get ipAddress => 'IP Address';

  @override
  String get sampleIp => '104.26.10.228';

  @override
  String get domain => 'Domain';

  @override
  String get sampleDomain => 'google.com';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get locationDetails => 'Location Details';

  @override
  String get city => 'City';

  @override
  String get region => 'Region';

  @override
  String get country => 'Country';

  @override
  String get coordinates => 'Coordinates';

  @override
  String get sampleCity => 'San Francisco';

  @override
  String get sampleRegion => 'California';

  @override
  String get viewOnMap => 'View on Map';

  @override
  String get profile => 'Profile';

  @override
  String get userName => 'Ahmed Mohamed';

  @override
  String get scannedLinks => 'Scanned Links';

  @override
  String get threatsBlocked => 'Threats Blocked';

  @override
  String get proProtectionPlan => 'Pro Protection Plan';

  @override
  String get accountFullyProtected => 'Your account is fully protected';

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get theme => 'Theme';

  @override
  String get language => 'Language';

  @override
  String get helpSupport => 'Help & Support';

  @override
  String get logOut => 'Log Out';
}
