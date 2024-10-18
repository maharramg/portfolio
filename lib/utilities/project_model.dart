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
    name: 'Esimafly',
    category: 'Travel',
    description: 'Esimafly is your trusted partner in seamless global connectivity. Founded with the vision of revolutionizing the way travelers stay connected, Esimafly offers affordable and convenient eSIM data packages for globetrotters, digital nomads, and business travelers alike.',
    images: [
      'assets/images/mockups/esimafly-mockup.png',
    ],
    logo: 'assets/images/logos/esimafly.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.esimafly.app',
    appStoreUrl: 'https://apps.apple.com/az/app/esimafly-esim-internet/id6618155522',
  ),
  ProjectModel(
    name: 'TendoPay',
    category: 'Banking',
    description: 'TendoPay gives you access to a full-suite of financial services right at your fingertips. This app allows you to sign up, log in, make purchases, pay bills, set your financial goals, track your expenses, and much more.',
    images: [
      'assets/images/mockups/tendopay-mockup.png',
    ],
    logo: 'assets/images/logos/tendopay.jpeg',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=ph.tendopay.app.android&hl=en_US&gl=US',
    appStoreUrl: 'https://apps.apple.com/ph/app/tendopay/id1530959249',
  ),
  ProjectModel(
    name: 'Tentony',
    category: 'E-commerce',
    description: 'The easy way to shop from home. Enhance your shopping experience with the Tentony app. By downloading the Tentony app, you can find the answer to all your needs in one app. Brands\' new season products, daily specials and discounts you won\'t find anywhere else are with you anytime with the Tentony mobile app!',
    images: [
      'assets/images/mockups/tentony-mockup.png',
    ],
    logo: 'assets/images/logos/tentony.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.tentony.app&hl=en&gl=US',
    appStoreUrl: 'https://apps.apple.com/do/app/tentony/id1630425777',
  ),
  ProjectModel(
    name: 'Wibty',
    category: 'Social Media | Music',
    description: 'Wibty is the first national social network of Azerbaijan. Create connections with friends, loved ones, family, and people who share your musical tastes. Share your own photos and videos as both posts and stories. Share with people how you feel. Make your profile private or ultra private.',
    images: [
      'assets/images/mockups/wibty-mockup.png',
    ],
    logo: 'assets/images/logos/wibty.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.wibty.wibty',
    appStoreUrl: 'https://apps.apple.com/az/app/wibty/id1568298650',
  ),
  ProjectModel(
    name: 'Tezibu',
    category: 'Delivery',
    description: 'By easy user interface issued for your disposal, everything, from tasty foods, city pharmacies and supermarket networks up to Children’s world, 1001 Trifles – will be delivered to your door. All you need to do is to register.',
    images: [
      'assets/images/mockups/tezibu-mockup.png',
    ],
    logo: 'assets/images/logos/tezibu.jpg',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.a7575.tezibu.client',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-online-super-market/id1518022392',
  ),
  ProjectModel(
    name: 'Rahat Kart',
    category: 'E-commerce | Delivery',
    description: 'The easiest way to get closer to your favorite place. Enjoy yourself!',
    images: [
      'assets/images/mockups/rahat-mockup.png',
    ],
    logo: 'assets/images/logos/rahat.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=frazex.com.inloya.rahat',
    appStoreUrl: 'https://apps.apple.com/az/app/rahat-kart/id1478512091',
  ),
  ProjectModel(
    name: 'Tezibu Courier',
    category: 'Delivery',
    description: 'The Tezibu Courier application was created in integration with the Tezibu application for the convenience of couriers in order to carry out proactive delivery processes. This application contains information about customer contacts, time, cost, destinations and other data related to delivery details.',
    images: [
      'assets/images/mockups/tezibu-courier-mockup.png',
    ],
    logo: 'assets/images/logos/tezibu-courier.png',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-courier/id1517005869',
  ),
  ProjectModel(
    name: 'Tezibu Partner',
    category: 'Delivery',
    description: 'Do you want to develop your own business and involve new customers? Then, join the row of partners of Tezibu! We present you mobile partner with confident user interface and our web-site.',
    images: [
      'assets/images/mockups/tezibu-partner-mockup.png',
    ],
    logo: 'assets/images/logos/tezibu-partner.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.tezibu.partner',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-partner/id1516765771',
  ),
  ProjectModel(
    name: 'Flostore.az',
    category: 'E-commerce',
    description: 'Basics in a small workshop in 1960 by Ahmet Ziylan thrown FLO Retailing, today is the undisputed leader of Turkey\'s shoe market. FLO Mağazacılık, which employs more than 9,700 and indirectly close to 30,000 people, sells 55 million pairs of shoes annually.',
    images: [
      'assets/images/mockups/flo-mockup.png',
    ],
    logo: 'assets/images/logos/flo.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.flo',
    appStoreUrl: 'https://apps.apple.com/az/app/flostore-az/id1514948886',
  ),
  ProjectModel(
    name: 'Lilac.az',
    category: 'E-commerce',
    description: 'All flowers for bouquets, flower arrangements and interior decoration are carefully selected, collected and sent to Azerbaijan by Dutch specialists. Thanks to this, "Lilac" is known and loved in Baku for its unique taste. After all, every bouquet is a small work of art.',
    images: [
      'assets/images/mockups/lilac-mockup.png',
    ],
    logo: 'assets/images/logos/lilac.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazec.onlinestore.lilac',
    appStoreUrl: 'https://apps.apple.com/az/app/lilac-az/id1535781509',
  ),
  ProjectModel(
    name: 'Bouquet&Co',
    category: 'E-commerce',
    description: 'In the BOUQUET flower shop, you can find exquisite bouquets for every taste, as well as designer gifts made by our artisans.',
    images: [
      'assets/images/mockups/bouquet-mockup.png',
    ],
    logo: 'assets/images/logos/bouquet.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.inloya.bouquet',
    appStoreUrl: 'https://apps.apple.com/az/app/bouquet-co/id1555310792',
  ),
  ProjectModel(
    name: 'RA9 Group',
    category: 'E-commerce',
    description: 'The first Karaoke&Cinema Hotel chain in Azerbaijan.',
    images: [
      'assets/images/mockups/ra9-mockup.png',
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
      'assets/images/mockups/unityfood-mockup.png',
    ],
    logo: 'assets/images/logos/unityfood.webp',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/unity-food/id1539019198',
  ),
  ProjectModel(
    name: 'Denti Store',
    category: 'E-commerce',
    description: 'Dentists and surgeons, orthodontists, dental technicians can order all dental products, instruments, disposables, disinfectants and other laboratory equipment from a single mobile application.',
    images: [
      'assets/images/mockups/denti-store-mockup.png',
    ],
    logo: 'assets/images/logos/dentistore.webp',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/gb/app/dentistore/id1576104680',
  ),
  ProjectModel(
    name: 'Gunka Beauty House',
    category: 'Customer Loyalty',
    description: '“Gunka Beauty House" beauty salon - "Looking beautiful is not expensive"',
    images: [
      'assets/images/mockups/gunka-mockup.png',
    ],
    logo: 'assets/images/logos/gunka.png',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/gunka-beauty-house/id1518607512',
  ),
  ProjectModel(
    name: 'InLoya POS',
    category: 'Customer Loyalty',
    description: 'InLoya POS is a free mobile application for scanning InLoya QR-codes and identify the clients and promotions, add points, provide with discount and etc.',
    images: [
      'assets/images/mockups/inloya-pos-mockup.png',
    ],
    logo: 'assets/images/logos/inloya-pos.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.hexobit.inloya_pos_flutter',
    appStoreUrl: 'https://apps.apple.com/az/app/inloya-pos/id1381461262',
  ),
];
