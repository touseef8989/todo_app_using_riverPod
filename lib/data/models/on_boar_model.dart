class OnboardingModel {
  String? image;
  String? title;
  String? description;
  OnboardingModel({
    this.description,
    this.image,
    this.title,
  });
}

List<OnboardingModel> contents = [
  OnboardingModel(
    description: "everyboday have different goals hurrup! set your goals",
    image: "images/task-1.png",
    title: "Select Your Task here hurryUp!",
  ),
  OnboardingModel(
    description: "Goal is neccessary for life to spend good life",
    image: "images/task-2.png",
    title: "First App where you select lot of goals",
  ),
  OnboardingModel(
    description: "life is good when you select your goals",
    image: "images/task-3.png",
    title: "set your goals",
  ),
];
