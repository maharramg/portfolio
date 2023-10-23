class ProjectModel {
  final String name;
  final String image;
  final String? description;
  final String? appStoreUrl;
  final String? playStoreUrl;

  const ProjectModel({
    required this.name,
    required this.image,
    this.description,
    this.appStoreUrl,
    this.playStoreUrl,
  });
}

const apps = [
  ProjectModel(
    name: 'TendoPay',
    image: 'assets/images/tendopay.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=ph.tendopay.app.android&hl=en_US&gl=US',
    appStoreUrl: 'https://apps.apple.com/pl/app/tendopay/id1530959249',
  ),
  ProjectModel(
    name: 'Tentony',
    image: 'assets/images/tentony.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.tentony.app&hl=en&gl=US',
    appStoreUrl: 'https://apps.apple.com/do/app/tentony/id1630425777',
  ),
  ProjectModel(
    name: 'Tezibu Online Super Market',
    image: 'assets/images/tezibu.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.a7575.tezibu.client&hl=pl&gl=US',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-online-super-market/id1518022392',
  ),
  ProjectModel(
    name: 'Tezibu Courier',
    image: 'assets/images/courier.png',
    description: '',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-courier/id1517005869',
  ),
  ProjectModel(
    name: 'Tezibu Partner',
    image: 'assets/images/partner.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.tezibu.partner',
    appStoreUrl: 'https://apps.apple.com/az/app/tezibu-partner/id1516765771',
  ),
  ProjectModel(
    name: 'Rahat Kart',
    image: 'assets/images/rahat.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=frazex.com.inloya.rahat',
    appStoreUrl: 'https://apps.apple.com/az/app/rahat-kart/id1478512091',
  ),
  ProjectModel(
    name: 'Wibty',
    image: 'assets/images/wibty.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.wibty.wibty&hl=pl&gl=US',
    appStoreUrl: 'https://apps.apple.com/az/app/wibty/id1568298650',
  ),
  ProjectModel(
    name: 'Flostore.az',
    image: 'assets/images/flo.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.flo',
    appStoreUrl: 'https://apps.apple.com/az/app/flostore-az/id1514948886',
  ),
  ProjectModel(
    name: 'Denti Store',
    image: 'assets/images/dentistore.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=az.abasoft.dentistore',
    appStoreUrl: 'https://apps.apple.com/gb/app/dentistore/id1576104680',
  ),
  ProjectModel(
    name: 'Lilac.az',
    image: 'assets/images/lilac.png',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazec.onlinestore.lilac',
    appStoreUrl: 'https://apps.apple.com/az/app/lilac-az/id1535781509',
  ),
  ProjectModel(
    name: 'Bouquet&Co',
    image: 'assets/images/bouquet.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.inloya.bouquet',
    appStoreUrl: 'https://apps.apple.com/pl/app/bouquet-co/id1555310792',
  ),
  ProjectModel(
    name: 'RA9 Group',
    image: 'assets/images/cinemaplaza.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.cinemaplaza',
    appStoreUrl: 'https://apps.apple.com/pl/app/ra9-group/id1571044002',
  ),
  ProjectModel(
    name: 'Unity Food',
    image: 'assets/images/unityfood.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.neptunexpress',
    appStoreUrl: 'https://apps.apple.com/pl/app/unity-food/id1539019198',
  ),
  ProjectModel(
    name: 'InLoya',
    image: 'assets/images/inloya.webp',
    description: '',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/pl/app/inloya/id1556053007',
  ),
  ProjectModel(
    name: 'Gunka Beauty House',
    image: 'assets/images/gunka.png',
    description: '',
    playStoreUrl: '',
    appStoreUrl: 'https://apps.apple.com/pl/app/gunka-beauty-house/id1518607512',
  ),
  ProjectModel(
    name: 'InLoya POS',
    image: 'assets/images/inloyapos.webp',
    description: '',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.hexobit.inloya_pos_flutter',
    appStoreUrl: 'https://apps.apple.com/pl/app/inloya-pos/id1381461262',
  ),
];
