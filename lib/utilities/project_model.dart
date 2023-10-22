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
    name: 'Tezibu Client',
    image: 'assets/images/tezibu.png',
    description: '',
  ),
  ProjectModel(
    name: 'Tezibu Courier',
    image: 'assets/images/courier.png',
    description: '',
  ),
  ProjectModel(
    name: 'Tezibu Partner',
    image: 'assets/images/partner.png',
    description: '',
  ),
  ProjectModel(
    name: 'Rahat Kart',
    image: 'assets/images/rahat.png',
    description: '',
  ),
  ProjectModel(
    name: 'Wibty',
    image: 'assets/images/wibty.png',
    description: '',
  ),
  ProjectModel(
    name: 'Flo',
    image: 'assets/images/flo.png',
    description: '',
  ),
  ProjectModel(
    name: 'Denti Store',
    image: 'assets/images/dentistore.png',
    description: '',
  ),
  ProjectModel(
    name: 'Lilac',
    image: 'assets/images/lilac.png',
    description: '',
  ),
  ProjectModel(
    name: 'Bouquet',
    image: 'assets/images/bouquet.webp',
    description: '',
  ),
  ProjectModel(
    name: 'Chic-Chic',
    image: 'assets/images/chic-chic.webp',
    description: '',
  ),
  ProjectModel(
    name: 'CinemaPlaza',
    image: 'assets/images/cinemaplaza.webp',
    description: '',
  ),
  ProjectModel(
    name: 'Gutenberg',
    image: 'assets/images/gutenberg.webp',
    description: '',
  ),
  ProjectModel(
    name: 'Leplaisir',
    image: 'assets/images/leplaisir.png',
    description: '',
  ),
  ProjectModel(
    name: 'Parashut',
    image: 'assets/images/parashut.webp',
    description: '',
  ),
  ProjectModel(
    name: 'Nata',
    image: 'assets/images/nata.png',
    description: '',
  ),
  ProjectModel(
    name: 'Inloya POS',
    image: 'assets/images/inloyapos.webp',
    description: '',
  ),
];
