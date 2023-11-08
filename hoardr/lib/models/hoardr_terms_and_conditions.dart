class HoardrTerm {
  String title;
  String content;

  HoardrTerm(this.title, this.content);

  List<HoardrTerm> getTermsList() {
    return [
      HoardrTerm("Acceptance of Terms",
          "By downloading, installing, or using the Hoardr mobile application, you acknowledge that you have read, understood, and agree to comply with these Terms. If you do not agree with any part of these Terms, you should not use the App."),
      HoardrTerm("Privacy Policy",
          "Your use of the App is also governed by our Privacy Policy, which can be found at [link to Privacy Policy]. By using the App, you consent to the collection and use of your personal information as described in the Privacy Policy."),
      HoardrTerm("User Registration",
          "You may be required to register and create an account to use certain features of the App. You are responsible for maintaining the confidentiality of your account credentials, and you agree to provide accurate, current, and complete"),
      HoardrTerm("Ownership and Licensing",
          "The App and its content, including but not limited to text, graphics, software, and all other materials, are owned by Hoardr and are protected by intellectual property laws. You may use the App for your personal, non-commercial use only. You are not allowed to reproduce, modify, distribute, or create derivative works based on the App without our prior written consent."),
      HoardrTerm("Termination",
          "Hoardr reserves the right to terminate, suspend, or restrict your access to the App at any time, with or without notice, for any reason. You may also terminate your use of the App at any time. Upon termination, all provisions of these Terms that should, by their nature, survive termination will continue to be in effect."),
      HoardrTerm("Changes to Terms",
          "Hoardr reserves the right to change or modify these Terms at any time, with or without notice. It is your responsibility to review these Terms periodically. Your continued use of the App after any changes will indicate your acceptance of the modified Terms."),
      HoardrTerm("Disclaimers",
          "The App is provided 'as is' and 'as available,' without any warranties or guarantees. Hoardr does not make any representations or warranties regarding the accuracy, reliability, or completeness of the App's content or its suitability for your specific needs."),
      HoardrTerm("Limitation of Liability",
          "To the fullest extent permitted by applicable law, Hoardr and its affiliates, employees, and agents shall not be liable for any direct, indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, arising out of your use of the App."),
      HoardrTerm("Contact Information",
          "If you have any questions or concerns about these Terms or the App, please contact us at [contact email]."),
    ];
  }
}
