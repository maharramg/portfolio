class ProjectModel {
  final String name;
  final String category;
  final String description;
  final List<String> images;
  final String logo;
  final String? appStoreUrl;
  final String? playStoreUrl;

  const ProjectModel({
    required this.name,
    required this.category,
    required this.description,
    required this.images,
    required this.logo,
    this.appStoreUrl,
    this.playStoreUrl,
  });
}

const projects = [
  ProjectModel(
    name: 'RYVL Team',
    category: 'Sports',
    description:
        'Ryvl is the ultimate way to experience sports with your friends. Make predictions, drop bold takes, and battle it out in chat-based leagues built for real fans. No spreadsheets, no noise—just straight-up sports talk, picks, and playful rivalries.',
    images: [
      'assets/images/mockups/ryvl-mockup.webp',
    ],
    logo: 'assets/images/logos/ryvl.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=ryvl.team.app.RYVL',
    appStoreUrl: 'https://apps.apple.com/us/app/ryvl-team/id6748541801',
  ),
  ProjectModel(
    name: 'Tendo by Tonik',
    category: 'Finance',
    description:
        'Tendo by Tonik gives you access to a full-suite of financial services right at your fingertips. Our app allows you to sign up, log in, make purchases, pay bills, set your financial goals, track your expenses, and much more.',
    images: [
      'assets/images/mockups/tendopay-mockup.webp',
    ],
    logo: 'assets/images/logos/tendopay.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=ph.tendopay.app.android&hl=en_US&gl=US',
    appStoreUrl: 'https://apps.apple.com/ph/app/tendopay/id1530959249',
  ),
  ProjectModel(
    name: 'Passave',
    category: 'Utilities',
    description:
        'Passave is more than just a password manager; it is a sophisticated, privacy-first encryption vault designed for those who demand absolute digital sovereignty. Our philosophy is simple: your sensitive credentials, private documents, and cryptographic keys should never leave your device in an unencrypted state.',
    images: [
      'assets/images/mockups/passave-mockup.webp',
    ],
    logo: 'assets/images/logos/passave.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.passave.app',
    appStoreUrl: 'https://apps.apple.com/us/app/passave-password-manager/id6745766587',
  ),
  ProjectModel(
    name: 'Esimafly',
    category: 'Travel',
    description:
        'Esimafly is your trusted partner in seamless global connectivity. Founded with the vision of revolutionizing the way travelers stay connected, Esimafly offers affordable and convenient eSIM data packages for globetrotters, digital nomads, and business travelers alike.',
    images: [
      'assets/images/mockups/esimafly-mockup.webp',
    ],
    logo: 'assets/images/logos/esimafly.webp',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/esimafly-esim-internet/id6618155522',
  ),
  ProjectModel(
    name: 'Tentony',
    category: 'E-commerce',
    description:
        'The easy way to shop from home. Enhance your shopping experience with the Tentony app. By downloading the Tentony app, you can find the answer to all your needs in one app. Brands\' new season products, daily specials and discounts you won\'t find anywhere else are with you anytime with the Tentony mobile app!',
    images: [
      'assets/images/mockups/tentony-mockup.webp',
    ],
    logo: 'assets/images/logos/tentony.webp',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/do/app/tentony/id1630425777',
  ),
  ProjectModel(
    name: 'Wibty',
    category: 'Social Media | Music',
    description:
        'Wibty is the first national social network of Azerbaijan. Create connections with friends, loved ones, family, and people who share your musical tastes. Share your own photos and videos as both posts and stories. Share with people how you feel. Make your profile private or ultra private.',
    images: [
      'assets/images/mockups/wibty-mockup.webp',
    ],
    logo: 'assets/images/logos/wibty.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.wibty.wibty',
    appStoreUrl: 'https://apps.apple.com/az/app/wibty/id1568298650',
  ),
  ProjectModel(
    name: 'Tezibu',
    category: 'Delivery',
    description:
        'By easy user interface issued for your disposal, everything, from tasty foods, city pharmacies and supermarket networks up to Children’s world, 1001 Trifles – will be delivered to your door. All you need to do is to register.',
    images: [
      'assets/images/mockups/tezibu-mockup.webp',
    ],
    logo: 'assets/images/logos/tezibu.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.a7575.tezibu.client',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-online-super-market/id1518022392',
  ),
  ProjectModel(
    name: 'Rahat Kart',
    category: 'E-commerce | Delivery',
    description: 'The easiest way to get closer to your favorite place. Enjoy yourself!',
    images: [
      'assets/images/mockups/rahat-mockup.webp',
    ],
    logo: 'assets/images/logos/rahat.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=frazex.com.inloya.rahat',
    appStoreUrl: 'https://apps.apple.com/az/app/rahat-kart/id1478512091',
  ),
  ProjectModel(
    name: 'Tezibu Courier',
    category: 'Delivery',
    description:
        'The Tezibu Courier application was created in integration with the Tezibu application for the convenience of couriers in order to carry out proactive delivery processes. This application contains information about customer contacts, time, cost, destinations and other data related to delivery details.',
    images: [
      'assets/images/mockups/tezibu-courier-mockup.webp',
    ],
    logo: 'assets/images/logos/tezibu-courier.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'Tezibu Partner',
    category: 'Delivery',
    description:
        'Do you want to develop your own business and involve new customers? Then, join the row of partners of Tezibu! We present you mobile partner with confident user interface and our web-site.',
    images: [
      'assets/images/mockups/tezibu-partner-mockup.webp',
    ],
    logo: 'assets/images/logos/tezibu-partner.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.tezibu.partner',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'Flostore.az',
    category: 'E-commerce',
    description:
        'Basics in a small workshop in 1960 by Ahmet Ziylan thrown FLO Retailing, today is the undisputed leader of Turkey\'s shoe market. FLO Mağazacılık, which employs more than 9,700 and indirectly close to 30,000 people, sells 55 million pairs of shoes annually.',
    images: [
      'assets/images/mockups/flo-mockup.webp',
    ],
    logo: 'assets/images/logos/flo.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.flo',
    appStoreUrl: 'https://apps.apple.com/az/app/flostore-az/id1514948886',
  ),
  ProjectModel(
    name: 'Lilac.az',
    category: 'E-commerce',
    description:
        'All flowers for bouquets, flower arrangements and interior decoration are carefully selected, collected and sent to Azerbaijan by Dutch specialists. Thanks to this, "Lilac" is known and loved in Baku for its unique taste. After all, every bouquet is a small work of art.',
    images: [
      'assets/images/mockups/lilac-mockup.webp',
    ],
    logo: 'assets/images/logos/lilac.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazec.onlinestore.lilac',
    appStoreUrl: 'https://apps.apple.com/az/app/lilac-az/id1535781509',
  ),
  ProjectModel(
    name: 'Bouquet&Co',
    category: 'E-commerce',
    description: 'In the BOUQUET flower shop, you can find exquisite bouquets for every taste, as well as designer gifts made by our artisans.',
    images: [
      'assets/images/mockups/bouquet-mockup.webp',
    ],
    logo: 'assets/images/logos/bouquet.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'RA9 Group',
    category: 'E-commerce',
    description: 'The first Karaoke&Cinema Hotel chain in Azerbaijan.',
    images: [
      'assets/images/mockups/ra9-mockup.webp',
    ],
    logo: 'assets/images/logos/ra9.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.cinemaplaza',
    appStoreUrl: 'https://apps.apple.com/az/app/ra9-group/id1571044002',
  ),
  ProjectModel(
    name: 'Unity Food',
    category: 'E-commerce',
    description: 'Unity Food specializes in the wholesale of seafood, groceries, meat and meat products, as well as related products.',
    images: [
      'assets/images/mockups/unityfood-mockup.webp',
    ],
    logo: 'assets/images/logos/unityfood.webp',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/unity-food/id1539019198',
  ),
  ProjectModel(
    name: 'Denti Store',
    category: 'E-commerce',
    description:
        'Dentists and surgeons, orthodontists, dental technicians can order all dental products, instruments, disposables, disinfectants and other laboratory equipment from a single mobile application.',
    images: [
      'assets/images/mockups/denti-store-mockup.webp',
    ],
    logo: 'assets/images/logos/dentistore.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'Nata Studio',
    category: 'Customer Loyalty',
    description:
        'At Nata Vip Studio, we take pride in helping women discover and enhance their beauty. Leveraging the full potential of modern technology, our professional team constantly introduces innovations in the fields of beauty and body care.',
    images: [
      'assets/images/mockups/nata-mockup.webp',
    ],
    logo: 'assets/images/logos/nata.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'Le Plaisir',
    category: 'Customer Loyalty',
    description:
        'Dear customers, we are pleased to introduce the new Le Plaisir mobile app! Starting today, and for a period of at least six months, customers who spend over 500 AZN at our stores will receive 3% cashback, while those spending over 1,000 AZN will receive 5% cashback. Stay with us!',
    images: [
      'assets/images/mockups/leplaisir-mockup.webp',
    ],
    logo: 'assets/images/logos/leplaisir.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'Gunka Beauty House',
    category: 'Customer Loyalty',
    description: '“Gunka Beauty House" beauty salon - "Looking beautiful is not expensive"',
    images: [
      'assets/images/mockups/gunka-mockup.webp',
    ],
    logo: 'assets/images/logos/gunka.webp',
    playStoreUrl: '',
    appStoreUrl: '',
  ),
  ProjectModel(
    name: 'InLoya POS',
    category: 'Customer Loyalty',
    description: 'InLoya POS is a free mobile application for scanning InLoya QR-codes and identify the clients and promotions, add points, provide with discount and etc.',
    images: [
      'assets/images/mockups/inloya-pos-mockup.webp',
    ],
    logo: 'assets/images/logos/inloya-pos.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.hexobit.inloya_pos_flutter',
    appStoreUrl: 'https://apps.apple.com/az/app/inloya-pos/id1381461262',
  ),
];
