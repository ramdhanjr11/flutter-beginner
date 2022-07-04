class Course {
  String image;
  String title;
  String content;
  List<StepCourse> stepCourses;

  Course({
    required this.image,
    required this.title,
    required this.content,
    required this.stepCourses
  });
}

class StepCourse {
  int step;
  String title;
  int estimatedHours;
  double rate;
  String level;
  int moduleCount;
  double registeredStudent;

  StepCourse({
    required this.step,
    required this.title,
    required this.estimatedHours,
    required this.rate,
    required this.level,
    required this.moduleCount,
    required this.registeredStudent
  });
}

List<Course> generateCourses() {
  List<Course> courses = [];
  courses.addAll([
    Course(
        image: 'images/android_dev_logo.png',
        title: 'Android Developer',
        content: 'Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Memulai Pemrograman Dengan Kotlin',
              estimatedHours: 50,
              rate: 4.85,
              level: 'Dasar - Pemula',
              moduleCount: 118,
              registeredStudent: 40.225
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Membuat Aplikasi Android untuk Pemula',
              estimatedHours: 40,
              rate: 4.88,
              level: 'Pemula',
              moduleCount: 32,
              registeredStudent: 100.140
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Fundamental Aplikasi Android',
              estimatedHours: 150,
              rate: 4.87,
              level: 'Menengah',
              moduleCount: 112,
              registeredStudent: 36.488
          ),
          StepCourse(
              step: 4,
              title: 'Belajar Pengembangan Aplikasi Android Intermediate',
              estimatedHours: 100,
              rate: 4.76,
              level: 'Mahir',
              moduleCount: 114,
              registeredStudent: 1.210
          ),
          StepCourse(
              step: 5,
              title: 'Belajar Prinsip Pemrograman Solid',
              estimatedHours: 15,
              rate: 4.86,
              level: 'Menengah',
              moduleCount: 41,
              registeredStudent: 26.977
          ),
          StepCourse(
              step: 6,
              title: 'Menjadi Android Developer Expert',
              estimatedHours: 90,
              rate: 4.81,
              level: 'Professional',
              moduleCount: 87,
              registeredStudent: 2.914
          ),
        ]
    ),
    Course(
        image: 'images/back_end_web_logo.png',
        title: 'Backend Developer',
        content: 'Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer sesuai kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Cloud Practitioner Essentials (Belajar Dasar AWS Cloud)',
              estimatedHours: 13,
              rate: 4.79,
              level: 'Dasar',
              moduleCount: 87,
              registeredStudent: 108.685
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Dasar Pemrograman Javascript',
              estimatedHours: 45,
              rate: 4.85,
              level: 'Dasar',
              moduleCount: 117,
              registeredStudent: 30.489
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Membuat Aplikasi Back-End untuk Pemula',
              estimatedHours: 45,
              rate: 4.90,
              level: 'Pemula',
              moduleCount: 102,
              registeredStudent: 21.913
          ),
          StepCourse(
              step: 4,
              title: 'Architecting on AWS (Membangun Arsitektur Cloud di AWS)',
              estimatedHours: 40,
              rate: 4.83,
              level: 'Pemula - Menengah',
              moduleCount: 170,
              registeredStudent: 10.855
          ),
          StepCourse(
              step: 5,
              title: 'Belajar Fundamental Aplikasi Back-End',
              estimatedHours: 90,
              rate: 4.92,
              level: 'Menengah',
              moduleCount: 183,
              registeredStudent: 2.868
          ),
          StepCourse(
              step: 6,
              title: 'Menjadi Back-End Developer Expert',
              estimatedHours: 76,
              rate: 4.92,
              level: 'Mahir - Profesional',
              moduleCount: 99,
              registeredStudent: 1.139
          ),
        ]
    ),
    Course(
        image: 'images/dos_azure_cloud_developer_logo.png',
        title: 'Azure Cloud Developer',
        content: 'Kurikulum lengkap yang didesain bersama salah satu penyedia cloud solution terbesar di dunia yaitu Microsoft Azure. Setiap kelas mempersiapkan siswa untuk ujian sertifikasi resmi Azure dari Microsoft.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Belajar Dasar-Dasar Azure Cloud',
              estimatedHours: 40,
              rate: 4.88,
              level: 'Dasar',
              moduleCount: 94,
              registeredStudent: 6.239
          ),
          StepCourse(
              step: 2,
              title: 'Menjadi Azure Cloud Developer',
              estimatedHours: 40,
              rate: 4.92,
              level: 'Pemula - Menengah',
              moduleCount: 85,
              registeredStudent: 3.610
          ),
        ]
    ),
    Course(
        image: 'images/front_end_web_logo.png',
        title: 'Frontend Web Developer',
        content: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang Web Development. Siswa dipersiapkan untuk menjadi Front-End Web Developer sesuai standar kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Belajar Dasar Pemrograman Web',
              estimatedHours: 55,
              rate: 4.86,
              level: 'Dasar - Pemula',
              moduleCount: 143,
              registeredStudent: 102.522
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Membuat Front-End Web untuk Pemula',
              estimatedHours: 46,
              rate: 4.84,
              level: 'Pemula',
              moduleCount: 82,
              registeredStudent: 28.950
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Fundamental Front-End Web Development',
              estimatedHours: 70,
              rate: 4.87,
              level: 'Pemula - Menengah',
              moduleCount: 137,
              registeredStudent: 22.597
          ),
          StepCourse(
              step: 4,
              title: 'Menjadi Front-End Web Developer Expert',
              estimatedHours: 90,
              rate: 4.88,
              level: 'Mahir - Profesional',
              moduleCount: 175,
              registeredStudent: 4.193
          ),
        ]
    ),
    Course(
        image: 'images/back_end_web_logo.png',
        title: 'Google Cloud Professional',
        content: 'Kurikulum didesain oleh Dicoding bersama Google dan para pelaku industri di bidang Cloud Computing. Siswa dipersiapkan untuk menjadi Google Cloud Professional sesuai kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Belajar Dasar Google Cloud',
              estimatedHours: 12,
              rate: 4.87,
              level: 'Dasar',
              moduleCount: 78,
              registeredStudent: 3.040
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Dasar Pemrograman Javascript',
              estimatedHours: 45,
              rate: 4.85,
              level: 'Dasar',
              moduleCount: 117,
              registeredStudent: 30.489
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Membuat Aplikasi Back-End untuk Pemula dengan Google Cloud',
              estimatedHours: 45,
              rate: 4.85,
              level: 'Pemula',
              moduleCount: 108,
              registeredStudent: 2.198
          ),
          StepCourse(
              step: 4,
              title: 'Menjadi Google Cloud Engineer',
              estimatedHours: 40,
              rate: 4.89,
              level: 'Pemula - Menengah',
              moduleCount: 88,
              registeredStudent: 3.358
          ),
          StepCourse(
              step: 5,
              title: 'Menjadi Google Cloud Architect',
              estimatedHours: 35,
              rate: 4.90,
              level: 'Menengah',
              moduleCount: 79,
              registeredStudent: 762
          ),
        ]
    ),
    Course(
        image: 'images/ios_developer_logo.png',
        title: 'IOS Developer',
        content: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Memulai Pemrograman Dengan Swift',
              estimatedHours: 40,
              rate: 4.83,
              level: 'Dasar',
              moduleCount: 95,
              registeredStudent: 6.868
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Membuat Aplikasi IOS untuk Pemula',
              estimatedHours: 40,
              rate: 4.80,
              level: 'Pemula',
              moduleCount: 74,
              registeredStudent: 2.817
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Fundamental Aplikasi IOS',
              estimatedHours: 70,
              rate: 4.81,
              level: 'Menengah',
              moduleCount: 70,
              registeredStudent: 841
          ),
          StepCourse(
              step: 4,
              title: 'Belajar Prinsip Pemrograman SOLID',
              estimatedHours: 15,
              rate: 4.86,
              level: 'Menengah',
              moduleCount: 41,
              registeredStudent: 26.977
          ),
          StepCourse(
              step: 5,
              title: 'Menjadi IOS Developer Expert',
              estimatedHours: 70,
              rate: 4.91,
              level: 'Mahir - Profesional',
              moduleCount: 135,
              registeredStudent: 511
          ),
        ]
    ),
    Course(
        image: 'images/machine_learning_developer_logo.png',
        title: 'Machine Learning Developer',
        content: 'Kurikulum lengkap yang disusun oleh Dicoding bersama IBM dan Google beserta pelaku industri. Siswa dipersiapkan untuk menjadi Machine Learning Developer sesuai standar kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Belajar Dasar Visualisasi Data',
              estimatedHours: 16,
              rate: 4.85,
              level: 'Dasar',
              moduleCount: 50,
              registeredStudent: 39.704
          ),
          StepCourse(
              step: 2,
              title: 'Memulai Pemrograman Dengan Python',
              estimatedHours: 20,
              rate: 4.75,
              level: 'Dasar',
              moduleCount: 45,
              registeredStudent: 48.881
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Machine Learning untuk Pemula',
              estimatedHours: 30,
              rate: 4.80,
              level: 'Pemula',
              moduleCount: 56,
              registeredStudent: 30.717
          ),
          StepCourse(
              step: 4,
              title: 'Belajar Pengembangan Machine Learning',
              estimatedHours: 40,
              rate: 4.80,
              level: 'Menengah',
              moduleCount: 70,
              registeredStudent: 3.908
          ),
          StepCourse(
              step: 5,
              title: 'Machine Learning Terapan',
              estimatedHours: 40,
              rate: 4.82,
              level: 'Mahir',
              moduleCount: 109,
              registeredStudent: 993
          ),
        ]
    ),
    Course(
        image: 'images/multi_platform_app_developer_logo.png',
        title: 'Multi-Platform App Developer',
        content: 'Kurikulum disusun oleh Dicoding bersama Google beserta pelaku industri Multi-Platform App Development. Siswa dipersiapkan untuk menjadi Multi-Platform App Developer sesuai standar kebutuhan industri.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Memulai Pemrograman Dengan Dart',
              estimatedHours: 20,
              rate: 4.84,
              level: 'Dasar',
              moduleCount: 81,
              registeredStudent: 14.427
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
              estimatedHours: 40,
              rate: 4.87,
              level: 'Pemula',
              moduleCount: 51,
              registeredStudent: 11.759
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Fundamental Aplikasi Flutter',
              estimatedHours: 70,
              rate: 4.77,
              level: 'Menengah',
              moduleCount: 107,
              registeredStudent: 2.266
          ),
          StepCourse(
              step: 4,
              title: 'Belajar Prinsip Pemrograman SOLID',
              estimatedHours: 15,
              rate: 4.86,
              level: 'Menengah',
              moduleCount: 41,
              registeredStudent: 26.977
          ),
          StepCourse(
              step: 5,
              title: 'Menjadi Flutter Developer Expert',
              estimatedHours: 85,
              rate: 4.86,
              level: 'Mahir - Profesional',
              moduleCount: 93,
              registeredStudent: 845
          ),
        ]
    ),
    Course(
        image: 'images/react_logo.png',
        title: 'React Developer',
        content: 'Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang React Developer berstandar global.',
        stepCourses: [
          StepCourse(
              step: 1,
              title: 'Belajar Dasar Pemrograman Web',
              estimatedHours: 55,
              rate: 4.86,
              level: 'Dasar - Pemula',
              moduleCount: 143,
              registeredStudent: 102.522
          ),
          StepCourse(
              step: 2,
              title: 'Belajar Dasar Pemrograman JavaScript',
              estimatedHours: 45,
              rate: 4.85,
              level: 'Dasar',
              moduleCount: 117,
              registeredStudent: 30.489
          ),
          StepCourse(
              step: 3,
              title: 'Belajar Membuat Front-End Web untuk Pemula',
              estimatedHours: 46,
              rate: 4.84,
              level: 'Pemula',
              moduleCount: 82,
              registeredStudent: 28.950
          ),
          StepCourse(
              step: 4,
              title: 'Belajar Membuat Aplikasi Web dengan React',
              estimatedHours: 35,
              rate: 4.91,
              level: 'Pemula',
              moduleCount: 56,
              registeredStudent: 6.508
          ),
          StepCourse(
              step: 5,
              title: 'Belajar Fundamental Aplikasi Web dengan React',
              estimatedHours: 55,
              rate: 0,
              level: 'Menengah',
              moduleCount: 9,
              registeredStudent: 0
          ),
          StepCourse(
              step: 6,
              title: 'Menjadi React Web Developer Expert',
              estimatedHours: 70,
              rate: 0,
              level: 'Mahir',
              moduleCount: 10,
              registeredStudent: 0
          ),
        ]
    ),
  ]);
  return courses;
}
