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
    companyName: 'RYVL Team',
    location: 'NY, United States of America',
    dates: '05/2026 - Present',
    description: '•	Played a key role in building “RYVL” – an interactive soccer fantasy chat game where users can challenge friends, make match predictions, compete on leaderboards, earn coins, and unlock rewards.\n•	Worked on developing engaging mobile features such as friend leagues, weekly and custom predictions, in-app chat, ranking systems, and reward-based user interactions to create a more competitive and social experience.\n•	Contributed to API integrations, performance improvements, and overall app stability, helping deliver a smooth and enjoyable fantasy sports platform for football fans across mobile devices.',
  ),
  JobModel(
    companyName: 'Tendo by Tonik',
    location: 'Makati, Philippines',
    dates: '03/2023 - Present',
    description: '•	Developed and contributed significantly to the success of “Tendo by Tonik” – an innovative installment-based payment solution for online shopping in the Philippines, designed to provide customers with a more flexible, convenient, and accessible way to manage payments for their online purchases.\n•	Spearheaded end-to-end mobile app development, working closely with cross-functional teams including backend developers, product managers, QA engineers, and UI/UX designers to deliver a smooth and reliable user experience.\n•	Successfully integrated third-party APIs and payment-related services to enhance the app’s functionality, improve transaction flow, and support the platform’s growth by making installment payments easier and more user-friendly for customers.',
  ),
  JobModel(
    companyName: 'Tentony',
    location: 'Baku, Azerbaijan',
    dates: '07/2022 - 02/2023',
    description: '• Developed and contributed significantly to the success of "Tentony" - an expansive e-commerce application that has established itself as a prominent online shopping and selling platform in Azerbaijan.\n• Collaborated closely with UX/UI designers to implement visually appealing designs, playing a key role in positioning the app as a top-rated event management solution on both iOS and Android platforms.\n• Resulted in heightened user engagement and widespread recognition, solidifying "Tentony" as a market leader in the region\'s e-commerce industry',
  ),
  JobModel(
    companyName: 'Baku Creative Projects',
    location: 'Baku, Azerbaijan',
    dates: '03/2021 - 06/2022',
    description: '• Spearheaded the development of "Wibty" - a pioneering social media platform acknowledged as Azerbaijan\'s first successful venture in this domain.\n• Engineered an innovative application that allows users to effortlessly post, listen to music, and connect with new contacts concurrently, creating a distinctive social environment.\n• Employed the BLoC package for streamlined state management, resulting in a 25% reduction in app loading times and a marked enhancement in overall user satisfaction.',
  ),
  JobModel(
    companyName: 'Frazex LLC',
    location: 'Baku, Azerbaijan',
    dates: '10/2020 - 12/2022',
    description: '• Engaged in the development of diverse mobile applications, notably contributing to e-commerce platforms like “Rahat Kart”, “Bouquet” and “Lilac.az”.\n• Additionally, played a pivotal role in creating food delivery applications, explicitly working on client-side interfaces and partner/courier interfaces such as “Tezibu Partner” and “Tezibu Courier”.\n• Actively collaborated with clients throughout the requirements-gathering phase, ensuring a comprehensive understanding of objectives, ultimately reducing development iterations substantially.',
  ),
];
