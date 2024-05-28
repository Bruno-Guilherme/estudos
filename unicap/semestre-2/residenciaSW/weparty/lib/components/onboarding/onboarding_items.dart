import 'package:weparty/components/onboarding/onboarding_info.dart';

class OnboardingItems {
  /// Dados que serão montados a partir da estrutura de dados da classe info.
  
  List<OnboardingInfo> items = [
    OnboardingInfo(titulo: "titulo1", 
    descricao: "descricao1", 
    image: 'assets/images/onboardUm.svg'),

    OnboardingInfo(titulo: "titulo2", 
    descricao: "descricao2", 
    image: 'assets/images/onboardUm.svg'),

    OnboardingInfo(titulo: "titulo3", 
    descricao: "descricao3", 
    image: 'assets/images/onboardUm.svg'),
  ];
}