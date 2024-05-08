class JobModel {
  final String companyName;
  final String location;
  final String dates;
  final String description;

  const JobModel({
    required this.companyName,
    required this.location,
    required this.dates,
    required this.description,
  });
}

const jobs = [
  JobModel(
    companyName: 'TendoPay',
    location: 'Makati, Philippines',
    dates: '03/2023 - CURRENT',
    description: '• Developed "TendoPay," an innovative installment solution for online shopping in the Philippines that provides a flexible and convenient way for managing payments for online purchases\n• Spearheaded end-to-end development and collaborated with cross-functional teams\n• Successfully integrated third-party APIs to enhance the app\'s functionality and expand the user base',
  ),
  JobModel(
    companyName: 'Tentony',
    location: 'Baku, Azerbaijan',
    dates: '07/2022 - 02/2023',
    description: '• Developed and contributed significantly to the success of "Tentony," an expansive e-commerce application that has established itself as a prominent online shopping and selling platform in Azerbaijan.\n• Collaborated closely with UX/UI designers to implement visually appealing designs, playing a key role in positioning the app as a top-rated event management solution on both iOS and Android platforms.\n• Resulted in heightened user engagement and widespread recognition, solidifying "Tentony" as a market leader in the region\'s e-commerce industry',
  ),
  JobModel(
    companyName: 'InLoya',
    location: 'Baku, Azerbaijan',
    dates: '10/2020 - 12/2022',
    description: '• Engaged in the development of diverse mobile applications, notably contributing to e-commerce platforms like “Rahat Kart,” “Bouquet,” and “Lilac.az”.\n• Additionally, played a pivotal role in creating food delivery applications, explicitly working on client-side interfaces and partner/courier interfaces such as Tezibu Partner and Tezibu Courier.\n• Actively collaborated with clients throughout the requirements-gathering phase, ensuring a comprehensive understanding of objectives, ultimately reducing development iterations substantially.',
  ),
  JobModel(
    companyName: 'Baku Creative Projects',
    location: 'Baku, Azerbaijan',
    dates: '03/2021 - 06/2021',
    description: '• Spearheaded the development of "Wibty," a pioneering social media platform acknowledged as Azerbaijan\'s first successful venture in this domain.\n• Engineered an innovative application that allows users to effortlessly post, listen to music, and connect with new contacts concurrently, creating a distinctive social environment.\n• Employed the BLoC package for streamlined state management, resulting in a 25% reduction in app loading times and a marked enhancement in overall user satisfaction.',
  ),
];
