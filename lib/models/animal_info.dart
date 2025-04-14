import 'package:flutter/material.dart';

class AnimalInfo {
  final String nome;
  final String imagem;
  final String descricao;
  final String habitat;
  final String alimentacao;
  final String comportamento;
  final String curiosidades;
  final String habitatImage;
  final List<String> perguntas;
  final List<List<String>> respostas;
  final List<String> respostasCorretas;

  AnimalInfo({
    required this.nome,
    required this.imagem,
    required this.descricao,
    required this.habitat,
    required this.alimentacao,
    required this.comportamento,
    required this.curiosidades,
    required this.habitatImage,
    required this.perguntas,
    required this.respostas,
    required this.respostasCorretas,
  });
}

final List<AnimalInfo> animais = [
  AnimalInfo(
    nome: 'Lhama',
    imagem: 'lib/assets/images/Lhama.png',
    descricao: 'A lhama (Lama glama) é um mamífero sul-americano domesticado, pertencente à família dos camelídeos, como os camelos e alpacas. Com porte médio, pesando entre 130 e 200 kg, é conhecida por seu pelo espesso e lanoso, que varia em cores como branco, marrom, preto e tons mesclados. As lhamas têm uma expressão amigável, orelhas curvas em forma de banana e pescoço longo. São amplamente utilizadas como animais de carga e também por sua lã e esterco (utilizado como fertilizante ou combustível).',

    habitat: 'As lhamas são nativas das regiões montanhosas da Cordilheira dos Andes, especialmente no Peru, Bolívia, Equador, Chile e Argentina. Elas vivem em altitudes que variam entre 2.300 e 4.000 metros acima do nível do mar, onde o ar é rarefeito e as temperaturas podem ser bastante baixas. Esse habitat inclui campos abertos, altiplanos, vales andinos e pastagens de alta montanha. São animais adaptados ao frio, à escassez de oxigênio e aos terrenos íngremes e rochosos.',

    alimentacao: 'As lhamas são animais herbívoros e ruminantes funcionais. Sua alimentação baseia-se principalmente em gramíneas, musgos, líquens e outras plantas rasteiras que encontram em seu habitat natural. Em áreas onde são domesticadas, também consomem feno, alfafa, grãos e alimentos suplementares. Elas possuem um sistema digestivo eficiente, com três compartimentos estomacais (ao contrário dos quatro dos verdadeiros ruminantes), que permite extrair o máximo de nutrientes de vegetação pobre. São conhecidas por serem pouco exigentes quanto à qualidade do alimento.',

    comportamento: 'Lhamas são animais altamente sociais, vivendo em grupos familiares liderados geralmente por um macho dominante. Elas estabelecem hierarquias sociais por meio de posturas, sons e até lutas entre machos. São pacíficas, mas podem cuspir uma substância viscosa composta de saliva e conteúdo estomacal quando se sentem ameaçadas, irritadas ou para impor respeito no grupo. Também vocalizam por meio de grunhidos, roncos e assobios suaves. Sua inteligência permite que sejam facilmente treinadas para carregar carga, respeitar comandos e participar de atividades de interação com humanos.',

    curiosidades: '• As lhamas foram domesticadas há mais de 5.000 anos pelos povos pré-colombianos dos Andes.\n'
        '• Apesar de pertencerem à mesma família dos camelos, as lhamas não têm corcova.\n'
        '• Sua lã é hipoalergênica e muito valorizada na indústria têxtil por ser quente, leve e macia.\n'
        '• São extremamente resistentes ao frio e à escassez de oxigênio, podendo sobreviver em condições ambientais extremas.\n'
        '• As lhamas têm memória e reconhecem pessoas com quem interagem regularmente.\n'
        '• Elas podem carregar até 30% de seu peso corporal em carga por longas distâncias.\n'
        '• São utilizadas também como animais de terapia e companhia em muitos países.\n'
        '• Uma lhama pode viver entre 15 e 25 anos, dependendo das condições de cuidado e ambiente.',

    habitatImage: 'lib/assets/images/habitat_Lhama.png',

    perguntas: [
      'Onde vive a lhama?',
      'Qual é sua alimentação principal?',
      'Como a lhama se defende?',
      'Qual a utilidade da lã da lhama?',
      'Qual é a origem da domesticação das lhamas?',
    ],

    respostas: [
      ['Floresta tropical', 'Deserto', 'Montanhas andinas'],
      ['Carnes', 'Insetos', 'Plantas e gramíneas'],
      ['Corre e se esconde', 'Cuspindo em seus oponentes', 'Morde com força'],
      ['É usada apenas como enfeite', 'É hipoalergênica e serve para roupas', 'Não tem utilidade'],
      ['Europa antiga', 'China medieval', 'Povos andinos há milênios'],
    ],

    respostasCorretas: [
      'Montanhas andinas',
      'Plantas e gramíneas',
      'Cuspindo em seus oponentes',
      'É hipoalergênica e serve para roupas',
      'Povos andinos há milênios',
    ],
  ),

  AnimalInfo(
    nome: 'Lobo Guará',
    imagem: 'lib/assets/images/lobo-Guara.png',
    descricao: 'O lobo-guará é o maior canídeo da América do Sul, com pelagem avermelhada e pernas longas.',
    habitat: 'Cerrado brasileiro.',
    alimentacao: 'Onívoro, come frutos, pequenos animais e insetos.',
    comportamento: 'Solítario e territorialista.',
    curiosidades: 'Adora a fruta lobeira, essencial na sua dieta.',
    habitatImage: 'lib/assets/images/habitat-Lobo-Guara.png',
    perguntas: ['Onde vive o lobo-guará?', 'Do que se alimenta?', 'É um animal solitário?'],
    respostas: [
      ['Floresta Amazônica', 'Cerrado', 'Caatinga'],
      ['Somente carne', 'Somente frutas', 'Frutas e pequenos animais'],
      ['Sim', 'Não', 'Só em época de caça'],
    ],
    respostasCorretas: ['Cerrado', 'Frutas e pequenos animais', 'Sim'],
  ),

  AnimalInfo(
    nome: 'Onça Pintada',
    imagem: 'assets/images/onca_pintada.png',
    descricao: 'Grande felino das Américas, forte, ágil e com pelagem característica.',
    habitat: 'Florestas tropicais e áreas alagadas.',
    alimentacao: 'Carnívora, caça capivaras, jacarés e outros.',
    comportamento: 'Solitária, caça à espreita.',
    curiosidades: 'Morde o crânio da presa com extrema força.',
    habitatImage: 'assets/images/habitat_onca.png',
    perguntas: ['Qual é o habitat da onça?', 'Ela caça em grupo?', 'Qual sua característica de ataque?'],
    respostas: [
      ['Deserto', 'Floresta tropical', 'Geleiras'],
      ['Sim', 'Não', 'Só à noite'],
      ['Corre rápido', 'Morde o pescoço', 'Morde o crânio'],
    ],
    respostasCorretas: ['Floresta tropical', 'Não', 'Morde o crânio'],
  ),

  AnimalInfo(
    nome: 'Macaco',
    imagem: 'assets/images/macaco.png',
    descricao: 'Mamífero primata com habilidades sociais e motoras avançadas.',
    habitat: 'Florestas tropicais e savanas.',
    alimentacao: 'Frutas, folhas, insetos.',
    comportamento: 'Vive em grupos, muito comunicativo.',
    curiosidades: 'Algumas espécies usam ferramentas.',
    habitatImage: 'assets/images/habitat_macaco.png',
    perguntas: ['Onde vivem?', 'O que comem?', 'São solitários?'],
    respostas: [
      ['Florestas', 'Desertos', 'Pólos'],
      ['Plantas', 'Insetos', 'Frutas e insetos'],
      ['Sim', 'Não', 'Só os machos'],
    ],
    respostasCorretas: ['Florestas', 'Frutas e insetos', 'Não'],
  ),

  AnimalInfo(
    nome: 'Píton',
    imagem: 'assets/images/piton.png',
    descricao: 'Serpente constritora, não venenosa, famosa por seu tamanho.',
    habitat: 'Florestas tropicais e savanas.',
    alimentacao: 'Pequenos mamíferos e aves.',
    comportamento: 'Caça emboscando e estrangulando.',
    curiosidades: 'Pode comer presas maiores que sua cabeça.',
    habitatImage: 'assets/images/habitat_piton.png',
    perguntas: ['A píton é venenosa?', 'Como ela mata suas presas?', 'O que come?'],
    respostas: [
      ['Sim', 'Não', 'Depende'],
      ['Com veneno', 'Estrangulando', 'Afogando'],
      ['Insetos', 'Pequenos animais', 'Folhas'],
    ],
    respostasCorretas: ['Não', 'Estrangulando', 'Pequenos animais'],
  ),

  AnimalInfo(
    nome: 'Tartaruga',
    imagem: 'assets/images/tartaruga.png',
    descricao: 'Réptil com casco resistente que pode viver em terra ou água.',
    habitat: 'Oceanos, rios e áreas costeiras.',
    alimentacao: 'Alga, pequenos crustáceos, frutas.',
    comportamento: 'Lenta, mas resistente.',
    curiosidades: 'Pode viver mais de 100 anos.',
    habitatImage: 'assets/images/habitat_tartaruga.png',
    perguntas: ['Quanto tempo vive?', 'O que come?', 'Onde vive?'],
    respostas: [
      ['Até 20 anos', 'Mais de 100 anos', '5 anos'],
      ['Peixes grandes', 'Plantas e pequenos animais', 'Carne vermelha'],
      ['Floresta', 'Mar e rios', 'Montanhas'],
    ],
    respostasCorretas: ['Mais de 100 anos', 'Plantas e pequenos animais', 'Mar e rios'],
  ),

  AnimalInfo(
    nome: 'Jacaré do Papo Amarelo',
    imagem: 'assets/images/jacare.png',
    descricao: 'Espécie de jacaré encontrada no Brasil, com papo amarelado.',
    habitat: 'Rios, pântanos e mangues.',
    alimentacao: 'Peixes, aves e pequenos mamíferos.',
    comportamento: 'Caça de emboscada, vive em áreas úmidas.',
    curiosidades: 'Pode ficar longos períodos submerso.',
    habitatImage: 'assets/images/habitat_jacare.png',
    perguntas: ['Onde vive?', 'Como caça?', 'O que come?'],
    respostas: [
      ['Deserto', 'Pântano', 'Montanha'],
      ['Em grupo', 'Com emboscada', 'Correndo atrás'],
      ['Frutas', 'Peixes e aves', 'Insetos'],
    ],
    respostasCorretas: ['Pântano', 'Com emboscada', 'Peixes e aves'],
  ),

  AnimalInfo(
    nome: 'Arara Azul',
    imagem: 'assets/images/arara_azul.png',
    descricao: 'Ave de plumagem azul vibrante, símbolo da fauna brasileira.',
    habitat: 'Florestas e cerrados.',
    alimentacao: 'Frutas e sementes, especialmente de palmeiras.',
    comportamento: 'Forma pares duradouros, vocalizações fortes.',
    curiosidades: 'Está ameaçada de extinção.',
    habitatImage: 'assets/images/habitat_arara.png',
    perguntas: ['Qual a cor da arara?', 'O que ela come?', 'Está em risco?'],
    respostas: [
      ['Vermelha', 'Azul', 'Verde'],
      ['Insetos', 'Sementes e frutas', 'Carne'],
      ['Sim', 'Não', 'Depende'],
    ],
    respostasCorretas: ['Azul', 'Sementes e frutas', 'Sim'],
  ),

  AnimalInfo(
    nome: 'Papagaio do Peito Roxo',
    imagem: 'assets/images/papagaio_roxo.png',
    descricao: 'Papagaio raro com coloração roxa no peito.',
    habitat: 'Matas atlânticas e subtropicais.',
    alimentacao: 'Frutas e sementes.',
    comportamento: 'Vive em bandos e é muito vocal.',
    curiosidades: 'Endêmico do Brasil e ameaçado de extinção.',
    habitatImage: 'assets/images/habitat_papagaio.png',
    perguntas: ['Onde vive?', 'O que tem no peito?', 'Está ameaçado?'],
    respostas: [
      ['Floresta Amazônica', 'Mata Atlântica', 'Caatinga'],
      ['Manchas verdes', 'Cor roxa', 'Nada'],
      ['Sim', 'Não', 'Parcialmente'],
    ],
    respostasCorretas: ['Mata Atlântica', 'Cor roxa', 'Sim'],
  ),

  AnimalInfo(
    nome: 'Avestruz',
    imagem: 'assets/images/avestruz.png',
    descricao: 'Maior ave do mundo, não voa, mas corre muito rápido.',
    habitat: 'Savanas e desertos da África.',
    alimentacao: 'Frutas, sementes, pequenos insetos.',
    comportamento: 'Vive em bandos.',
    curiosidades: 'Pode correr até 70 km/h.',
    habitatImage: 'assets/images/habitat_avestruz.png',
    perguntas: ['Ela voa?', 'Qual sua velocidade?', 'Onde vive?'],
    respostas: [
      ['Sim', 'Não', 'Às vezes'],
      ['Até 30 km/h', 'Até 70 km/h', 'Até 10 km/h'],
      ['Floresta', 'Savana', 'Montanhas'],
    ],
    respostasCorretas: ['Não', 'Até 70 km/h', 'Savana'],
  ),
];
