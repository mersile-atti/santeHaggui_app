import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
    String? frText = '',
  }) =>
      [enText, arText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'oej4endn': {
      'en': 'SanteHaggui',
      'ar': 'سانتي هاجي',
      'fr': 'SantéHaggui',
    },
    'oazyhkmp': {
      'en': 'Good Morning',
      'ar': 'صباح الخير',
      'fr': 'Bonjour',
    },
    'shxj3c39': {
      'en': 'Search',
      'ar': 'يبحث',
      'fr': 'Recherche',
    },
    't4hudjou': {
      'en': 'Donation Request',
      'ar': 'أخبار صحتي',
      'fr': 'Mon actualité santé',
    },
    'uwe4hr7u': {
      'en': 'See All',
      'ar': 'اظهار الكل',
      'fr': 'Voir tout',
    },
    '6t4dfvbc': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
    },
    '01w7irp3': {
      'en': '•',
      'ar': '•',
      'fr': '•',
    },
  },
  // SplashPage
  {
    '4pvc4vh9': {
      'en': 'SanteHaggui',
      'ar': 'سانتي هاجي',
      'fr': 'SantéHaggui',
    },
    'w1h79zhf': {
      'en': 'Empowering Your Health Journey Through Digital Transformation',
      'ar': 'تمكين رحلتك الصحية من خلال التحول الرقمي',
      'fr':
          'Renforcez votre parcours de santé grâce à la transformation numérique',
    },
    'x3dawvyf': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // OnBoardingPage
  {
    'z6eqk5gj': {
      'en': 'Integrated Medical Records',
      'ar': 'السجلات الطبية المتكاملة',
      'fr': 'Dossiers médicaux intégrés',
    },
    'fd8hgmd0': {
      'en':
          'Access your health data anywhere, anytime. Share it securely with your healthcare providers.',
      'ar':
          'الوصول إلى البيانات الصحية الخاصة بك في أي مكان وفي أي وقت. شاركها بشكل آمن مع مقدمي الرعاية الصحية الخاص بك.',
      'fr':
          'Accédez à vos données de santé partout et à tout moment. Partagez-le en toute sécurité avec vos prestataires de soins de santé.',
    },
    'fywwgo3y': {
      'en': 'Next',
      'ar': 'التالي',
      'fr': 'Suivant',
    },
    'tg37dxdf': {
      'en': 'Women\'s Health Hub',
      'ar': 'مركز صحة المرأة',
      'fr': 'Centre de santé des femmes',
    },
    'ndygoemr': {
      'en':
          'Personalized health and wellness advice tailored to women\'s needs, from menstrual tracking to fertility insights and more.',
      'ar':
          'نصائح مخصصة للصحة والعافية مصممة خصيصًا لتلبية احتياجات المرأة، بدءًا من تتبع الدورة الشهرية وحتى رؤى الخصوبة والمزيد.',
      'fr':
          'Des conseils personnalisés en matière de santé et de bien-être adaptés aux besoins des femmes, du suivi menstruel aux informations sur la fertilité et bien plus encore.',
    },
    'l3tkskzb': {
      'en': 'Next',
      'ar': 'التالي',
      'fr': 'Suivant',
    },
    'wh8ju8se': {
      'en': 'Blood Services Centralized',
      'ar': 'مركزية خدمات الدم',
      'fr': 'Services de sang centralisés',
    },
    'oxjf76ac': {
      'en':
          'Manage blood donations, tests, and other related information. Bridge the gap between donors, hospitals, and health authorities.',
      'ar':
          'إدارة التبرعات بالدم والاختبارات والمعلومات الأخرى ذات الصلة. سد الفجوة بين الجهات المانحة والمستشفيات والسلطات الصحية.',
      'fr':
          'Gérez les dons de sang, les tests et autres informations connexes. Comblez le fossé entre les donateurs, les hôpitaux et les autorités sanitaires.',
    },
    'dx5j3pzw': {
      'en': 'Get Started',
      'ar': 'البدء',
      'fr': 'Commencer',
    },
    'd51349ho': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // LoginPage
  {
    '6s2dr0k7': {
      'en': 'Welcome back!',
      'ar': 'مرحبًا بعودتك!',
      'fr': 'Content de te revoir!',
    },
    'yhe6aqzu': {
      'en': 'Please login to access',
      'ar': 'الرجاء تسجيل الدخول للوصول',
      'fr': 'Veuillez vous connecter pour accéder',
    },
    'im27ejp9': {
      'en': 'Or',
      'ar': 'أو',
      'fr': 'Ou',
    },
    'jt3fugw1': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'j4sw1l57': {
      'en': 'Enter your email or phone number',
      'ar': 'أدخل بريدك الإلكتروني أو رقم هاتفك',
      'fr': 'Entrez votre email ou votre numéro de téléphone',
    },
    'f0z9r8it': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'w4lweft0': {
      'en': 'Enter your password ',
      'ar': 'ادخل رقمك السري',
      'fr': 'Tapez votre mot de passe',
    },
    'w6ljdg8j': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'fr': 'Mot de passe oublié?',
    },
    'ym5h1uhg': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
      'fr': 'Se connecter',
    },
    '6y2eoo61': {
      'en': 'Don’t have an account?',
      'ar': 'ليس لديك حساب؟',
      'fr': 'Vous n\'avez pas de compte ?',
    },
    '3s7p15ft': {
      'en': ' Sign Up',
      'ar': 'اشتراك',
      'fr': 'S\'inscrire',
    },
    '404yq7v9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'qbltmypn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'aafx4jd8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '6t3chnn0': {
      'en': 'Password must be 6 or more characters ',
      'ar': 'يجب أن تتكون كلمة المرور من 6 أحرف أو أكثر',
      'fr': 'Le mot de passe doit contenir 6 caractères ou plus',
    },
    'ow339f98': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'gn9hvk6w': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ForgotPasswordPage
  {
    'fs73sv2f': {
      'en': 'Back',
      'ar': 'خلف',
      'fr': 'Dos',
    },
    '6ootrx7y': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
      'fr': 'Mot de passe oublié',
    },
    'xlw0lupm': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل إليك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez saisir l\'e-mail associé à votre compte ci-dessous.',
    },
    'pk2vsgej': {
      'en': 'Your email address...',
      'ar': 'عنوان بريدك  الإلكتروني...',
      'fr': 'Votre adresse e-mail...',
    },
    'diwtd0iu': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني...',
      'fr': 'Entrer votre Email...',
    },
    'gvsl7abx': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
      'fr': 'Envoyer un lien',
    },
    '3sv0n7bo': {
      'en': 'Back',
      'ar': 'خلف',
      'fr': 'Dos',
    },
    'ohpdgnkw': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // CreateAccountPage
  {
    'q0d6w7d2': {
      'en': 'Get Started!',
      'ar': 'البدء!',
      'fr': 'Commencer!',
    },
    'i5a18976': {
      'en': 'Please register to start',
      'ar': 'يرجى التسجيل للبدء',
      'fr': 'Veuillez vous inscrire pour commencer',
    },
    'weazpv3h': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '4thaule6': {
      'en': 'Enter your Full Name',
      'ar': 'أدخل اسمك الكامل',
      'fr': 'Entrez votre nom complet',
    },
    'hm70v3f3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'iww7steq': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
      'fr': 'Entrer votre Email',
    },
    'd65k3vco': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'duvxib5t': {
      'en': 'Enter your phone number',
      'ar': 'أدخل رقم هاتفك',
      'fr': 'Entrez votre numéro de téléphone',
    },
    'pnj9dttj': {
      'en': 'Male',
      'ar': 'ذكر',
      'fr': 'Mâle',
    },
    'q4sk54qr': {
      'en': 'Female',
      'ar': 'أنثى',
      'fr': 'Femelle',
    },
    'ny4te9ft': {
      'en': 'Sex',
      'ar': 'الجنس',
      'fr': 'Sexe',
    },
    'v8mr964p': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    'ri8n0buy': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '6m8c7cfi': {
      'en': 'Enter your password ',
      'ar': 'ادخل رقمك السري',
      'fr': 'Tapez votre mot de passe',
    },
    '1ngpal65': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '0zatqpsg': {
      'en': 'Enter your password ',
      'ar': 'ادخل رقمك السري',
      'fr': 'Tapez votre mot de passe',
    },
    'mub3x90d': {
      'en': 'You agree to the - ',
      'ar': 'أنت توافق على -',
      'fr': 'Vous acceptez le -',
    },
    'rny6gjjp': {
      'en': 'Terms of use',
      'ar': 'شروط الاستخدام',
      'fr': 'Conditions d\'utilisation',
    },
    'opjsvttg': {
      'en': 'Register',
      'ar': 'يسجل',
      'fr': 'Registre',
    },
    '7afhb5cj': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب؟',
      'fr': 'Vous avez déjà un compte?',
    },
    'p0nxc7bq': {
      'en': ' Login here',
      'ar': 'تسجيل الدخول هنا',
      'fr': 'Connectez-vous ici',
    },
    '49m0j4yb': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'ixqb3z75': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'qw9kns6i': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '9uyw1z2o': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'if4j492e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'rw2aqh5m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'm47ymkif': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'fg1vzfey': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'wahd5pjz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'wwjz4zrh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'snjartnf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'dhhswejm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'g2vggmed': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // VerifySmsPage
  {
    'kwx198hg': {
      'en': 'Verify',
      'ar': 'يؤكد',
      'fr': 'Vérifier',
    },
    '8009qqiv': {
      'en': 'Wrong number ?',
      'ar': 'رقم غير صحيح ؟',
      'fr': 'Mauvais numéro ?',
    },
    'cw4jrjkb': {
      'en': 'Didn\'t received the OTP?',
      'ar': 'لم تتلق كلمة المرور لمرة واحدة؟',
      'fr': 'Vous n\'avez pas reçu l\'OTP ?',
    },
    'httm6f2o': {
      'en': 'Resend',
      'ar': 'إعادة إرسال',
      'fr': 'Renvoyer',
    },
    '4uvbos05': {
      'en': 'Continue',
      'ar': 'يكمل',
      'fr': 'Continuer',
    },
    'caqh05cj': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // CompleteProfilePage
  {
    'vgjcs2v3': {
      'en': 'Complete Profile',
      'ar': 'الملف الشخصي الكامل',
      'fr': 'Profil complet',
    },
    '74mdtexg': {
      'en': 'Upload a photo for us to easily identify you.',
      'ar': 'قم بتحميل صورة لنا للتعرف عليك بسهولة.',
      'fr':
          'Téléchargez une photo pour que nous puissions vous identifier facilement.',
    },
    'eqz3nakj': {
      'en': 'Your Name',
      'ar': 'اسمك',
      'fr': 'votre nom',
    },
    'knup1auo': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
      'fr': 'Nom et prénom',
    },
    '3h18wtd0': {
      'en': 'Enter your email',
      'ar': 'أدخل بريدك الإلكتروني',
      'fr': 'Entrer votre Email',
    },
    'rc67tnwd': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
      'fr': 'Nom et prénom',
    },
    'm2oy7xt2': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'gf6slok8': {
      'en': 'Enter your password',
      'ar': 'ادخل رقمك السري',
      'fr': 'Tapez votre mot de passe',
    },
    'f1pzzehm': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '6z2y47dj': {
      'en': 'Confirm your password',
      'ar': 'أكد رقمك السري',
      'fr': 'Confirmer votre mot de passe',
    },
    '2r1pq56f': {
      'en': 'Your Age',
      'ar': 'عمرك',
      'fr': 'Votre âge',
    },
    'mmxoqvlj': {
      'en': 'i.e. 34',
      'ar': 'أي 34',
      'fr': 'soit 34',
    },
    'no329w7k': {
      'en': 'Ailments',
      'ar': 'الامراض',
      'fr': 'Maladies',
    },
    '0ki75pzv': {
      'en': 'What types of allergies do you have..',
      'ar': 'ما هي أنواع الحساسية لديك..',
      'fr': 'Quels types d’allergies avez-vous ?',
    },
    'nqq8l64g': {
      'en': 'Your Birth Sex',
      'ar': 'جنس ولادتك',
      'fr': 'Votre sexe de naissance',
    },
    '6poj4bxd': {
      'en': 'Male',
      'ar': 'ذكر',
      'fr': 'Mâle',
    },
    'utnd2hxz': {
      'en': 'Female',
      'ar': 'أنثى',
      'fr': 'Femelle',
    },
    'u4b6gdqw': {
      'en': 'Add Another Profile',
      'ar': 'أضف ملفًا شخصيًا آخر',
      'fr': 'Ajouter un autre profil',
    },
    'fessgn24': {
      'en': 'Complete Profile',
      'ar': 'الملف الشخصي الكامل',
      'fr': 'Profil complet',
    },
    '8dwsbx0t': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ProfilePage
  {
    'h73h1cuc': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // SettingPage
  {
    '2afw7bw3': {
      'en': 'Settings Page',
      'ar': 'صفحة الإعدادات',
      'fr': 'Page Paramètres',
    },
    'enu33vp4': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'fr': 'Editer le profil',
    },
    'szid37bm': {
      'en': 'Notification Settings',
      'ar': 'إعدادات الإشعار',
      'fr': 'Paramètres de notification',
    },
    'q10lh7sp': {
      'en': 'About Us',
      'ar': 'معلومات عنا',
      'fr': 'À propos de nous',
    },
    'qu7m2gfh': {
      'en': 'App Settings',
      'ar': 'إعدادات التطبيقات',
      'fr': 'Paramètres de l\'application',
    },
    'jb28wpj9': {
      'en': 'Support',
      'ar': 'يدعم',
      'fr': 'Soutien',
    },
    'o7krpsus': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
      'fr': 'politique de confidentialité',
    },
    'sozsb9rh': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
      'fr': 'termes et conditions',
    },
    'g1pl5q79': {
      'en': 'Follow us on',
      'ar': 'اتبعنا',
      'fr': 'Suivez-nous sur',
    },
    'gbs8ncx9': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // RecordsPage
  {
    'ozgooxba': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'bwsyxrn1': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'kizwk7xg': {
      'en': 'Blood Oxygen',
      'ar': 'أكسجين الدم',
      'fr': 'Oxygène sanguin',
    },
    'i6rfn3fg': {
      'en': 'Height ',
      'ar': 'ارتفاع',
      'fr': 'Hauteur',
    },
    'pds5lje2': {
      'en': 'Weight ',
      'ar': 'وزن',
      'fr': 'Poids',
    },
    'che5lhds': {
      'en': 'Body  Mass Index',
      'ar': 'مؤشر كتلة الجسم',
      'fr': 'Indice de masse corporelle',
    },
    'yl81hfh0': {
      'en': 'Heart Rate',
      'ar': 'معدل ضربات القلب',
      'fr': 'Rythme cardiaque',
    },
    'fy1rmgq0': {
      'en': 'Body Temperature ',
      'ar': 'درجة حرارة الجسم',
      'fr': 'Température corporelle',
    },
    'pj3ucd6w': {
      'en': 'Blood Pressure (systolic)',
      'ar': 'ضغط الدم (الضغط الانقباضي)',
      'fr': 'Pression artérielle (systolique)',
    },
    'rnv3d7qq': {
      'en': 'Blood Pressure (diastolic)',
      'ar': 'ضغط الدم (الانبساطي)',
      'fr': 'Pression artérielle (diastolique)',
    },
    '27t0bdio': {
      'en': 'Total Cholesterol',
      'ar': 'الكولسترول الكلي',
      'fr': 'Cholestérol total',
    },
    '5xm8wjkt': {
      'en': 'LDL Cholesterol',
      'ar': 'الكولسترول الضار',
      'fr': 'Cholestérol LDL',
    },
    'y9waq138': {
      'en': 'HDL Cholesterol',
      'ar': 'الكولسترول الحميد',
      'fr': 'Cholestérol HDL',
    },
    'zycwhzpw': {
      'en': 'Triglycerides',
      'ar': 'الدهون الثلاثية',
      'fr': 'Triglycérides',
    },
    'g1fe5tpu': {
      'en': 'Total Cholesterol And HDL Ratio',
      'ar': 'نسبة الكوليسترول الكلي و HDL',
      'fr': 'Rapport cholestérol total et HDL',
    },
    'blbsry6w': {
      'en': 'Glucose',
      'ar': 'الجلوكوز',
      'fr': 'Glucose',
    },
    '7i0sb0lj': {
      'en': 'Waist Circumference ',
      'ar': 'محيط الخصر',
      'fr': 'Tour de taille',
    },
    'tl1gisbd': {
      'en': 'Health Files',
      'ar': 'ملفات الصحة',
      'fr': 'Fichiers de santé',
    },
    'a96txuqs': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '3kvutcc6': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'p1gn54qf': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    '60rkbc4m': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    '3knf9lmt': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'r7nl5e6c': {
      'en': 'Prescriptions ',
      'ar': 'الوصفات الطبية',
      'fr': 'Ordonnances',
    },
    'e0tq7pdf': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'tvr67kjg': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'ceydwbsy': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    '7tyndxb7': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'tcz0echc': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    't3agtzzp': {
      'en': 'Vaccinations  ',
      'ar': 'التطعيمات',
      'fr': 'Vaccinations',
    },
    'hqxpkuis': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'wk6ulw5b': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    '2cb1t1fj': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'k33br0sa': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'xbiwu7z2': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'y82wyag0': {
      'en': 'Lifestyle   ',
      'ar': 'نمط الحياة',
      'fr': 'Mode de vie',
    },
    '9wcaf0oh': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '1sbu3edj': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'g4zqe3bw': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'w5mvj090': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'g9aklzpg': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'x5dmyuxg': {
      'en': 'Pharmacy',
      'ar': 'مقابل',
      'fr': 'Pharmacie',
    },
    '6jyuyrco': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'oams69zs': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'gko3w81t': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'srzddjad': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    't7cwm5y8': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    '70ad24rm': {
      'en': 'Insurance',
      'ar': 'تأمين',
      'fr': 'Assurance',
    },
    '92yibryp': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '74eitvws': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'y5k0wsvu': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'bj0cg3by': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    '7c3sihyj': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    's5qtuxvw': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // ChatPage
  {
    'z5cvdd67': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AppointmentDetails
  {
    'qcuek6lg': {
      'en': 'Details',
      'ar': 'تفاصيل',
      'fr': 'Détails',
    },
    '51xnnh1k': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'fr': 'Type de rendez-vous',
    },
    '0v01gbzk': {
      'en': 'What’s the problem?',
      'ar': 'ما هي المشكلة؟',
      'fr': 'Quel est le problème?',
    },
    'lfesgqij': {
      'en': 'For',
      'ar': 'ل',
      'fr': 'Pour',
    },
    'vrcrqp3q': {
      'en': 'When',
      'ar': 'متى',
      'fr': 'Quand',
    },
    'ebm1vgyy': {
      'en': 'Reschedule',
      'ar': 'إعادة جدولة',
      'fr': 'Reprogrammer',
    },
    'axcx17t8': {
      'en': 'Cancel Appointment',
      'ar': 'إلغاء التعيين',
      'fr': 'Annuler rendez-vous',
    },
    'czcd0gm7': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // AppointmentDetailsProfil
  {
    'q994in5o': {
      'en': 'Details',
      'ar': 'تفاصيل',
      'fr': 'Détails',
    },
    'hw8jd7q9': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'fr': 'Type de rendez-vous',
    },
    'wokny0zh': {
      'en': 'What’s the problem?',
      'ar': 'ما هي المشكلة؟',
      'fr': 'Quel est le problème?',
    },
    'tia27o70': {
      'en': 'For',
      'ar': 'ل',
      'fr': 'Pour',
    },
    'mxzgsjon': {
      'en': 'When',
      'ar': 'متى',
      'fr': 'Quand',
    },
    '3gr67wpt': {
      'en': 'Remove Appointment',
      'ar': 'إزالة الموعد',
      'fr': 'Supprimer le rendez-vous',
    },
    '21ln0vp5': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // editProfile
  {
    'lt269nyc': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'fr': 'Editer le profil',
    },
    '4ybkxovq': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
      'fr': 'Changer la photo',
    },
    '10kqayra': {
      'en': 'Full Name',
      'ar': 'الاسم الكامل',
      'fr': 'Nom et prénom',
    },
    'xe85p80h': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
      'fr': 'E-mail',
    },
    '6feihaek': {
      'en': 'Your email',
      'ar': 'بريدك الالكتروني',
      'fr': 'Votre email',
    },
    '2vw62rb6': {
      'en': 'i.e. 34',
      'ar': 'أي 34',
      'fr': 'soit 34',
    },
    '9wbxjs5y': {
      'en': 'Ailments',
      'ar': 'الامراض',
      'fr': 'Maladies',
    },
    'eiscg5nk': {
      'en': 'What types of allergies do you have..',
      'ar': 'ما هي أنواع الحساسية لديك..',
      'fr': 'Quels types d’allergies avez-vous ?',
    },
    'szl9rbok': {
      'en': 'Your Birth Sex',
      'ar': 'جنس ولادتك',
      'fr': 'Votre sexe de naissance',
    },
    '6s8x06bl': {
      'en': 'Male',
      'ar': 'ذكر',
      'fr': 'Mâle',
    },
    'px0xlr4m': {
      'en': 'Female',
      'ar': 'أنثى',
      'fr': 'Femelle',
    },
    '4j1jv6sy': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
    'lb1hrb0x': {
      'en': 'Home',
      'ar': 'بيت',
      'fr': 'Maison',
    },
  },
  // listPages
  {
    '6qa23rpk': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    '341c990d': {
      'en': 'Universal Medical identity ',
      'ar': 'الهوية الطبية العالمية',
      'fr': 'Identité médicale universelle',
    },
    'ysd1layp': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'p9q6eg2g': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'cyau96g7': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    '6iv8v109': {
      'en': 'Blood Group',
      'ar': 'فصيلة الدم',
      'fr': 'Groupe sanguin',
    },
    'obin77m6': {
      'en': 'Allergies',
      'ar': 'الحساسية',
      'fr': 'Allergies',
    },
    'qwzyd3n4': {
      'en': 'Medications',
      'ar': 'الأدوية',
      'fr': 'Médicaments',
    },
    'u7bvokid': {
      'en': 'Treatments & Procedures ',
      'ar': 'العلاجات والإجراءات',
      'fr': 'Traitements et procédures',
    },
    '1q1t2jwk': {
      'en': 'Adresse',
      'ar': 'العنوان',
      'fr': 'Adresse',
    },
    'ipz4y87b': {
      'en': 'Emergency Contact',
      'ar': 'الاتصال بالطوارىء',
      'fr': 'Personne à contacter en cas d\'urgence',
    },
    'gv10qb41': {
      'en': 'Generate Qr Code',
      'ar': 'إنشاء رمز الاستجابة السريعة',
      'fr': 'Générer du code QR',
    },
    '81jags6m': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '9qilt2tg': {
      'en': 'Blood Oxygen',
      'ar': 'أكسجين الدم',
      'fr': 'Oxygène sanguin',
    },
    'qsrr9khc': {
      'en': 'Height ',
      'ar': 'ارتفاع',
      'fr': 'Hauteur',
    },
    'ejek8l3k': {
      'en': 'Weight ',
      'ar': 'وزن',
      'fr': 'Poids',
    },
    '56geaam0': {
      'en': 'Body  Mass Index',
      'ar': 'مؤشر كتلة الجسم',
      'fr': 'Indice de masse corporelle',
    },
    '2uib0959': {
      'en': 'Heart Rate',
      'ar': 'معدل ضربات القلب',
      'fr': 'Rythme cardiaque',
    },
    'y39gj1x1': {
      'en': 'Body Temperature ',
      'ar': 'درجة حرارة الجسم',
      'fr': 'Température corporelle',
    },
    'xl8tvkj3': {
      'en': 'Blood Pressure (systolic)',
      'ar': 'ضغط الدم (الضغط الانقباضي)',
      'fr': 'Pression artérielle (systolique)',
    },
    'iouctnv4': {
      'en': 'Blood Pressure (diastolic)',
      'ar': 'ضغط الدم (الانبساطي)',
      'fr': 'Pression artérielle (diastolique)',
    },
    'cj41mfzb': {
      'en': 'Total Cholesterol',
      'ar': 'الكولسترول الكلي',
      'fr': 'Cholestérol total',
    },
    'lot87why': {
      'en': 'LDL Cholesterol',
      'ar': 'الكولسترول الضار',
      'fr': 'Cholestérol LDL',
    },
    'rnlbax08': {
      'en': 'HDL Cholesterol',
      'ar': 'الكولسترول الحميد',
      'fr': 'Cholestérol HDL',
    },
    'w9fs1n64': {
      'en': 'Triglycerides',
      'ar': 'الدهون الثلاثية',
      'fr': 'Triglycérides',
    },
    '54nh2isg': {
      'en': 'Total Cholesterol And HDL Ratio',
      'ar': 'نسبة الكوليسترول الكلي و HDL',
      'fr': 'Rapport cholestérol total et HDL',
    },
    'rue4gl6r': {
      'en': 'Glucose',
      'ar': 'الجلوكوز',
      'fr': 'Glucose',
    },
    'y3t8c5b4': {
      'en': 'Waist Circumference ',
      'ar': 'محيط الخصر',
      'fr': 'Tour de taille',
    },
    'gr2rxjog': {
      'en': 'Health Files',
      'ar': 'ملفات الصحة',
      'fr': 'Fichiers de santé',
    },
    'qk9cnhd9': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'gbnj36r7': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    '3kc72pan': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    '5ytql0kx': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'rfhl0o6l': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'risfp30w': {
      'en': 'Prescriptions ',
      'ar': 'الوصفات الطبية',
      'fr': 'Ordonnances',
    },
    'zgh43vtm': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'dy1tahx4': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'crexu7at': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'ktxvmlwg': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'pu29h06h': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    '1sgvsu21': {
      'en': 'Vaccinations  ',
      'ar': 'التطعيمات',
      'fr': 'Vaccinations',
    },
    'oxx9z1wi': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    's9zas541': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'iih522wx': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    '65bk8god': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    '4bmga8ox': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    '637dd2b1': {
      'en': 'Lifestyle   ',
      'ar': 'نمط الحياة',
      'fr': 'Mode de vie',
    },
    'qm201o1u': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '429tx70p': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'nw6t5gzd': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'liolu3ug': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'wkcluog6': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'u75xyu73': {
      'en': 'Pharmacy',
      'ar': 'مقابل',
      'fr': 'Pharmacie',
    },
    'g8yq66fh': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    '4g51nd2c': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    '3lo459w5': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'uqdtyxfv': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    '00mggkv1': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'kij1jljy': {
      'en': 'Insurance',
      'ar': 'تأمين',
      'fr': 'Assurance',
    },
    'n1ndkjcx': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'zl8nz3ms': {
      'en': 'Hello World',
      'ar': 'مرحبا بالعالم',
      'fr': 'Bonjour le monde',
    },
    'm1dlim96': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'kvkzkcoh': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'xs70o3c7': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    'eq0dk1yc': {
      'en': 'Home',
      'ar': '',
      'fr': '',
    },
  },
  // ProfileBottomSheet
  {
    'xqln01gn': {
      'en': 'Universal Medical Identity ',
      'ar': 'الهوية الطبية العالمية',
      'fr': 'Identité médicale universelle',
    },
    'oe3e4gey': {
      'en': 'User Email',
      'ar': 'البريد الالكتروني للمستخدم',
      'fr': 'E-mail de l\'utilisateur',
    },
    'ajh1jxeq': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
      'fr': 'Numéro de téléphone',
    },
    'zwt5l8ol': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'q51w4d06': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
  },
  // ediitBooking
  {
    'qefecgqb': {
      'en': 'Edit Appointment',
      'ar': 'تحرير الموعد',
      'fr': 'Modifier le rendez-vous',
    },
    '1ljbkzal': {
      'en': 'Edit the fields below in order to change your appointment.',
      'ar': 'قم بتحرير الحقول أدناه لتغيير موعدك.',
      'fr':
          'Modifiez les champs ci-dessous afin de modifier votre rendez-vous.',
    },
    'mzo2qymk': {
      'en': 'Emails will be sent to:',
      'ar': 'سيتم إرسال رسائل البريد الإلكتروني إلى:',
      'fr': 'Les emails seront envoyés à :',
    },
    'zdm89y8t': {
      'en': 'Booking For',
      'ar': 'الحجز ل',
      'fr': 'Réservation pour',
    },
    'kh78av0e': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'fr': 'Type de rendez-vous',
    },
    '5x9148y2': {
      'en': 'Doctors Visit',
      'ar': 'زيارة الأطباء',
      'fr': 'Visite chez le médecin',
    },
    'i3hj0xaq': {
      'en': 'Routine Checkup',
      'ar': 'فحص روتيني حتى',
      'fr': 'Vérification de routine',
    },
    'zo4204jz': {
      'en': 'Scan/Update',
      'ar': 'مسح/تحديث',
      'fr': 'Numériser/Mettre à jour',
    },
    'ti6n5th5': {
      'en': 'What\'s the problem?',
      'ar': 'ما هي المشكلة؟',
      'fr': 'Quel est le problème?',
    },
    'mcrppicg': {
      'en': 'Choose Date',
      'ar': 'اختر موعدا',
      'fr': 'Choisir une date',
    },
    'qj26kwe2': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'fr': 'Annuler',
    },
    'edfkzc87': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'fr': 'Sauvegarder les modifications',
    },
  },
  // bookAppointment
  {
    'pym8t5g8': {
      'en': 'Book Appointment',
      'ar': 'موعد الكتاب',
      'fr': 'Prendre rendez-vous',
    },
    'z1y17nlx': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'ar': 'املأ المعلومات أدناه لحجز موعدك مع مكتبنا.',
      'fr':
          'Remplissez les informations ci-dessous afin de prendre rendez-vous avec notre bureau.',
    },
    'g579uxet': {
      'en': 'Emails will be sent to:',
      'ar': 'سيتم إرسال رسائل البريد الإلكتروني إلى:',
      'fr': 'Les emails seront envoyés à :',
    },
    'f2uj0g4r': {
      'en': 'Booking For',
      'ar': 'الحجز ل',
      'fr': 'Réservation pour',
    },
    'p7r237f7': {
      'en': 'Doctors Visit',
      'ar': 'زيارة الأطباء',
      'fr': 'Visite chez le médecin',
    },
    '99hmbyb4': {
      'en': 'Routine Checkup',
      'ar': 'فحص روتيني حتى',
      'fr': 'Vérification de routine',
    },
    'fox20esx': {
      'en': 'Scan/Update',
      'ar': 'مسح/تحديث',
      'fr': 'Numériser/Mettre à jour',
    },
    '8hpt5bni': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'fr': 'Type de rendez-vous',
    },
    'e94q8ys4': {
      'en': 'What\'s the problem?',
      'ar': 'ما هي المشكلة؟',
      'fr': 'Quel est le problème?',
    },
    'zzzseskk': {
      'en': 'Choose Date & Time',
      'ar': 'اختر التاريخ والوقت',
      'fr': 'Choisissez la date et l\'heure',
    },
    'w8kuv805': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'fr': 'Annuler',
    },
    'qd9o8tdm': {
      'en': 'Book Now',
      'ar': 'احجز الآن',
      'fr': 'Reserve maintenant',
    },
  },
  // AddChildProfileComponent
  {
    'ulbdjn2j': {
      'en': 'Add your child\'s profile',
      'ar': 'أضف ملف تعريف طفلك',
      'fr': 'Ajoutez le profil de votre enfant',
    },
    '5sglfr0g': {
      'en':
          'Add your child\'s legal information to help with presciptions, insurance, lab tests and medical records. You can only add children below the age of 18. ',
      'ar':
          'أضف المعلومات القانونية لطفلك للمساعدة في الوصفات الطبية والتأمين والاختبارات المعملية والسجلات الطبية. يمكنك فقط إضافة الأطفال الذين تقل أعمارهم عن 18 عامًا.',
      'fr':
          'Ajoutez les informations juridiques de votre enfant pour vous aider avec les ordonnances, l\'assurance, les tests de laboratoire et les dossiers médicaux. Vous ne pouvez ajouter que des enfants de moins de 18 ans.',
    },
    'z2wc594z': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
      'fr': 'Prénom',
    },
    'le06site': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '409e0uoz': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
      'fr': 'Nom de famille',
    },
    'mvqv5zt1': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'wwh52o0u': {
      'en': 'dd/mm/yyyy',
      'ar': 'ي ي/ش ش/س س س س',
      'fr': 'jj/mm/aaaa',
    },
    'yvvaducj': {
      'en': 'Male',
      'ar': 'ذكر',
      'fr': 'Mâle',
    },
    'k3n8vr8b': {
      'en': 'Female',
      'ar': 'أنثى',
      'fr': 'Femelle',
    },
    '6ldslk8m': {
      'en': 'Sex',
      'ar': 'الجنس',
      'fr': 'Sexe',
    },
    'pqbl81o6': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
      'fr': 'Rechercher un article...',
    },
    '3sf06hr0': {
      'en': 'Add',
      'ar': 'يضيف',
      'fr': 'Ajouter',
    },
    'mi08lfis': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'jdqo4435': {
      'en': 'Please enter a real name',
      'ar': 'الرجاء إدخال الاسم الحقيقي',
      'fr': 'Veuillez entrer un vrai nom',
    },
    'pudjxe1v': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'do4dkpdz': {
      'en': 'Please enter a short desription',
      'ar': 'الرجاء إدخال وصف قصير',
      'fr': 'Veuillez saisir une courte description',
    },
    'nlqy107q': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'e9c94ift': {
      'en': 'We have to have a URL for the project.',
      'ar': 'يجب أن يكون لدينا عنوان URL للمشروع.',
      'fr': 'Nous devons avoir une URL pour le projet.',
    },
    '5xtj1iiu': {
      'en': 'Please enter a valid URL...',
      'ar': 'أدخل رابط صحيح من فضلك...',
      'fr': 'Veuillez saisir une URL valide...',
    },
    'iq2dfu81': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'pwtd14bp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'f02nqukw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfileNameComponent
  {
    'fsj8jqxw': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'ln027i8e': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'coibbmn7': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'eza7cvjg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'p1xe3ayg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'jv504n9k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'tosy3tfq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateHealthFilesComponent
  {
    'myzlelri': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    '0n6n7vxg': {
      'en': 'Health Metrics',
      'ar': 'المقاييس الصحية',
      'fr': 'Paramètres de santé',
    },
    'fexkuzdb': {
      'en': 'Blood Oxygen',
      'ar': 'أكسجين الدم',
      'fr': 'Oxygène sanguin',
    },
    'jjghxtyh': {
      'en': 'Height ',
      'ar': 'ارتفاع',
      'fr': 'Hauteur',
    },
    '9vlm349c': {
      'en': 'Weight ',
      'ar': 'وزن',
      'fr': 'Poids',
    },
    'a3dtyw7u': {
      'en': 'Body  Mass Index',
      'ar': 'مؤشر كتلة الجسم',
      'fr': 'Indice de masse corporelle',
    },
    'jl5ie0j5': {
      'en': 'Heart Rate',
      'ar': 'معدل ضربات القلب',
      'fr': 'Rythme cardiaque',
    },
    'qzspqifm': {
      'en': 'Body Temperature ',
      'ar': 'درجة حرارة الجسم',
      'fr': 'Température corporelle',
    },
    'ympilh9v': {
      'en': 'Blood Pressure (systolic)',
      'ar': 'ضغط الدم (الضغط الانقباضي)',
      'fr': 'Pression artérielle (systolique)',
    },
    '7tbs3ejy': {
      'en': 'Blood Pressure (diastolic)',
      'ar': 'ضغط الدم (الانبساطي)',
      'fr': 'Pression artérielle (diastolique)',
    },
    'q3ue1n73': {
      'en': 'Total Cholesterol',
      'ar': 'الكولسترول الكلي',
      'fr': 'Cholestérol total',
    },
    'c4ey0556': {
      'en': 'LDL Cholesterol',
      'ar': 'الكولسترول الضار',
      'fr': 'Cholestérol LDL',
    },
    'qzgjp1ay': {
      'en': 'HDL Cholesterol',
      'ar': 'الكولسترول الحميد',
      'fr': 'Cholestérol HDL',
    },
    '4snty7zo': {
      'en': 'Triglycerides',
      'ar': 'الدهون الثلاثية',
      'fr': 'Triglycérides',
    },
    'y925m099': {
      'en': 'Total Cholesterol And HDL Ratio',
      'ar': 'نسبة الكوليسترول الكلي و HDL',
      'fr': 'Rapport cholestérol total et HDL',
    },
    'a19pkqxj': {
      'en': 'Glucose',
      'ar': 'الجلوكوز',
      'fr': 'Glucose',
    },
    'pk1lk387': {
      'en': 'Waist Circumference ',
      'ar': 'محيط الخصر',
      'fr': 'Tour de taille',
    },
    'egkqh2va': {
      'en': 'Update',
      'ar': 'تحديث',
      'fr': 'Mise à jour',
    },
    '5qqfcbfx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '7xucbuho': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '8vaixlyg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'gz17stkh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // EmergencyProfieMauvais
  {
    'eh4imi3l': {
      'en': 'Universal Medical identity ',
      'ar': 'الهوية الطبية العالمية',
      'fr': 'Identité médicale universelle',
    },
    'iszauxfd': {
      'en': 'Name',
      'ar': 'اسم',
      'fr': 'Nom',
    },
    'l6xoe9mi': {
      'en': 'Birthday',
      'ar': 'عيد ميلاد',
      'fr': 'Anniversaire',
    },
    'f4p6s4jv': {
      'en': 'Biological Sex',
      'ar': 'الجنس البيولوجي',
      'fr': 'Sexe biologique',
    },
    '7y2ihash': {
      'en': 'Blood Group',
      'ar': 'فصيلة الدم',
      'fr': 'Groupe sanguin',
    },
    '3kgsqx0v': {
      'en': 'Allergies',
      'ar': 'الحساسية',
      'fr': 'Allergies',
    },
    'uxm1qgqr': {
      'en': 'Medications',
      'ar': 'الأدوية',
      'fr': 'Médicaments',
    },
    'or7swx84': {
      'en': 'Treatments & Procedures ',
      'ar': 'العلاجات والإجراءات',
      'fr': 'Traitements et procédures',
    },
    'grebmchh': {
      'en': 'Adresse',
      'ar': 'العنوان',
      'fr': 'Adresse',
    },
    'ffxgu6de': {
      'en': 'Emergency Contact',
      'ar': 'الاتصال بالطوارىء',
      'fr': 'Personne à contacter en cas d\'urgence',
    },
    'nqaskt0x': {
      'en': 'Generate Qr Code',
      'ar': 'إنشاء رمز الاستجابة السريعة',
      'fr': 'Générer du code QR',
    },
  },
  // EmergencyProfileComponent
  {
    '3r56nd4q': {
      'en': 'UMI',
      'ar': '',
      'fr': '',
    },
    'ii7olgd8': {
      'en': 'Name',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'l8hdoray': {
      'en': 'Birthday ',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'j3fvofz9': {
      'en': 'Biological Sex',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'y7rqcd58': {
      'en': 'Blood Group',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'xzxjibio': {
      'en': 'Allergies',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'd9i0dx7m': {
      'en': 'Medications',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'v6rvjopw': {
      'en': 'Treatements & Procedures ',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'tcly3udk': {
      'en': 'Address ',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'jc1bd1t3': {
      'en': 'Emergency Contact',
      'ar': 'إعدادات',
      'fr': 'Paramètres',
    },
    'gd22ybs8': {
      'en': 'Generate Qr Code',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
  },
  // UpdateMedicaleProfileBloodGroupComponentCopy
  {
    'xgk7vqwt': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'ucx5utni': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'k10bgwi7': {
      'en': 'Add',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'ilk0b0px': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '27xz48k3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'osv5740u': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '7ypflhkq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfilAllergiesComponent
  {
    '41igp4sk': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'ddl65gd0': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'x6usq9ee': {
      'en': 'Add',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'mttjlptg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '1cyvvgnw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '8f6f8lz0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'lq6l8gxm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfilBirthdayComponent
  {
    'e3a6soct': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'xssvrkl9': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'miv48h0h': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'mg2ul74e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'ej1h6pnc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'drqapk2s': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    's8wm2441': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfileUserSexComponent
  {
    'kifxs7ix': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    '1zx54dej': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'c5eiyqt8': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'hd9ydzrm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'jxgydza6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '5p6ybi1j': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'ulrkli46': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfileMedicationComponent
  {
    'p12ve9o0': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    '8azi7z70': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    '2wbzvjl7': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'qv5uisqc': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'qb2ic7d7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'xrotqwbs': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'y3mc3pyd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfileMedicalconditionsComponent
  {
    'jg7i9nra': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'qvvskd2n': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'g7n0tcqa': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'ojtsa7r6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'zhhgalqt': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'l6vj4qym': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'mvdywuya': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfilAddressComponent
  {
    'zludfkdv': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    '9428w3lj': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'zvlmc2ew': {
      'en': 'Address',
      'ar': '',
      'fr': '',
    },
    '2jxbs0b2': {
      'en': 'City',
      'ar': '',
      'fr': '',
    },
    'gz3uoe6i': {
      'en': 'Province or Region',
      'ar': '',
      'fr': '',
    },
    '0hisyyey': {
      'en': 'Country',
      'ar': '',
      'fr': '',
    },
    'sqev2rum': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'q7j8j8nw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '04ttfnlv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'o0jby69m': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'imr33pvg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // UpdateMedicaleProfilEmergencyContactComponent
  {
    'nw7z5bp2': {
      'en': 'Edit ',
      'ar': 'يحرر',
      'fr': 'Modifier',
    },
    'kn8692t4': {
      'en': 'Emergency Medical Profile',
      'ar': 'الملف الطبي للطوارئ',
      'fr': 'Profil médical d\'urgence',
    },
    'm473nmxl': {
      'en': 'Address',
      'ar': '',
      'fr': '',
    },
    'xyuukqdk': {
      'en': 'City',
      'ar': '',
      'fr': '',
    },
    'avl4jqfn': {
      'en': 'Province or Region',
      'ar': '',
      'fr': '',
    },
    '8n26imqn': {
      'en': 'Country',
      'ar': '',
      'fr': '',
    },
    'yg3c3q1p': {
      'en': 'Update',
      'ar': 'تسجيل خروج',
      'fr': 'Se déconnecter',
    },
    'oyia3vni': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    '1wy7rj8y': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'rinyuyvl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
      'fr': 'Champ requis',
    },
    'cni1aajy': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
  },
  // Miscellaneous
  {
    'fslmhkfd': {
      'en': 'Label here...',
      'ar': 'التسمية هنا...',
      'fr': 'Étiquetez ici...',
    },
    'fx6vcvd3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '34gz02w0': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'o4jvl4p4': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'qd7998mc': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '74hobai3': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'tvy3cjib': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '2l3om5eo': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'm25wgq8u': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'x6544fqj': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'lzkk69nu': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'iiu75to4': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'u0n07sd8': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'cfb7srim': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '5sg08cku': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '2ijisrb7': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'gnm23lq2': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'cz8z58mr': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'nibhret6': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '3gzs6bnc': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'ayjba3tt': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    'mykp40vk': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '9p9f42p6': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '3h4yc3wi': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '963a9fs4': {
      'en': '',
      'ar': '',
      'fr': '',
    },
    '44hkri40': {
      'en': '',
      'ar': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
