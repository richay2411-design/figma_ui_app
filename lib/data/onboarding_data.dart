class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: 'assets/images/onboarding1.png',
    title: 'Online Payment',
    description: 'Easy and secure online payment system',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding2.png',
    title: 'Online Shopping',
    description: 'Shop everything you need online',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding3.png',
    title: 'Home Delivery Service',
    description: 'Fast delivery at your doorstep',
  ),
];
