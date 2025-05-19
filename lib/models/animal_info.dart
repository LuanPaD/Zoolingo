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
      'Quantos compartimentos estomacais possui a lhama?',
      'Que tipo de som as lhamas produzem?',
      'Por que as lhamas são adequadas ao ambiente andino?',
      'Quanto peso uma lhama pode carregar?',
      'Qual é a expectativa de vida média de uma lhama?',
    ],

    respostas: [
      ['Floresta tropical', 'Deserto', 'Montanhas andinas', 'Savana africana', 'Pantanal'],
      ['Carnes', 'Insetos', 'Plantas e gramíneas', 'Peixes e algas', 'Frutas tropicais'],
      ['Corre e se esconde', 'Cuspindo em seus oponentes', 'Morde com força', 'Usa os chifres', 'Finge de morto'],
      ['É usada apenas como enfeite', 'É hipoalergênica e serve para roupas', 'Não tem utilidade', 'Serve como brinquedo', 'É usada apenas como isolante térmico'],
      ['Europa antiga', 'China medieval', 'Povos andinos há milênios', 'Império Romano', 'Egito Antigo'],
      ['Dois', 'Três', 'Quatro', 'Cinco', 'Um'],
      ['Mugidos altos', 'Assobios e grunhidos suaves', 'Canto melodioso', 'Uivos prolongados', 'Silvos agudos'],
      ['Porque são bons nadadores', 'Porque têm pelos curtos', 'Porque resistem ao frio e ao ar rarefeito', 'Porque são carnívoros', 'Porque voam curtas distâncias'],
      ['Até 10% do seu peso corporal', 'Até 20%', 'Até 30%', 'Até 50%', 'Até 70%'],
      ['5 a 10 anos', '10 a 15 anos', '15 a 25 anos', '25 a 40 anos', 'Mais de 40 anos'],
    ],

    respostasCorretas: [
      'Montanhas andinas',
      'Plantas e gramíneas',
      'Cuspindo em seus oponentes',
      'É hipoalergênica e serve para roupas',
      'Povos andinos há milênios',
      'Três',
      'Assobios e grunhidos suaves',
      'Porque resistem ao frio e ao ar rarefeito',
      'Até 30%',
      '15 a 25 anos',
    ],
  ),

  AnimalInfo(
    nome: 'Lobo Guará',
    imagem: 'lib/assets/images/Lobo-Guara.png',
    descricao: 'O lobo-guará (Chrysocyon brachyurus) é o maior canídeo da América do Sul. Possui pelagem avermelhada, patas longas e finas, orelhas grandes e cauda espessa. Sua aparência única lembra uma mistura de lobo com raposa, embora não esteja diretamente relacionado a nenhum deles. É um animal solitário, crepuscular e adaptado a ambientes abertos. Seu porte esguio permite que caminhe com leveza pelas savanas e campos do Cerrado brasileiro.',

    habitat: 'O lobo-guará habita preferencialmente o Cerrado brasileiro, mas também pode ser encontrado em áreas de campos abertos e bordas de florestas no Paraguai, Bolívia e norte da Argentina. Ele evita florestas densas e prefere regiões com vegetação rasteira, facilitando sua locomoção e caça. A destruição do Cerrado é uma das principais ameaças à sua sobrevivência.',

    alimentacao: 'É um animal onívoro, com dieta variada. Alimenta-se de pequenos mamíferos, aves, répteis, frutos e raízes. A fruta do lobeira é uma parte essencial de sua dieta, ajudando no equilíbrio intestinal. Apesar de ser um predador, boa parte de sua alimentação é de origem vegetal, o que o torna fundamental para a dispersão de sementes na natureza.',

    comportamento: 'O lobo-guará é solitário e territorialista. Marca seu território com urina de odor forte e percorre grandes distâncias à procura de alimento. Costuma ser mais ativo ao entardecer e amanhecer. Apesar da aparência imponente, é tímido e evita contato com humanos. Sua vocalização é rara, mas pode emitir latidos graves e longos uivos.',

    curiosidades: '• O nome "guará" vem do tupi e significa "vermelho".\n'
        '• Suas longas patas são uma adaptação para enxergar por cima da vegetação do Cerrado.\n'
        '• A fruta do lobeira, que ele consome, tem propriedades medicinais.\n'
        '• É um importante dispersor de sementes.\n'
        '• Está listado como vulnerável à extinção no Brasil.\n'
        '• Sua imagem está estampada na nota de RS 200.',

    habitatImage: 'lib/assets/images/habitat-Lobo-Guara.png',

    perguntas: [
      'Qual é o habitat preferido do lobo-guará?',
      'De que fruta ele se alimenta frequentemente?',
      'Qual é uma característica marcante do lobo-guará?',
      'O lobo-guará pertence à mesma espécie dos lobos europeus?',
      'Que tipo de alimentação o lobo-guará possui?',
      'O que o lobo-guará faz para marcar território?',
      'Qual é o período de maior atividade do lobo-guará?',
      'Por que ele tem patas tão longas?',
      'Qual é o significado do nome "guará"?',
      'Em qual cédula brasileira o lobo-guará aparece?',
    ],

    respostas: [
      ['Florestas tropicais', 'Manguezais', 'Cerrado e campos abertos', 'Caatinga', 'Pantanal alagado'],
      ['Banana', 'Maçã-do-mato', 'Lobeira', 'Jabuticaba', 'Pequi'],
      ['Patas curtas e largas', 'Pelagem preta e brilhante', 'Patas longas e pelagem avermelhada', 'Garras afiadas', 'Cauda curta'],
      ['Sim, são a mesma espécie', 'Sim, são subespécies', 'Não, são espécies distintas', 'Sim, são primos diretos', 'Pertencem à família dos felinos'],
      ['Herbívoro', 'Carnívoro', 'Onívoro', 'Frugívoro', 'Insetívoro'],
      ['Raspa o chão com as patas', 'Urina com forte odor', 'Morde árvores', 'Faz barulho alto', 'Constrói ninhos'],
      ['Meio-dia', 'Madrugada apenas', 'Entardecer e amanhecer', 'Durante chuvas', 'Noite inteira'],
      ['Para correr mais rápido', 'Para fugir de predadores', 'Para enxergar sobre a vegetação', 'Para caçar no alto', 'Para manter o equilíbrio'],
      ['Animal veloz', 'Guardião', 'Vermelho', 'Líder da alcateia', 'Caminhante'],
      ['Nota de RS 2', 'Nota de RS 10', 'Nota de RS 50', 'Nota de RS 200', 'Nota de RS 100'],
    ],

    respostasCorretas: [
      'Cerrado e campos abertos',
      'Lobeira',
      'Patas longas e pelagem avermelhada',
      'Não, são espécies distintas',
      'Onívoro',
      'Urina com forte odor',
      'Entardecer e amanhecer',
      'Para enxergar sobre a vegetação',
      'Vermelho',
      'Nota de RS 200',
    ],
  ),


  AnimalInfo(
    nome: 'Onça Pintada',
    imagem: 'lib/assets/images/oncaPintada.png',
    descricao: 'A onça-pintada (Panthera onca) é o maior felino das Américas e o terceiro maior do mundo. Possui pelagem dourada com manchas escuras em forma de rosetas, corpo robusto, mandíbulas extremamente fortes e cauda curta. É um predador de topo e exerce papel crucial no equilíbrio dos ecossistemas. Vive principalmente em florestas tropicais, mas também pode ser encontrada em outros biomas como Cerrado e Pantanal.',

    habitat: 'A onça-pintada habita preferencialmente a Floresta Amazônica e o Pantanal, mas também ocorre no Cerrado e na Mata Atlântica. Necessita de áreas extensas com disponibilidade de água e presas. É um animal territorial e solitário, altamente adaptado à caça em diferentes ambientes.',

    alimentacao: 'Carnívora, a onça-pintada possui dieta diversificada, alimentando-se de capivaras, veados, jacarés, tatus e até grandes cobras. Sua técnica de caça é precisa: utiliza a força das mandíbulas para morder o crânio ou o pescoço da presa, causando morte instantânea. Também é conhecida por arrastar presas pesadas por grandes distâncias.',

    comportamento: 'É um animal solitário, com hábitos noturnos e crepusculares. Marca seu território com urina, fezes e arranhões em árvores. Usa a camuflagem para se aproximar da presa e é excelente nadadora. As fêmeas criam os filhotes sozinhas e são muito protetoras.',

    curiosidades: '• A palavra "onça" vem do tupi e significa "animal feroz".\n'
        '• Sua mordida é a mais forte entre os felinos, proporcionalmente ao tamanho do corpo.\n'
        '• Diferente de muitos felinos, gosta de água e é boa nadadora.\n'
        '• Está ameaçada de extinção devido à perda de habitat e caça ilegal.\n'
        '• É símbolo de força e poder para muitas culturas indígenas.\n'
        '• Cada onça tem um padrão único de manchas, como impressões digitais.',

    habitatImage: 'lib/assets/images/habitat - oncaPintada.png',

    perguntas: [
      'Qual é o habitat preferido da onça-pintada?',
      'Qual é a base da alimentação da onça-pintada?',
      'Como a onça-pintada caça suas presas?',
      'Por que a onça é importante no ecossistema?',
      'Qual é uma habilidade incomum para um felino que a onça possui?',
      'O que significa o nome "onça" em tupi?',
      'Que característica da onça é única como uma impressão digital?',
      'Qual o período de atividade da onça-pintada?',
      'Como marca seu território?',
      'Por que está ameaçada de extinção?',
    ],

    respostas: [
      ['Caatinga', 'Pantanal e Amazônia', 'Deserto do Saara', 'Campos gelados', 'Manguezais'],
      ['Frutas e folhas', 'Insetos apenas', 'Carne de animais variados', 'Néctar e pólen', 'Peixes exclusivamente'],
      ['Persegue por horas', 'Corre em campo aberto', 'Se aproxima usando camuflagem e morde o crânio', 'Derruba a presa com o peso do corpo', 'Usa armadilhas naturais'],
      ['Por polinizar plantas', 'Por controlar populações de presas', 'Por cavar tocas', 'Por semear frutas', 'Por cuidar de outros filhotes'],
      ['Gosta de escalar montanhas', 'Vive em grupos grandes', 'Gosta de nadar', 'Imita sons de outras espécies', 'Constrói ninhos'],
      ['Gato grande', 'Predador oculto', 'Animal feroz', 'Caçador do alto', 'Espírito do rio'],
      ['Peso', 'Altura', 'Padrão de manchas', 'Cor dos olhos', 'Tamanho da pata'],
      ['Meio-dia e início da tarde', 'Apenas de manhã', 'Noturno e crepuscular', 'Durante chuvas fortes', 'Nas estações secas'],
      ['Não marca território', 'Urina, fezes e arranhões em árvores', 'Uivos altos', 'Com rugidos constantes', 'Com trilhas de pegadas'],
      ['Por estar no topo da cadeia alimentar', 'Por se reproduzir pouco', 'Devido à perda de habitat e caça ilegal', 'Por falta de água', 'Porque evita humanos'],
    ],

    respostasCorretas: [
      'Pantanal e Amazônia',
      'Carne de animais variados',
      'Se aproxima usando camuflagem e morde o crânio',
      'Por controlar populações de presas',
      'Gosta de nadar',
      'Animal feroz',
      'Padrão de manchas',
      'Noturno e crepuscular',
      'Urina, fezes e arranhões em árvores',
      'Devido à perda de habitat e caça ilegal',
    ],
  ),

  AnimalInfo(
    nome: 'Macaco',
    imagem: 'lib/assets/images/macaco.png',
    descricao: 'Os macacos são primatas altamente inteligentes e sociais, encontrados em diversos biomas do Brasil, especialmente nas florestas tropicais. Possuem membros ágeis, cauda longa (em muitas espécies) e grande capacidade de interação com o ambiente. Variam muito em tamanho, coloração e comportamento conforme a espécie, como o macaco-prego, o bugio e o mico-leão-dourado.',

    habitat: 'Habitam principalmente florestas tropicais como a Amazônia e a Mata Atlântica. Vivem em árvores, formando grupos sociais organizados, onde se comunicam por vocalizações e gestos. Algumas espécies podem ser vistas em áreas urbanas próximas a matas. A presença de árvores altas e alimento disponível é essencial para sua sobrevivência.',

    alimentacao: 'A dieta dos macacos é majoritariamente onívora, com predominância de frutas, sementes, folhas, flores, insetos e pequenos vertebrados. Eles têm papel fundamental na dispersão de sementes e equilíbrio ecológico. Algumas espécies também utilizam ferramentas simples para acessar alimentos.',

    comportamento: 'São animais diurnos, sociáveis e comunicativos. Vivem em grupos com hierarquias bem definidas e cuidam uns dos outros. Aprendem observando e imitando, o que os torna excelentes solucionadores de problemas. Macacos usam vocalizações, expressões faciais e linguagem corporal para interagir.',

    curiosidades: '• Alguns macacos conseguem usar ferramentas, como pedras, para quebrar sementes.\n'
        '• Têm polegares opositores e excelente coordenação motora.\n'
        '• A cauda preênsil é usada como um "quinto braço" em várias espécies.\n'
        '• Possuem visão em cores, o que ajuda na escolha de alimentos.\n'
        '• A comunicação entre macacos pode incluir mais de 30 sons distintos.\n'
        '• Algumas espécies são protegidas por leis ambientais devido ao risco de extinção.',

    habitatImage: 'lib/assets/images/habitat-macaco.png',

    perguntas: [
      'Onde vivem, principalmente, os macacos?',
      'Qual é a base da alimentação dos macacos?',
      'Como os macacos ajudam o meio ambiente?',
      'O que significa dizer que um macaco tem "cauda preênsil"?',
      'Como os macacos se comunicam?',
      'Que tipo de organização social os macacos costumam ter?',
      'Qual é uma habilidade notável de alguns macacos?',
      'Durante qual período do dia os macacos são mais ativos?',
      'Por que alguns macacos estão ameaçados?',
      'Qual função a cauda pode exercer em algumas espécies de macacos?',
    ],

    respostas: [
      ['Desertos', 'Florestas tropicais', 'Campos de altitude', 'Regiões polares', 'Montanhas nevadas'],
      ['Carne crua', 'Sementes apenas', 'Frutas, sementes, insetos e folhas', 'Água e barro', 'Apenas flores e mel'],
      ['Caçando predadores', 'Sem função ecológica', 'Dispersando sementes', 'Destruindo árvores', 'Dominando territórios'],
      ['É uma cauda com garras', 'Cauda que muda de cor', 'Cauda que pode agarrar e segurar objetos', 'Cauda pequena e rígida', 'Cauda que emite sons'],
      ['Apenas por gritos altos', 'Através de dança e canto', 'Por vocalizações, expressões faciais e gestos', 'Com cores no pelo', 'Não se comunicam'],
      ['Isolada, sem grupos', 'Grupos com hierarquia e cooperação', 'Somente casais', 'Famílias que não se comunicam', 'Grupos silenciosos e imóveis'],
      ['Voar longas distâncias', 'Nadar com velocidade', 'Usar ferramentas simples', 'Mudar a cor da pele', 'Dormir por 20 horas'],
      ['Durante a noite', 'Somente ao entardecer', 'Durante o dia', 'Apenas com chuva', 'Quando estão sozinhos'],
      ['Por excesso de água', 'Por competição com humanos', 'Devido à perda de habitat e tráfico ilegal', 'Por se reproduzirem muito', 'Por atacar outros animais'],
      ['Ajuda no equilíbrio ao andar', 'É apenas decorativa', 'Serve para chamar parceiros', 'Ajuda a emitir sons', 'Ajuda a caçar presas grandes'],
    ],

    respostasCorretas: [
      'Florestas tropicais',
      'Frutas, sementes, insetos e folhas',
      'Dispersando sementes',
      'Cauda que pode agarrar e segurar objetos',
      'Por vocalizações, expressões faciais e gestos',
      'Grupos com hierarquia e cooperação',
      'Usar ferramentas simples',
      'Durante o dia',
      'Devido à perda de habitat e tráfico ilegal',
      'Ajuda no equilíbrio ao andar',
    ],
  ),

  AnimalInfo(
    nome: 'Píton',
    imagem: 'lib/assets/images/piton.png',
    descricao: 'A píton é uma serpente não peçonhenta de grande porte, pertencente à família Pythonidae. Encontrada principalmente na África, Ásia e Oceania, é conhecida por seu corpo musculoso, sua força impressionante e sua forma de caça por constrição. Algumas espécies, como a píton-reticulada, podem ultrapassar 6 metros de comprimento. Apesar de intimidantes, não representam risco direto aos humanos na maioria dos casos.',

    habitat: 'As pítons vivem em uma variedade de ambientes, como florestas tropicais, savanas, áreas pantanosas e regiões semiáridas. Elas preferem locais com vegetação densa, buracos, cavernas ou troncos ocos onde possam se esconder. Também são vistas em áreas próximas a rios e lagos, pois muitas espécies são boas nadadoras.',

    alimentacao: 'São carnívoras e se alimentam principalmente de mamíferos, aves e répteis de pequeno a médio porte. Caçam por emboscada: aguardam imóveis até a presa se aproximar, então atacam rapidamente, envolvendo o corpo da vítima e sufocando-a até a morte antes de engolir inteira. Podem passar semanas ou até meses sem se alimentar após uma grande refeição.',

    comportamento: 'São geralmente solitárias e têm hábitos noturnos. Movem-se lentamente, mas com precisão, e são muito pacientes ao esperar presas. Após a digestão, ficam longos períodos em repouso. Não possuem veneno e evitam confrontos. Em caso de ameaça, podem sibilar ou tentar se esconder. Durante a época de reprodução, as fêmeas protegem os ovos ativamente.',

    curiosidades: '• Algumas espécies de píton podem viver mais de 30 anos.\n'
        '• A píton-reticulada é a serpente mais longa do mundo.\n'
        '• Apesar de não serem venenosas, são predadoras altamente eficientes.\n'
        '• Podem engolir presas com até o dobro do diâmetro de sua cabeça.\n'
        '• Fêmeas botam ovos e muitas os incubam enrolando-se ao redor deles.\n'
        '• Seus dentes curvos ajudam a segurar a presa e impedir sua fuga.',

    habitatImage:  'lib/assets/images/habitat-piton.png',

    perguntas: [
      'Qual é a principal forma de caça da píton?',
      'Onde a píton prefere viver?',
      'De que se alimenta a píton?',
      'Qual característica física ajuda a píton a capturar suas presas?',
      'Por que a píton não precisa se alimentar com frequência?',
      'O que a píton faz ao se sentir ameaçada?',
      'Qual é a diferença entre uma píton e uma serpente peçonhenta?',
      'O que acontece após a píton capturar sua presa?',
      'Qual é a função dos dentes curvos da píton?',
      'Qual é o tempo de vida médio de algumas espécies de píton?',
    ],

    respostas: [
      ['Com veneno potente', 'Com mordidas repetidas', 'Por constrição (esmagamento)', 'Com armadilhas naturais', 'Com ataques em grupo'],
      ['Em áreas abertas', 'No topo das árvores', 'Em cavernas e florestas densas', 'Somente em desertos', 'No fundo do mar'],
      ['Frutas e folhas', 'Insetos pequenos', 'Aves, mamíferos e répteis', 'Peixes e algas', 'Grãos e sementes'],
      ['Seus olhos grandes', 'As cores vibrantes', 'A força muscular e o corpo alongado', 'As patas fortes', 'O veneno que injeta'],
      ['Porque só come frutas leves', 'Porque não gasta energia', 'Porque digere lentamente grandes presas', 'Porque dorme o tempo todo', 'Porque vive em locais frios'],
      ['Ataca imediatamente', 'Se enrola e sibila para intimidar', 'Sobe em árvores e foge', 'Se transforma em outro animal', 'Solta veneno pela cauda'],
      ['Possui veneno letal', 'É menor e mais ágil', 'Não possui veneno, mas caça por constrição', 'Voa para caçar', 'Depende da luz do sol'],
      ['Solta a presa para depois comê-la', 'Injeta veneno e espera', 'Engole inteira após sufocar', 'Arrasta até a toca e divide com o grupo', 'Desmembra antes de comer'],
      ['Cortar a presa', 'Injetar veneno', 'Impede a fuga da presa', 'Para escalar árvores', 'Produzir sons vibratórios'],
      ['Cerca de 5 anos', 'Mais de 30 anos', 'Apenas 1 ano', 'Entre 3 e 5 meses', 'Menos que um cão doméstico'],
    ],

    respostasCorretas: [
      'Por constrição (esmagamento)',
      'Em cavernas e florestas densas',
      'Aves, mamíferos e répteis',
      'A força muscular e o corpo alongado',
      'Porque digere lentamente grandes presas',
      'Se enrola e sibila para intimidar',
      'Não possui veneno, mas caça por constrição',
      'Engole inteira após sufocar',
      'Impede a fuga da presa',
      'Mais de 30 anos',
    ],
  ),

  AnimalInfo(
    nome: 'Tartaruga',
    imagem: 'lib/assets/images/tartaruga.png',
    descricao: 'As tartarugas são répteis pertencentes à ordem Testudines, caracterizadas por seu casco rígido que protege seus órgãos vitais. Vivem tanto em ambientes aquáticos quanto terrestres, dependendo da espécie. São animais de longa vida, metabolismo lento e comportamento geralmente pacífico. Seu corpo é adaptado à defesa, à alimentação herbívora ou onívora e à movimentação lenta.',

    habitat: 'Tartarugas habitam uma variedade de ecossistemas, incluindo oceanos, rios, lagos, pântanos e florestas tropicais. As marinhas vivem em águas costeiras e oceânicas, enquanto as de água doce vivem em lagos e rios calmos. As terrestres, como o jabuti, vivem em áreas secas e florestadas. A escolha do habitat depende da espécie e de sua adaptação fisiológica.',

    alimentacao: 'A alimentação das tartarugas varia conforme a espécie: tartarugas marinhas e de água doce podem ser onívoras, alimentando-se de algas, peixes pequenos, moluscos e vegetais. Já as terrestres, como os jabutis, geralmente são herbívoras, consumindo frutas, folhas, raízes e flores. Sua digestão é lenta e eficiente.',

    comportamento: 'São animais solitários, de hábitos diurnos ou crepusculares, e com instintos de autopreservação bem desenvolvidos. Em caso de perigo, retraem-se no casco. Possuem boa memória espacial e orientação, especialmente as marinhas, que retornam às praias onde nasceram para desovar. Não são agressivas e tendem a evitar confrontos.',

    curiosidades: '• Algumas tartarugas marinhas vivem mais de 80 anos.\n'
        '• Utilizam o campo magnético da Terra para orientação migratória.\n'
        '• O casco é formado por ossos e faz parte do esqueleto do animal.\n'
        '• A velocidade terrestre é baixa, mas nadam com agilidade.\n'
        '• Podem ficar longos períodos sem comida, graças ao metabolismo lento.\n'
        '• Têm visão e olfato bem desenvolvidos.',

    habitatImage: 'lib/assets/images/habitat-tartaruga.png',

    perguntas: [
      'Qual é a principal característica física das tartarugas?',
      'Onde vivem as tartarugas marinhas?',
      'Qual é a alimentação comum das tartarugas terrestres?',
      'O que as tartarugas fazem quando se sentem ameaçadas?',
      'Como as tartarugas marinhas encontram o caminho de volta para desovar?',
      'Qual é a função do casco da tartaruga?',
      'Que tipo de comportamento as tartarugas geralmente apresentam?',
      'Como é a velocidade das tartarugas em terra e na água?',
      'Quanto tempo uma tartaruga pode viver?',
      'Qual é o papel do metabolismo lento nas tartarugas?',
    ],

    respostas: [
      ['Pelo colorido', 'Casco rígido que protege o corpo', 'Presença de pelos', 'Chifres nas patas', 'Garras venenosas'],
      ['Nas montanhas', 'No alto das árvores', 'Em águas costeiras e oceânicas', 'Apenas em lagos', 'No deserto'],
      ['Insetos e carne', 'Peixes grandes', 'Frutas, folhas e raízes', 'Minerais do solo', 'Mel e seiva'],
      ['Atacam com mordidas', 'Se fingem de mortas', 'Retráem-se no casco', 'Fogem rapidamente', 'Soltam veneno'],
      ['Por instinto cego', 'Pelo som das ondas', 'Usam o campo magnético da Terra', 'Pela temperatura da água', 'Por cheiro de algas'],
      ['Ajuda a respirar', 'Atrai parceiros', 'Protege órgãos vitais', 'Ajuda a nadar mais rápido', 'Serve para camuflagem sonora'],
      ['Vivem em bandos barulhentos', 'São solitárias e evitam confronto', 'Atacam outros animais', 'Caçam em grupo', 'Fazem emboscadas'],
      ['Muito rápidas em terra, lentas na água', 'Lentas em ambos', 'Lentas em terra, ágeis na água', 'Rápidas em ambos', 'Imóveis'],
      ['Cerca de 5 anos', 'Entre 10 e 20 anos', 'Mais de 80 anos', 'Apenas 3 anos', 'Entre 2 e 4 meses'],
      ['Ajuda a fugir de predadores', 'Aumenta a força muscular', 'Permite sobreviver com pouca comida', 'Facilita o crescimento rápido', 'Produz energia térmica'],
    ],

    respostasCorretas: [
      'Casco rígido que protege o corpo',
      'Em águas costeiras e oceânicas',
      'Frutas, folhas e raízes',
      'Retráem-se no casco',
      'Usam o campo magnético da Terra',
      'Protege órgãos vitais',
      'São solitárias e evitam confronto',
      'Lentas em terra, ágeis na água',
      'Mais de 80 anos',
      'Permite sobreviver com pouca comida',
    ],
  ),


  AnimalInfo(
    nome: 'Jacaré de Papo Amarelo',
    imagem: 'lib/assets/images/jacare.png',
    descricao: 'O jacaré-de-papo-amarelo (Caiman latirostris) é um réptil da família Alligatoridae, típico da América do Sul. Possui corpo robusto, coloração verde-oliva com o ventre amarelado (daí o nome), e um focinho largo e achatado. Alcança até 3 metros de comprimento e é uma das espécies mais conhecidas de jacaré do Brasil. Apesar da aparência temível, costuma evitar o contato com humanos.',

    habitat: 'Habita áreas alagadas como pântanos, lagoas, rios de águas lentas e brejos, preferindo regiões com vegetação densa. É encontrado principalmente no sudeste e sul do Brasil, além de partes da Argentina, Uruguai, Paraguai e Bolívia. Gosta de locais com margens lamacentas e abrigos naturais entre plantas aquáticas.',

    alimentacao: 'É carnívoro e oportunista. Alimenta-se de peixes, crustáceos, insetos, moluscos, aves aquáticas e pequenos mamíferos. Também pode consumir carniça. Seu comportamento de caça varia conforme a disponibilidade de presas, sendo um predador paciente, que ataca de forma rápida e precisa quando necessário.',

    comportamento: 'Tem hábitos noturnos e comportamento territorial. É solitário, exceto na época de reprodução. As fêmeas são protetoras e constroem ninhos com vegetação onde depositam seus ovos. Comunicam-se por sons guturais e vibrações na água. Apesar de agressivo quando ameaçado, evita confrontos desnecessários.',

    curiosidades: '• O nome "papo-amarelo" vem da coloração amarelada de sua garganta e ventre.\n'
        '• Os filhotes emitem sons dentro dos ovos para alertar a mãe sobre o nascimento.\n'
        '• A mãe protege os filhotes por semanas após o nascimento.\n'
        '• Pode viver até 50 anos em cativeiro.\n'
        '• É um importante indicador da saúde dos ecossistemas aquáticos.\n'
        '• Possui excelente visão noturna.',

    habitatImage: 'lib/assets/images/habitat-jacare.png',

    perguntas: [
      'Por que o jacaré-de-papo-amarelo tem esse nome?',
      'Onde esse jacaré costuma viver?',
      'Qual é a principal dieta do jacaré-de-papo-amarelo?',
      'Qual é seu comportamento em relação a outros indivíduos?',
      'Quando esse jacaré costuma se alimentar?',
      'Como as fêmeas cuidam dos filhotes?',
      'Qual a utilidade da visão noturna para esse animal?',
      'Como o jacaré-de-papo-amarelo caça suas presas?',
      'Que som os filhotes emitem ainda nos ovos?',
      'Qual é o papel ecológico desse jacaré?',
    ],

    respostas: [
      ['Porque canta alto', 'Por causa do formato do focinho', 'Pela cor amarelada do ventre', 'Por viver em locais ensolarados', 'Porque se alimenta de flores amarelas'],
      ['Apenas no oceano', 'No topo de árvores', 'Em áreas alagadas com vegetação', 'Em cavernas secas', 'Nas dunas de areia'],
      ['Frutas e folhas', 'Peixes, crustáceos e pequenos animais', 'Somente insetos', 'Lodo e algas', 'Grãos e sementes'],
      ['Vive em grandes bandos', 'É agressivo com todos', 'É solitário, exceto na reprodução', 'Segue grupos de aves', 'Vive escondido com outros répteis'],
      ['Durante o dia', 'Somente ao amanhecer', 'À noite, pois é noturno', 'A cada dois dias', 'Durante tempestades'],
      ['Enterram os ovos e vão embora', 'Não cuidam dos filhotes', 'Defendem o ninho e ajudam no nascimento', 'Abandonam após chocar', 'Carregam os ovos nas costas'],
      ['Para reconhecer outros jacarés', 'Para caçar em locais escuros', 'Para atrair presas com brilho', 'Para enxergar cores fortes', 'Para enxergar durante o dia'],
      ['De forma barulhenta', 'Usa suas garras afiadas', 'Ataca com velocidade após esperar imóvel', 'Corre atrás da presa em terra', 'Cava buracos para atrair peixes'],
      ['Assobios altos', 'Estalos secos', 'Sons guturais que alertam a mãe', 'Silvos parecidos com cobras', 'Batidas com o casco'],
      ['É um predador de topo que regula populações', 'Não tem função ecológica', 'É um polinizador eficiente', 'Ajuda no reflorestamento', 'Produz oxigênio para os rios'],
    ],

    respostasCorretas: [
      'Pela cor amarelada do ventre',
      'Em áreas alagadas com vegetação',
      'Peixes, crustáceos e pequenos animais',
      'É solitário, exceto na reprodução',
      'À noite, pois é noturno',
      'Defendem o ninho e ajudam no nascimento',
      'Para caçar em locais escuros',
      'Ataca com velocidade após esperar imóvel',
      'Sons guturais que alertam a mãe',
      'É um predador de topo que regula populações',
    ],
  ),


  AnimalInfo(
    nome: 'Arara Azul',
    imagem: 'lib/assets/images/araraAzul.png',
    descricao: 'A arara-azul (Anodorhynchus hyacinthinus) é a maior espécie de arara do mundo e uma das aves mais emblemáticas da fauna brasileira. Possui plumagem azul vibrante, bico curvo e forte, e uma faixa amarela ao redor dos olhos e na base do bico. Mede cerca de 1 metro de comprimento e pode pesar até 1,5 kg. É símbolo da biodiversidade do Cerrado e do Pantanal e está ameaçada de extinção.',

    habitat: 'Habita principalmente o Pantanal, o Cerrado e partes da Amazônia. Vive em áreas abertas com árvores espaçadas, palmeirais e bordas de florestas. Depende de grandes árvores para nidificar e costuma ocupar cavidades em troncos altos para reprodução. Também é encontrada em áreas de transição entre matas e campos.',

    alimentacao: 'Sua alimentação baseia-se quase exclusivamente em frutos de palmeiras, especialmente o acuri e a bocaiúva. Usa seu bico poderoso para quebrar os duros cocos dessas palmeiras. Também consome sementes e, ocasionalmente, frutas mais moles. Sua dieta especializada a torna dependente de áreas com abundância dessas plantas.',

    comportamento: 'É uma ave sociável e inteligente, vivendo em casais ou pequenos grupos. Tem comportamento monogâmico, permanecendo com o mesmo parceiro por toda a vida. Emite vocalizações altas e estridentes, que servem para comunicação no grupo. São curiosas, brincalhonas e demonstram forte vínculo social.',

    curiosidades: '• Pode viver mais de 50 anos em cativeiro.\n'
        '• Está ameaçada de extinção devido ao tráfico de animais e à destruição de seu habitat.\n'
        '• Possui um dos bicos mais fortes entre as aves, capaz de quebrar cocos duros.\n'
        '• Tem inteligência comparável à de papagaios, sendo capaz de resolver problemas simples.\n'
        '• Reproduz-se apenas uma vez por ano e normalmente choca dois ovos.\n'
        '• Seu voo é poderoso, com grandes batidas de asas.',

    habitatImage: 'lib/assets/images/habitat-araraAzul.png',

    perguntas: [
      'Qual é a principal característica visual da arara-azul?',
      'Onde a arara-azul costuma viver?',
      'Do que se alimenta a arara-azul?',
      'Como é o comportamento social da arara-azul?',
      'Qual a principal ameaça à sobrevivência dessa espécie?',
      'Que tipo de vocalização a arara-azul emite?',
      'Por que a arara-azul é dependente de palmeiras?',
      'Como é o padrão de reprodução dessa ave?',
      'Quanto tempo pode viver uma arara-azul?',
      'Qual é uma característica do voo da arara-azul?',
    ],

    respostas: [
      ['Plumagem rosa com bico longo', 'Corpo pequeno e penas verdes', 'Plumagem azul intensa com detalhes amarelos', 'Penas marrons e olhos vermelhos', 'Bico liso e corpo preto'],
      ['Apenas na floresta amazônica', 'Em áreas urbanas', 'Pantanal, Cerrado e Amazônia', 'Regiões costeiras', 'Desertos sul-americanos'],
      ['Insetos e pequenos répteis', 'Frutos de palmeiras e sementes', 'Somente néctar de flores', 'Carne e peixes', 'Folhas e galhos'],
      ['Vive isolada a maior parte do tempo', 'É agressiva com outras aves', 'É sociável e vive em casais ou grupos', 'Não vocaliza e evita contato', 'Segue bandos de tucanos'],
      ['Predadores naturais', 'Poluição sonora', 'Tráfico de animais e desmatamento', 'Mudança climática em excesso', 'Erupções vulcânicas'],
      ['Silvos suaves', 'Cantos melodiosos', 'Vocalizações altas e estridentes', 'Não emite som', 'Grunhidos parecidos com mamíferos'],
      ['Porque voa baixo', 'Porque só come folhas secas', 'Porque depende dos cocos dessas árvores para se alimentar', 'Porque dorme no topo das palmeiras', 'Porque se reproduz entre raízes'],
      ['Reproduz-se o ano inteiro', 'Choca ovos diariamente', 'Reproduz-se uma vez por ano e choca dois ovos', 'Tem até cinco ninhadas por ano', 'Apenas em cativeiro'],
      ['Até 10 anos', 'Entre 15 e 20 anos', 'Mais de 50 anos em cativeiro', 'Cerca de 5 anos', 'Entre 2 e 4 meses'],
      ['É silencioso e lento', 'É curto e raso', 'É poderoso, com grandes batidas de asas', 'É sempre em linha reta', 'É feito apenas ao amanhecer'],
    ],

    respostasCorretas: [
      'Plumagem azul intensa com detalhes amarelos',
      'Pantanal, Cerrado e Amazônia',
      'Frutos de palmeiras e sementes',
      'É sociável e vive em casais ou grupos',
      'Tráfico de animais e desmatamento',
      'Vocalizações altas e estridentes',
      'Porque depende dos cocos dessas árvores para se alimentar',
      'Reproduz-se uma vez por ano e choca dois ovos',
      'Mais de 50 anos em cativeiro',
      'É poderoso, com grandes batidas de asas',
    ],
  ),


  AnimalInfo(
    nome: 'Papagaio de Peito Roxo',
    imagem: 'lib/assets/images/papagaio.png',
    descricao: 'O papagaio-de-peito-roxo (Amazona vinacea) é uma ave da família Psittacidae, nativa da Mata Atlântica brasileira. Recebe esse nome por possuir penas roxas na região do peito, contrastando com o verde predominante do restante do corpo. Mede cerca de 30 cm de comprimento e possui uma voz forte e estridente. É uma das espécies de papagaio mais ameaçadas do Brasil.',

    habitat: 'Habita florestas úmidas da Mata Atlântica, principalmente em altitudes entre 500 e 1.000 metros. Ocorre nos estados do sul e sudeste do Brasil, como São Paulo, Paraná e Santa Catarina, além do nordeste da Argentina e Paraguai. Necessita de áreas com árvores altas e densas, onde se alimenta, se abriga e nidifica.',

    alimentacao: 'Alimenta-se principalmente de sementes, frutos, flores e brotos. Tem preferência por árvores nativas da Mata Atlântica, como canelas, guapuruvus e figueiras. Também visita plantações de milho e frutas, o que pode causar conflitos com agricultores.',

    comportamento: 'Vive em casais ou pequenos bandos e é altamente vocal, com gritos potentes audíveis a grandes distâncias. É fiel ao parceiro e costuma voltar sempre aos mesmos locais de dormida. Nidifica em cavidades de árvores altas e sua época reprodutiva vai de setembro a janeiro.',

    curiosidades: '• Está criticamente ameaçado de extinção devido à perda de habitat e captura ilegal.\n'
        '• É uma das aves-símbolo da Mata Atlântica.\n'
        '• Apresenta plumagem com coloração vibrante e distinta.\n'
        '• Costuma retornar aos mesmos poleiros por gerações.\n'
        '• É monitorado por programas de conservação e reintrodução na natureza.',

    habitatImage: 'lib/assets/images/habitat-papagaio.png',

    perguntas: [
      'Qual é a principal característica do papagaio-de-peito-roxo?',
      'Em que região do Brasil é encontrado esse papagaio?',
      'Do que se alimenta o papagaio-de-peito-roxo?',
      'Como é o comportamento social dessa ave?',
      'Onde esse papagaio costuma nidificar?',
      'Qual o principal período reprodutivo da espécie?',
      'Por que está ameaçado de extinção?',
      'O que pode causar conflito entre o papagaio e os agricultores?',
      'Qual é o tamanho médio do papagaio-de-peito-roxo?',
      'Que tipo de ambiente ele prefere?',
    ],

    respostas: [
      ['Tem penas vermelhas na cauda', 'É inteiramente verde', 'Possui peito roxo e corpo verde', 'Tem asas azuis e peito branco', 'Apresenta manchas pretas no dorso'],
      ['Amazônia apenas', 'Pantanal', 'Regiões áridas do Nordeste', 'Mata Atlântica do Sul e Sudeste', 'Campos abertos do Cerrado'],
      ['Pequenos insetos', 'Carnes e ovos', 'Sementes, frutos e flores', 'Somente folhas de palmeira', 'Alimento processado'],
      ['É solitário e silencioso', 'Forma grandes bandos migratórios', 'Vive em casais ou pequenos bandos e vocaliza bastante', 'Não interage com outros da espécie', 'Muda de grupo constantemente'],
      ['Em buracos no solo', 'Em ninhos abandonados por outras aves', 'Em cavidades de árvores altas', 'Em montes de folhas no chão', 'Dentro de rochas'],
      ['Abril a junho', 'Fevereiro a abril', 'Setembro a janeiro', 'Novembro a fevereiro', 'Durante todo o ano'],
      ['Falta de predadores naturais', 'Pela mudança de temperatura', 'Perda de habitat e captura ilegal', 'Por ser muito agressivo', 'Porque voa pouco'],
      ['Suas cores assustam os agricultores', 'Comem o gado', 'Invadem plantações e consomem milho e frutas', 'Derrubam árvores', 'Bebem toda a água dos rios'],
      ['Cerca de 10 cm', 'Mais de 1 metro', 'Aproximadamente 30 cm', '50 cm com cauda longa', 'Menos de 20 cm'],
      ['Áreas urbanas com poucos arbustos', 'Locais frios e secos', 'Ambientes de deserto com cactos', 'Florestas úmidas com árvores altas', 'Pastagens e campos agrícolas'],
    ],

    respostasCorretas: [
      'Possui peito roxo e corpo verde',
      'Mata Atlântica do Sul e Sudeste',
      'Sementes, frutos e flores',
      'Vive em casais ou pequenos bandos e vocaliza bastante',
      'Em cavidades de árvores altas',
      'Setembro a janeiro',
      'Perda de habitat e captura ilegal',
      'Invadem plantações e consomem milho e frutas',
      'Aproximadamente 30 cm',
      'Florestas úmidas com árvores altas',
    ],
  ),


  AnimalInfo(
    nome: 'Avestruz',
    imagem: 'lib/assets/images/avestruz.png',
    descricao: 'O avestruz (Struthio camelus) é a maior e mais pesada ave do mundo, não sendo capaz de voar. Nativo da África, o avestruz é conhecido por suas longas pernas e pescoço, além de sua plumagem preta e branca, característica dos machos. Pode atingir até 2,7 metros de altura e pesar até 160 kg. Apesar de não voar, é uma excelente corredora, alcançando velocidades de até 70 km/h.',

    habitat: 'O avestruz é encontrado principalmente nas regiões áridas e semiáridas da África, como savanas e desertos. Prefere áreas abertas com pouca vegetação, onde pode correr livremente. Também está presente em algumas regiões da Arábia Saudita e na Austrália, onde foi introduzido. Vive em grandes áreas abertas com pouca sombra, adaptando-se bem ao calor extremo.',

    alimentacao: 'É herbívoro, comendo principalmente folhas, sementes, frutos e flores. Sua alimentação é composta por plantas rasteiras e arbustos, além de grãos e vegetação encontrada em sua vasta área de habitat. O avestruz é capaz de consumir grandes quantidades de vegetação para sustentar seu grande porte.',

    comportamento: 'Apesar de sua grande aparência, o avestruz é uma ave muito rápida e ágil, especialmente quando corre. Ele vive em grupos e pode ser bastante territorial. Quando ameaçado, o avestruz pode optar por fugir a grandes velocidades, mas também pode atacar com suas poderosas pernas. Suas pernas são tão fortes que podem até matar um predador com um único chute.',

    curiosidades: '• O avestruz é a maior ave do mundo.\n'
        '• Pode correr a até 70 km/h, o que o torna o animal terrestre mais rápido.\n'
        '• Sua visão é excelente e ele pode detectar movimentos a grandes distâncias.\n'
        '• O avestruz pode viver até 40 anos na natureza.\n'
        '• Sua alimentação inclui pedras que ajudam na digestão, pois ele não tem dentes.\n'
        '• O avestruz tem uma capacidade limitada de voar, mas suas asas são utilizadas em exibições e para equilibrar-se enquanto corre.',

    habitatImage: 'lib/assets/images/habitat-avestruz.png',

    perguntas: [
      'Qual é a principal característica física do avestruz?',
      'Onde o avestruz é encontrado naturalmente?',
      'Do que o avestruz se alimenta?',
      'Como o avestruz se comporta quando ameaçado?',
      'Qual a velocidade máxima que o avestruz pode atingir?',
      'Quanto tempo o avestruz pode viver na natureza?',
      'Qual é a utilidade das suas asas?',
      'O avestruz tem capacidade de voar?',
      'Qual é a alimentação complementar do avestruz?',
      'Qual é a principal vantagem do avestruz ao correr em alta velocidade?',
    ],

    respostas: [
      ['Tem asas grandes e fortes', 'É a maior ave do mundo, com longas pernas e pescoço', 'Possui penas vermelhas e um bico longo', 'Tem asas pequenas e pés fortes', 'É uma ave de tamanho médio com penas coloridas'],
      ['Regiões áridas da África e partes da Arábia Saudita', 'Regiões tropicais da América do Sul', 'Mata Atlântica do Brasil', 'Desertos da Ásia Central', 'Apenas no Japão e na China'],
      ['Sementes, folhas e frutas', 'Peixes e pequenos mamíferos', 'Carnes de pequenos animais', 'Insetos e grãos', 'Fungos e raízes subterrâneas'],
      ['Foge correndo em alta velocidade', 'Se esconde no buraco mais próximo', 'Ataque direto com o bico', 'Fica imóvel esperando o predador se afastar', 'Canta para chamar outros da espécie'],
      ['Até 40 km/h', '70 km/h', '50 km/h', '90 km/h', '30 km/h'],
      ['Cerca de 10 anos', 'Até 40 anos', 'Até 25 anos', '30 anos', '50 anos'],
      ['Equilibrar-se ao correr e em exibições', 'Usar como proteção contra predadores', 'Voo curto para caçar', 'Para construir ninhos', 'Para aquecer o corpo'],
      ['Sim, é capaz de voar grandes distâncias', 'Não, é incapaz de voar', 'Sim, mas só em altitudes baixas', 'Sim, voa de maneira lenta', 'Não, mas faz saltos longos'],
      ['Pedras e cascalhos para auxiliar na digestão', 'Restos de alimentos não digeridos', 'Insetos para aumentar a proteína na dieta', 'Ramos e galhos para escovar o bico', 'Folhas de árvores secas para proteger os ovos'],
      ['Ele pode escapar de predadores mais rápidos', 'Ele pode manter uma grande distância do predador', 'Ele pode atacar predadores com seus chutes poderosos', 'Ele pode atingir altas alturas ao correr', 'Ele pode correr sem cansar por horas'],
    ],

    respostasCorretas: [
      'É a maior ave do mundo, com longas pernas e pescoço',
      'Regiões áridas da África e partes da Arábia Saudita',
      'Sementes, folhas e frutas',
      'Foge correndo em alta velocidade',
      '70 km/h',
      'Até 40 anos',
      'Equilibrar-se ao correr e em exibições',
      'Não, é incapaz de voar',
      'Pedras e cascalhos para auxiliar na digestão',
      'Ele pode atacar predadores com seus chutes poderosos',
    ],
  ),
];
