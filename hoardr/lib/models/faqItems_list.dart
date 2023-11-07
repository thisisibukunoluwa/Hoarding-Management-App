

class FaqItem {
   String title;
   String body;
  bool isExpanded;
  FaqItem(
     this.title, this.body, {this.isExpanded = false});

  List<FaqItem> getFaqItems() {
    return [
      FaqItem(
            "What is digslist?",
            
              "Digslist gives you the opportunity to find roommates according to your interests, location and your lifes philosophy as a person, it is easy to use and makes it quick to get someone within the same proximity or someone who is about to move into your city."),
      FaqItem(
            "WHow does Digslist work?",
            
              "Digslist is a platform that helps you find compatible roommates based on your interests, location, and life philosophy. To use Digslist, you create a profile, specify your preferences, and search for potential \"digsmates\" who share your values and are located near you. You can then reach out to potential roommates and start a conversation to see if you're a good fit."),
      FaqItem(
            "What happens when I find a digsmate?",
            
              "Once you find a compatible digsmate, you can communicate with them through the platform to discuss the details of living together. It's up to you and your potential digsmate to decide how you want to proceed, whether it's arranging a meeting, discussing housing options, or sharing more information to make an informed decision."),
      FaqItem(
            "What are the requirements to register?",
            
              "To register on Digslist, you need to provide some basic personal information, including your name, email address, and location. You must also agree to our terms of use and privacy policy. You should be of legal age in your country or region to create an account."),
      FaqItem(
            "Why do you need some personal details?",
            
              "We require some personal details to create a secure and trustworthy community on Digslist. Your information helps us verify your identity, connect you with potential roommates who match your preferences, and enhance your overall experience on the platform. Rest assured that your data is handled in accordance with our privacy policy."),
      FaqItem(
            "What is the process of getting a digsmate?",
            
              "The process typically involves the following steps:a. Create a Digslist account with your basic information.b. Fill out your profile, including your interests, lifestyle, and housing preferences. c. Search for potential digsmates using our filters and search features.d. Initiate conversations with potential roommates to get to know each other.e. Discuss living arrangements, rules, and expectations.f. Make an informed decision and choose a digsmate who aligns with your lifestyle."),
      FaqItem(
            "What happens to violators?",
            
              "Digslist takes user safety and compliance with our terms of use seriously. If we find that a user has violated our policies or engaged in inappropriate behavior, we will take appropriate actions, which may include warnings, suspensions, or permanent removal from the platform. Our goal is to maintain a respectful and safe environment for all users. If you encounter any issues, please report them to us, and we will investigate and take the necessary actions."),
    ];
  }
}
