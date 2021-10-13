class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;

  const User({
    this.imagePath,
    this.name,
    this.email,
    this.about,
  });
}

class UserPreferences {
  static const myUser = User(
    imagePath: 'images/user.jpg',
    name: 'Saurabh Dhingra',
    email: 'saurabhdhingra20@gmail.com',
    about: 'Flutter Developer',
  );
}
