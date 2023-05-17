class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;
  final String code;

  const Option({
    required this.code,
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text:
        'Tko je bio osnivač obitelji Frankopan? / \nWho was the founder of the Frankopan family?',
    options: [
      const Option(code: 'A', text: 'Bartol I', isCorrect: false),
      const Option(code: 'B', text: 'Dujam I', isCorrect: true),
      const Option(code: 'C', text: 'Bela III', isCorrect: false),
      const Option(code: 'D', text: 'Franjo II', isCorrect: false),
    ],
  ),
  Question(
    text:
        'Koja je bila svrha Vinodolskog zakonika? / \nWhat was the purpose of the Vinodol Code?',
    options: [
      const Option(
          code: 'A',
          text:
              'Za predstavljanje obitelji Frankopan / To record the lineage of the Frankopan family',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Uspostaviti sustav kazni za kazneno pravo / To establish a system of punishments for criminal law',
          isCorrect: false),
      const Option(
          code: 'C',
          text: 'Za zaštitu prava žena / To protect the rights of women',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'Da bi se utvrdila prava i dužnosti sukobljenih strana / To determine the rights and duties of conflicting parties',
          isCorrect: true),
    ],
  ),
  Question(
    text:
        'Za koga je bila Elizabeta Frankopan udana u dobi od dvije godine? / \nWho was Elizabeth Frankopan engaged to at the age of two?',
    options: [
      const Option(
          code: 'A',
          text: 'Bartol I Frankopan / Bartol I Frankopan',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Bele III, hrvatski-mađarski kralj / Bele III, the Croatian-Hungarian king',
          isCorrect: false),
      const Option(
          code: 'C',
          text:
              'Andrija II, hrvatsko-mađarski kralj / Andrew II, the Croatian-Hungarian king',
          isCorrect: false),
      const Option(
          code: 'D',
          text: 'Grof Federika II Celjskog / Count Frederick II Celjskog',
          isCorrect: true),
    ],
  ),
  Question(
    text:
        'Kad je stvoren Vinodolski zakonik? / \nWhen was the Vinodol Code created?',
    options: [
      const Option(
          code: 'A',
          text: '6. siječnja 1288 / January 6, 1288',
          isCorrect: true),
      const Option(code: 'B', text: '1118', isCorrect: false),
      const Option(code: 'C', text: "1416", isCorrect: false),
      const Option(code: 'D', text: "1602", isCorrect: false),
    ],
  ),
  Question(
    text:
        'Koja je bila okupacija Dujama I, osnivača obitelji Frankopan? / \nWhat was the occupation of Dujam I, the founder of the Frankopan family?',
    options: [
      const Option(code: 'A', text: 'Pjesnik / Poet', isCorrect: false),
      const Option(code: 'B', text: 'Umjetnik / Artist', isCorrect: false),
      const Option(
          code: 'C',
          text:
              'Vojnik, menadžer i političar / Skilled soldier, manager, and politician',
          isCorrect: true),
      const Option(
          code: 'D',
          text: '"Benediktinski redovnik/ Benedictine monk',
          isCorrect: false),
    ],
  ),
  Question(
    text:
        'Koji je bio glavni fokus ekonomije Frankopana tijekom 16. stoljeća? / \nWhat was the main focus of the economy of the Frankopans during the 16th century?',
    options: [
      const Option(
          code: 'A',
          text: 'Narodna medicina / Folk medicine',
          isCorrect: false),
      const Option(
          code: 'B',
          text: 'Stvaranje pašnjaka / The creation of pastures',
          isCorrect: false),
      const Option(
          code: 'C',
          text:
              'Iskorištavanje prirodnih resursa / Exploitation of natural resources',
          isCorrect: true),
      const Option(
        code: 'D',
        text: 'Trgovina drvom / The timber trade',
        isCorrect: false,
      ),
    ],
  ),
  Question(
    text:
        'Kako su obitelji Frankopani i Zrinski koristili prirodne resurse planinskog kotara? / \nHow did the Frankopans and Zrinski families use the natural resources of the Mountain Cotar?',
    options: [
      const Option(
          code: 'A',
          text:
              'Usredotočili su se na narodnu medicinu / They focused on folk medicine',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Usredotočili su se na ljekovita svojstva biljaka / They focused on the healing properties of plants',
          isCorrect: false),
      const Option(
          code: 'C',
          text: 'Usredotočili su se na lov / They focused on hunting',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'Bavili su se preradom rude i trgovinom drva te stvaranjem pašnjaka / They were engaged in ore processing and wood trade, and the creation of pastures',
          isCorrect: true),
    ],
  ),
  Question(
    text:
        'Koji je značaj utvrde u povijesti obitelji Frankopan? / \nWhat is the significance of the Tomb in the history of the Frankopan family?',
    options: [
      const Option(
          code: 'A',
          text:
              'Utvrda je dobila ime po grobovima Tatara i Hrvata ubijenih u bitci 1242 / The Tomb was named after the graves of Tatars and Croats killed in 1242',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Utvrda je imala veliku obrambenu važnost za Frankopane. / The Tomb had great defensive importance for the Frankopans.',
          isCorrect: true),
      const Option(
          code: 'C',
          text:
              'Utvrda je bila centar za proučavanje osmanskih upada. / The Tomb was a center for the study of Ottoman incursions.',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'Utvrda je bila na mjestu Trsat, današnjeg interpretacijskog centra. / The Tomb was the location of the Trsat Interpretation Center.',
          isCorrect: false),
    ],
  ),
  Question(
    text:
        'Zašto su Frankopani podržavali Crkvu? / \nWhy did the Frankopans support the Church?',
    options: [
      const Option(
          code: 'A',
          text:
              'Podržavali su Crkvu za kontrolu vjerskih institucija i utjecaja na društvo. / They supported the Church for control of religious institutions and influence on society.',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Podržavali su Crkvu jer je darovane resurse koristila umjereno i pridonijela ekonomskom razvoju. / They supported the Church and Church used the donated resources contributed to economic development.',
          isCorrect: true),
      const Option(
          code: 'C',
          text:
              'Podržavali su Crkvu zbog podrške franjevacima i pavlinima. / They supported the Church for the support of the Franciscans and Paulines.',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'Podržavali su Crkvu za oproštenje grijeha i spasenje duša pokojnika. / They supported the Church for forgiveness of sins and salvation of the souls of the deceased',
          isCorrect: false),
    ],
  ),
  Question(
    text:
        'Kako su obitelji Frankopani i Zrinski poboljšali eksploataciju šuma u planinskom kotaru? / \nHow did the Frankopans and Zrinski families improve the exploitation of forests in the Mountain Cotar?',
    options: [
      const Option(
          code: 'A',
          text:
              'Usredotočili su se na ljekovita svojstva biljaka. / They focused on the healing properties of plants.',
          isCorrect: false),
      const Option(
          code: 'B',
          text:
              'Izgradili su postrojenja za preradu rude, bavili se trgovinom drvom i stvarali pašnjake. / They constructed ore processing plants, engaged in the timber trade, and created pastures.',
          isCorrect: true),
      const Option(
          code: 'C',
          text: 'Poboljšali su lovišta. / They improved the hunting grounds.',
          isCorrect: false),
      const Option(
          code: 'D',
          text:
              'Bavili su se uzgojem bilja i biljaka. / They engaged in the farming of herbs and plants.',
          isCorrect: false),
    ],
  ),
];
