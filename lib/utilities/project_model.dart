class ProjectModel {
  final String name;
  final List<String> images;
  final String logo;
  final List<String>? imageUrls;
  final String? appStoreUrl;
  final String? playStoreUrl;

  const ProjectModel({
    required this.name,
    required this.images,
    required this.logo,
    this.imageUrls,
    this.appStoreUrl,
    this.playStoreUrl,
  });
}

const apps = [
  ProjectModel(
    name: 'TendoPay',
    images: [
      'assets/images/screenshots/tendopay/tendopay-1.webp',
      'assets/images/screenshots/tendopay/tendopay-2.webp',
      'assets/images/screenshots/tendopay/tendopay-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/tendopay/tendopay-1.webp',
      'https://maharramguliyev.com/images/tendopay/tendopay-2.webp',
      'https://maharramguliyev.com/images/tendopay/tendopay-3.webp',
    ],
    logo: 'assets/images/logos/tendopay.jpeg',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=ph.tendopay.app.android&hl=en_US&gl=US',
    appStoreUrl: 'https://apps.apple.com/pl/app/tendopay/id1530959249',
  ),
  ProjectModel(
    name: 'Tentony',
    images: [
      'assets/images/screenshots/tentony/tentony-1.webp',
      'assets/images/screenshots/tentony/tentony-2.webp',
      'assets/images/screenshots/tentony/tentony-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/tentony/tentony-1.webp',
      'https://maharramguliyev.com/images/tentony/tentony-2.webp',
      'https://maharramguliyev.com/images/tentony/tentony-3.webp',
    ],
    logo: 'assets/images/logos/tentony.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.tentony.app&hl=en&gl=US',
    appStoreUrl: 'https://apps.apple.com/do/app/tentony/id1630425777',
  ),
  ProjectModel(
    name: 'Tezibu',
    images: [
      'assets/images/screenshots/tezibu/tezibu-1.webp',
      'assets/images/screenshots/tezibu/tezibu-2.webp',
      'assets/images/screenshots/tezibu/tezibu-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/tezibu/tezibu-1.webp',
      'https://maharramguliyev.com/images/tezibu/tezibu-2.webp',
      'https://maharramguliyev.com/images/tezibu/tezibu-3.webp',
    ],
    logo: 'assets/images/logos/tezibu.jpg',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.a7575.tezibu.client&hl=pl&gl=US',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-online-super-market/id1518022392',
  ),
  ProjectModel(
    name: 'Tezibu Courier',
    images: [
      'assets/images/screenshots/tezibu-courier/tezibu-courier-1.png',
      'assets/images/screenshots/tezibu-courier/tezibu-courier-2.png',
      'assets/images/screenshots/tezibu-courier/tezibu-courier-3.png',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/tezibu-courier/tezibu-courier-1.png',
      'https://maharramguliyev.com/images/tezibu-courier/tezibu-courier-2.png',
      'https://maharramguliyev.com/images/tezibu-courier/tezibu-courier-3.png',
    ],
    logo: 'assets/images/logos/tezibu-courier.png',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-courier/id1517005869',
  ),
  ProjectModel(
    name: 'Tezibu Partner',
    images: [
      'assets/images/screenshots/tezibu-partner/tezibup-1.webp',
      'assets/images/screenshots/tezibu-partner/tezibup-2.webp',
      'assets/images/screenshots/tezibu-partner/tezibup-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/tezibu-partner/tezibup-1.webp',
      'https://maharramguliyev.com/images/tezibu-partner/tezibup-2.webp',
      'https://maharramguliyev.com/images/tezibu-partner/tezibup-3.webp',
    ],
    logo: 'assets/images/logos/tezibu-partner.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.tezibu.partner',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-partner/id1516765771',
  ),
  ProjectModel(
    name: 'Rahat Kart',
    images: [
      'assets/images/screenshots/rahat/rahat-1.png',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/rahat/rahat-1.png',
    ],
    logo: 'assets/images/logos/rahat.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=frazex.com.inloya.rahat',
    appStoreUrl: 'https://apps.apple.com/az/app/rahat-kart/id1478512091',
  ),
  ProjectModel(
    name: 'Wibty',
    images: [
      'assets/images/screenshots/wibty/wibty-1.webp',
      'assets/images/screenshots/wibty/wibty-2.webp',
      'assets/images/screenshots/wibty/wibty-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/wibty/wibty-1.webp',
      'https://maharramguliyev.com/images/wibty/wibty-2.webp',
      'https://maharramguliyev.com/images/wibty/wibty-3.webp',
    ],
    logo: 'assets/images/logos/wibty.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.wibty.wibty&hl=pl&gl=US',
    appStoreUrl: 'https://apps.apple.com/az/app/wibty/id1568298650',
  ),
  ProjectModel(
    name: 'Flostore.az',
    images: [
      'assets/images/screenshots/flostore/flostore-1.webp',
      'assets/images/screenshots/flostore/flostore-2.webp',
      'assets/images/screenshots/flostore/flostore-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/flostore/flostore-1.webp',
      'https://maharramguliyev.com/images/flostore/flostore-2.webp',
      'https://maharramguliyev.com/images/flostore/flostore-3.webp',
    ],
    logo: 'assets/images/logos/flo.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.flo',
    appStoreUrl: 'https://apps.apple.com/az/app/flostore-az/id1514948886',
  ),
  ProjectModel(
    name: 'Denti Store',
    images: [
      'assets/images/screenshots/dentistore/dentistore-1.webp',
      'assets/images/screenshots/dentistore/dentistore-2.webp',
      'assets/images/screenshots/dentistore/dentistore-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/dentistore/dentistore-1.webp',
      'https://maharramguliyev.com/images/dentistore/dentistore-2.webp',
      'https://maharramguliyev.com/images/dentistore/dentistore-3.webp',
    ],
    logo: 'assets/images/logos/dentistore.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=az.abasoft.dentistore',
    appStoreUrl: 'https://apps.apple.com/gb/app/dentistore/id1576104680',
  ),
  ProjectModel(
    name: 'Lilac.az',
    images: [
      'assets/images/screenshots/lilac/lilac-1.webp',
      'assets/images/screenshots/lilac/lilac-2.webp',
      'assets/images/screenshots/lilac/lilac-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/lilac/lilac-1.webp',
      'https://maharramguliyev.com/images/lilac/lilac-2.webp',
      'https://maharramguliyev.com/images/lilac/lilac-3.webp',
    ],
    logo: 'assets/images/logos/lilac.png',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazec.onlinestore.lilac',
    appStoreUrl: 'https://apps.apple.com/az/app/lilac-az/id1535781509',
  ),
  ProjectModel(
    name: 'Bouquet&Co',
    images: [
      'assets/images/screenshots/bouquet/bouquet-1.webp',
      'assets/images/screenshots/bouquet/bouquet-2.webp',
      'assets/images/screenshots/bouquet/bouquet-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/bouquet/bouquet-1.webp',
      'https://maharramguliyev.com/images/bouquet/bouquet-2.webp',
      'https://maharramguliyev.com/images/bouquet/bouquet-3.webp',
    ],
    logo: 'assets/images/logos/bouquet.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.inloya.bouquet',
    appStoreUrl: 'https://apps.apple.com/pl/app/bouquet-co/id1555310792',
  ),
  ProjectModel(
    name: 'RA9 Group',
    images: [
      'assets/images/screenshots/ra9/ra9-1.webp',
      'assets/images/screenshots/ra9/ra9-2.webp',
      'assets/images/screenshots/ra9/ra9-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/ra9/ra9-1.webp',
      'https://maharramguliyev.com/images/ra9/ra9-2.webp',
      'https://maharramguliyev.com/images/ra9/ra9-3.webp',
    ],
    logo: 'assets/images/logos/ra9.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.cinemaplaza',
    appStoreUrl: 'https://apps.apple.com/pl/app/ra9-group/id1571044002',
  ),
  ProjectModel(
    name: 'Unity Food',
    images: [
      'assets/images/screenshots/unityfood/unityfood-1.webp',
      'assets/images/screenshots/unityfood/unityfood-2.webp',
      'assets/images/screenshots/unityfood/unityfood-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/unityfood/unityfood-1.webp',
      'https://maharramguliyev.com/images/unityfood/unityfood-2.webp',
      'https://maharramguliyev.com/images/unityfood/unityfood-3.webp',
    ],
    logo: 'assets/images/logos/unityfood.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.neptunexpress',
    appStoreUrl: 'https://apps.apple.com/pl/app/unity-food/id1539019198',
  ),
  ProjectModel(
    name: 'InLoya',
    images: [
      'assets/images/screenshots/inloya/inloya-1.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/inloya/inloya-1.webp',
    ],
    logo: 'assets/images/logos/inloya.jpg',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/pl/app/inloya/id1556053007',
  ),
  ProjectModel(
    name: 'Gunka Beauty House',
    images: [
      'assets/images/screenshots/gunka/gunka-1.png',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/gunka/gunka-1.png',
    ],
    logo: 'assets/images/logos/gunka.png',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/pl/app/gunka-beauty-house/id1518607512',
  ),
  ProjectModel(
    name: 'InLoya POS',
    images: [
      'assets/images/screenshots/inloya-pos/inloya-pos-1.webp',
      'assets/images/screenshots/inloya-pos/inloya-pos-2.webp',
      'assets/images/screenshots/inloya-pos/inloya-pos-3.webp',
    ],
    imageUrls: [
      'https://maharramguliyev.com/images/inloya-pos/inloya-pos-1.webp',
      'https://maharramguliyev.com/images/inloya-pos/inloya-pos-2.webp',
      'https://maharramguliyev.com/images/inloya-pos/inloya-pos-3.webp',
    ],
    logo: 'assets/images/logos/inloya-pos.webp',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.hexobit.inloya_pos_flutter',
    appStoreUrl: 'https://apps.apple.com/pl/app/inloya-pos/id1381461262',
  ),
];
