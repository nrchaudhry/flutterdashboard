const String oauthURL = "http://api.cwiztech.com:8080/";
const String authBasic = 'VXNlck1hbmFnbWVudDpzZWNyZXQ=';

const String applicationCode = 'KairaGroupMobileApp';
const String applicationTitle = 'Flutter Dashboard';

const String companyName = 'Compuwiz Technologies';
const String companyShortName = 'CWizTech';
const String logo = 'http://cwiztech.com/design/images/logo.png';
const String logo1white = 'http://cwiztech.com/design/images/logo-short.png';
const String loginBanner1 = 'http://cwiztech.com/design/images/intro-back.jpeg';
const String icon = 'http://cwiztech.com/design/images/favicon.ico';

const String serviceNAME = 'LOOKUP';
const String newsserviceNAME = 'NEWS';

class Highlight {
  String thumbnail;
  String title;
  Highlight({required this.thumbnail, required this.title});
}

List<Highlight> highlightItems = [
  Highlight(thumbnail: 'assets/images/bike.jpg', title: "My Bike 🏍"),
  Highlight(thumbnail: 'assets/images/cooking.jpg', title: "Cooking 🔪"),
  Highlight(thumbnail: 'assets/images/nature.jpg', title: "Nature 🏞"),
  Highlight(thumbnail: 'assets/images/pet.jpg', title: "Pet ❤️"),
  Highlight(thumbnail: 'assets/images/swimming.jpg', title: "Pool 🌊"),
  Highlight(thumbnail: 'assets/images/yoga.jpg', title: "Yoga 💪🏻"),
];
