class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Intermedio',
    organization: 'Udemy',
    date: 'APR 2023',
    skills: 'Flutter . Dart . Programming',
    credential:
        'https://www.udemy.com/certificate/UC-5b01c756-0d20-4342-94e6-9d5860d1c95e/',
  ),
  CertificateModel(
    name: 'Fundamentos de Programación',
    organization: 'Udemy',
    date: 'DIC 2022',
    skills: 'Programming',
    credential:
        'https://www.udemy.com/certificate/UC-70f0d360-1fd5-4bcd-9ad4-054d40b32200/',
  ),
  CertificateModel(
    name: 'Tu guía completa para IOS y Android',
    organization: 'Udemy',
    date: 'DIC 2022',
    skills: 'Flutter, Dart, Programming',
    credential:
        'https://www.udemy.com/certificate/UC-70f0d360-1fd5-4bcd-9ad4-054d40b32200/',
  ),
  CertificateModel(
    name: 'Flutter Avanzado',
    organization: 'Udemy',
    date: 'AGU 2023',
    skills: 'Flutter, Dart, Programming',
    credential:
        'https://www.udemy.com/certificate/UC-5e522864-8ab3-44e9-8d12-c16bd04fd3c2/',
  ),
];
