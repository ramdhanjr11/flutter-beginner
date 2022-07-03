class Course {
  String image;
  String title;
  String content;

  Course({required this.image, required this.title, required this.content});
}

List<Course> generateCourses() {
  List<Course> courses = [];
  courses.addAll([
    Course(
        image: 'images/android_dev_logo.png',
        title: 'Android Developer',
        content: 'Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global.'
    ),
    Course(
        image: 'images/back_end_web_logo.png',
        title: 'Backend Developer',
        content: 'Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer sesuai kebutuhan industri.'
    ),
    Course(
        image: 'images/dos_azure_cloud_developer_logo.png',
        title: 'Azure Cloud Developer',
        content: 'Kurikulum lengkap yang didesain bersama salah satu penyedia cloud solution terbesar di dunia yaitu Microsoft Azure. Setiap kelas mempersiapkan siswa untuk ujian sertifikasi resmi Azure dari Microsoft.'
    ),
    Course(
        image: 'images/front_end_web_logo.png',
        title: 'Frontend Web Developer',
        content: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang Web Development. Siswa dipersiapkan untuk menjadi Front-End Web Developer sesuai standar kebutuhan industri.'
    ),
    Course(
        image: 'images/back_end_web_logo.png',
        title: 'Google Cloud Professional',
        content: 'Kurikulum didesain oleh Dicoding bersama Google dan para pelaku industri di bidang Cloud Computing. Siswa dipersiapkan untuk menjadi Google Cloud Professional sesuai kebutuhan industri.'
    ),
    Course(
        image: 'images/ios_developer_logo.png',
        title: 'IOS Developer',
        content: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.'
    ),
    Course(
        image: 'images/machine_learning_developer_logo.png',
        title: 'Machine Learning Developer',
        content: 'Kurikulum lengkap yang disusun oleh Dicoding bersama IBM dan Google beserta pelaku industri. Siswa dipersiapkan untuk menjadi Machine Learning Developer sesuai standar kebutuhan industri.'
    ),
    Course(
        image: 'images/multi_platform_app_developer_logo.png',
        title: 'Multi-Platform App Developer',
        content: 'Kurikulum disusun oleh Dicoding bersama Google beserta pelaku industri Multi-Platform App Development. Siswa dipersiapkan untuk menjadi Multi-Platform App Developer sesuai standar kebutuhan industri.'
    ),
    Course(
        image: 'images/react_logo.png',
        title: 'React Developer',
        content: 'Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang React Developer berstandar global.'
    ),
  ]);
  return courses;
}
