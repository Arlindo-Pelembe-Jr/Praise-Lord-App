

enum Categ{all,osQuatro,quatroLeis,conhDeus,}
class Catg{
  Catg({this.categ,this.catg,this.img});
  final Categ categ;
 String catg,img;
 
}
 class CatgRepository{
   List<Catg> loadCatg(Categ categ){
     var allCatg = <Catg> [ 
       Catg( 
         categ: Categ.osQuatro,
         catg: 'Os Quatro',
         img: 'assets/The Four.png',
       ),
       Catg( 
         categ: Categ.quatroLeis,
         catg: '4 Leis Espirituais',
         img: 'assets/4Leis1.jpg',
       ),
       Catg( 
         categ: Categ.conhDeus,
         catg: 'Conhecendo a Deus pessoalmente',
         img: 'assets/conhecendoDeus.jpg',
       ),
     ];
      if(categ == Categ.all){
        return allCatg;
      }else {
        return allCatg.where((Catg c) { 
          return c.categ == categ;
        }).toList();
      }
   }
 }

class Evangelho{
  
  Evangelho({this.categ,this.catg,this.titulo,this.img,this.subtitulo,this.desv,}) ;
  final Categ categ;String catg,titulo,img,subtitulo,desv;
}

class EvangelhoRepository{
  static List<Evangelho> loadEvang(Categ categ){
    var allEvag = <Evangelho>[
      Evangelho( 
        categ: Categ.osQuatro,
        catg: 'Os Quantro',
        titulo: 'Amor de Deus',
        img: 'assets/DeusMeAma.png',
        subtitulo: 'Deus me Ama',
        desv: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem. *Deus nos ama apesar de nossos pecados* 8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.(Romanos, 5) *Deus nos ama a ponto de enviar Jesus Cristo para morrer por nós* 10. Assim, nisto consiste o amor: não em que nós tenhamos amado a Deus, mas em que Ele nos amou e enviou o seu Filho como propiciação pelos nossos pecados. (1 João, 4) ''',
      ),
      Evangelho( 
        categ: Categ.osQuatro,
        catg: 'Os Quantro',
        titulo: 'Pecado do Homem',
        img: 'assets/SeparadoDeDeus.png',
        subtitulo: 'Eu vivo Separado de Deus',
        desv: '''Pecado - fazer aquilo que é contra a vontade e princípios de Deus, ainda que seja bom, mas se Deus proíbe é pecado fazer.Exemplos: matar, trair, mentir, práticas sexuais fora do casamento (adultério, fornicação), burlar, bebedeiras, inveja, orgulho, etc. "As obras da natureza pecadora são bem conhecidas. Elas são: imoralidade sexual, impureza, sensualidade, idolatria, bruxarias, ódio, brigas, ciúmes, iras, egoísmo, rixas, divisões, inveja, embriaguez, orgias e coisas iguais a estas. Eu já os avisei a respeito dessas coisas, e os aviso novamente: aquelas pessoas que praticam essas coisas não vão herdar o reino de Deus." (Gálatas 5.19-21) 
*todos somos pecadores* 10. Como está escrito: “Não há nenhum justo, nem ao menos um; 23. Porque todos pecaram e destituídos estão da glória de Deus,(Romanos, 3)
*todos merecemos a condenação eterna* Para mim, cada pessoa é igual. Trato o pai e o filho da mesma forma, porque para mim são iguais. A pessoa que pecar é quem receberá o castigo.(Ezequiel 18.4)
Porque o salário que o pecado paga é a morte, mas o presente gratuito dado por Deus é a vida eterna em Cristo Jesus, nosso Senhor.(Romanos 6.23)''',
      ),
      Evangelho(
        categ: Categ.osQuatro,
        catg: 'Os Quantro',
        titulo: 'JESUS CRISTO É O ÚNICO CAMINHO DA SALVAÇÃO',
        img: 'assets/aCruz.png',
        subtitulo: 'Jesus Entregou tudo por mim',
        desv: '''6. Assegurou-lhes Jesus: “Eu Sou o Caminho, a Verdade e a Vida. Ninguém vem ao Pai senão por mim.(João, 14)
*Jesus morreu pelos nossos pecados* 24. Ele levou pessoalmente todos os nossos pecados em seu próprio corpo sobre o madeiro, a fim de que morrêssemos para os pecados e, então, pudéssemos viver para a justiça; por intermédio das suas feridas fostes curados. (1 Pedro, 2)
*Em nome de Jesus nossos pecados são perdoados* 38. Sendo assim, meus irmãos, ficai cientes de que mediante Jesus vos é anunciado o perdão dos pecados. (Atos, 13)''',
      ),
      Evangelho( 
        categ: Categ.osQuatro,
        catg: 'Os Quantro',
        titulo: 'O QUE FAZER PARA SER SALVO?',
        img: 'assets/seguirJesus.png',
        subtitulo: 'Eu serei um seguidor de Jesus?',
        desv: '''*A salvação resulta da fé (confiança) em Cristo* 30. Em seguida, conduzindo-os para fora, rogou-lhes: “Senhores, o que preciso fazer para ser salvo?” 31. Eles, prontamente lhe afirmaram: “Crê no Senhor Jesus, e assim serás salvo, tu e os de tua casa!”(Atos, 16)
*Recebemos a salvação pela graça (favor imerecido) e não por obras*
8. Porquanto, pela graça sois salvos, por meio da fé, e isto não vem de vós, é dom de Deus; 9. não vem por intermédio das obras, a fim de que ninguém venha a se orgulhar por esse motivo. (Efésios, 2)
*Precisamos receber a Cristo em nossas vidas* 20. Eis que estou à porta e bato: se alguém ouvir a minha voz e abrir a porta, entrarei em sua casa e cearei com ele, e ele comigo. (Apocalipse, 3)
*Recebemos a Cristo através da oração* 9. Se, com tua boca, confessares que Jesus é Senhor, e creres em teu coração que Deus o ressuscitou dentre os mortos, serás salvo! 10. Porque com o coração se crê para a justiça, e com a boca se faz confissão para a salvação. (Romanos, 10)''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'As Quatro Leis Espirituais',
        img: 'assets/4Leis.jpg',
        subtitulo: 'Você já ouviu falar das quatro leis espirituais?',
        desv: '''Assim como existem leis físicas que governam o universo físico, também existem leis espirituais que governam seu relacionamento com Deus.''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: '1 DEUS AMA VOCÊ E OFERECE UM PLANO MARAVILHOSO PARA SUA VIDA.',
        img: 'assets/1Lei.png',
        subtitulo: 'Amor de Deus',
        desv: '''“Porque Deus amou o mundo de tal maneira que deu o Seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna”. João 3:16
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/1Lei.png',
        subtitulo: 'Plano de Deus',
        desv: '''[Cristo falando] “Eu vim para que tenham vida e a tenham em abundância” [para que seja plena e significativa].João 10:10
Por que a maioria das pessoas não está experimentando a vida abundante? Porque...''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: '2 O HOMEM É PECADOR E SEPARADO DE DEUS. PORTANTO, ELE NÃO PODE CONHECER E EXPERIMENTAR O AMOR DE DEUS E O PLANO PARA SUA VIDA.',
        img: 'assets/2Lei.png',
        subtitulo: 'O homem é Pecador',
        desv: '''“Todos pecaram e carecem da glória de Deus” (Romanos 3:23).
O homem foi criado para ter comunhão com Deus; mas, por causa de sua teimosia obstinada, ele escolheu seguir seu próprio caminho independente e a comunhão com Deus foi quebrada. Essa obstinação, caracterizada por uma atitude de rebelião ativa ou indiferença passiva, é uma evidência do que a Bíblia chama de pecado.
“O salário do pecado é a morte” [separação espiritual de Deus] (Romanos 6:23).''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'O homem esta Separado',
        img: 'assets/manSeparated.png',
        subtitulo: ' ',
        desv: '''▲ - Santo Deus | Homem pecador
Este diagrama ilustra que Deus é santo e o homem é pecador. Um grande abismo separa os dois. As flechas ilustram que o homem está continuamente tentando alcançar Deus e a vida abundante por meio de seus próprios esforços, como uma boa vida, filosofia ou religião, mas ele inevitavelmente falha.
O terceiro princípio explica a única maneira de transpor esse abismo ...''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: '3 JESUS CRISTO É A ÚNICA PROVISÃO DE DEUS PARA O NOSSO PECADO. ATRAVÉS DELE SÓ PODEMOS CONHECER A DEUS PESSOALMENTE E EXPERIMENTAR O AMOR E O PLANO DE DEUS.',
        img: 'assets/sangueJesus.png',
        subtitulo: 'Ele morreu em nosso lugar',
        desv: '''"Deus demonstra Seu próprio amor para conosco, enquanto éramos ainda pecadores, Cristo morreu por nós." Rm 5: 8''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/theOnlyWay.png',
        subtitulo: 'Ele é o único caminho para Deus',
        desv: '''“Jesus disse-lhe: 'Eu sou o caminho, a verdade e a vida; ninguém vem ao Pai senão por mim'” (João 14: 6).
▲ - Deus | † - Jesus |
Este diagrama ilustra que Deus superou o abismo que nos separa dEle, enviando Seu Filho, Jesus Cristo, para morrer na cruz em nosso lugar para pagar a penalidade por nossos pecados.
Não é suficiente apenas
conheça essas três leis ...''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: '4 DEVEMOS RECEBER INDIVIDUALMENTE A JESUS CRISTO COMO SALVADOR E SENHOR; ENTÃO PODEMOS CONHECER E EXPERIMENTAR O AMOR DE DEUS E PLANEJAR NOSSAS VIDAS.',
        img: 'assets/4Lei.png',
        subtitulo: 'Devemos receber a Cristo',
        desv: '''“A todos quantos O receberam, a eles deu o direito de se tornarem filhos de Deus, mesmo aos que crêem em Seu nome”. João 1:12''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: 'Recebemos Jesus pela fé',
        desv: '''"Fostes salvos pela graça, por meio da fé; e isso não vem de vós, é dom de Deus; não como resultado de obras para que ninguém se glorie." Efésios 2: 8-9''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: 'Quando recebemos a Cristo ....',
        desv: '''Experimentamos um novo nascimento.
Leia João 3: 1-8
“Ora, havia um homem dos fariseus, chamado Nicodemos, governante dos judeus; este homem veio a Jesus de noite e disse-lhe:“ Rabi, sabemos que vieste de Deus como mestre; porque ninguém pode faz estes sinais que tu fazes, a menos que Deus esteja com ele. ” Jesus respondeu e disse-lhe: “Em verdade, em verdade te digo que, se alguém não nascer de novo, não pode ver o reino de Deus”.
Nicodemos disse-lhe: “Como pode um homem nascer, sendo velho? Ele não pode entrar uma segunda vez no ventre de sua mãe e nascer, pode? " Jesus respondeu: “Em verdade, em verdade vos digo que, se alguém não nascer da água e do Espírito, não pode entrar no reino de Deus. O que é nascido da carne é carne, e o que é nascido do Espírito é espírito. Não se espante por eu ter dito a você: ‘Você deve nascer de novo.’ O vento sopra onde deseja e você ouve o som dele, mas não sabe de onde vem e para onde está indo; assim é todo aquele que é nascido do Espírito. ” ''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: 'Recebemos a Cristo através de um convite pessoal',
        desv: '''[Cristo falando] "Eis que estou à porta e bato; se alguém ouvir a Minha voz e abrir a porta, entrarei em sua casa." Apocalipse 3:20''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: 'Receber a Cristo envolve ...',
        desv: '''[... voltando-se de si para Deus (arrependimento) e confiando em que Cristo entrará em nossas vidas para perdoar nossos pecados e nos tornar o que Ele deseja que sejamos.
Apenas concordar intelectualmente que Jesus Cristo é o Filho de Deus e que Ele morreu na cruz pelos nossos pecados não é suficiente. Nem é suficiente ter uma experiência emocional. Recebemos Jesus Cristo pela fé, como um ato da vontade.
''',
      ),
       Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'ESTES DOIS CÍRCULOS REPRESENTAM DOIS TIPOS DE VIDAS.',
        img: 'assets/autoDirigida.png',
        subtitulo: 'Vida Autodirigida',
        desv: '''O eu está no trono.
† - Cristo está fora da vida.
o - Os interesses são dirigidos por você mesmo, muitas vezes resultando em discórdia e frustração.
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/CristoDirigindo.png',
        subtitulo: '''Vida dirigida por Cristo''',
        desv: '''† - Cristo está na vida e no trono.
O eu está se rendendo a Cristo.
o - Os interesses são dirigidos por Cristo, resultando em harmonia com o plano de Deus.
Qual círculo representa melhor sua vida?
Qual círculo você gostaria que representasse sua vida?
O seguinte explica como você pode receber a Cristo ...
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Você pode receber a Cristo agora mesmo pela fé através da oração',
        img: 'assets/invertido4Lei.png',
        subtitulo: '''Oração é falar com Deus
Deus conhece o seu coração e não está tão preocupado com as suas palavras quanto com a atitude do seu coração.
''',
        desv: '''A seguir está uma sugestão de oração:
Senhor Jesus,
Eu preciso de você. Obrigado por morrer na cruz pelos meus pecados. Abro a porta da minha vida e Te recebo como meu Salvador e Senhor.
Obrigado por perdoar meus pecados e me dar a vida eterna. Assuma o controle do trono da minha vida. Faça de mim o tipo de pessoa que você quer que eu seja.
Esta oração expressa o desejo do seu coração? Se isso acontecer, eu convido você a fazer esta oração agora.''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Como saber que Cristo esta na tua vida',
        img: 'assets/invertido1Lei.png',
        subtitulo: '''Você recebeu Cristo em sua vida?''',
        desv: '''De acordo com Sua promessa em Apocalipse 3:20, onde está Cristo agora em relação a você?
Cristo disse que entraria em sua vida. Ele o enganaria?
Com que autoridade você sabe que Deus respondeu à sua oração? (A confiabilidade do próprio Deus e de Sua Palavra.)
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: '''A Bíblia promete a vida eterna...''',
        desv: '''... a todos os que recebem a Cristo.
"Deus nos deu a vida eterna, e esta vida está em Seu Filho. Quem tem o Filho tem a vida; quem não tem o Filho de Deus não tem a vida. Estas coisas eu escrevi para vocês que acreditam em o nome do Filho de Deus, para que saibais que tens a vida eterna ”(1 João 5: 11-13).
Muitas vezes, agradeça a Deus porque Cristo está em sua vida e nunca irá deixá-lo (Hebreus 13: 5). Você pode saber com base em Sua promessa de que Cristo vive em você e que você tem vida eterna desde o momento em que O convida a entrar. Ele não o enganará.
Um lembrete importante ...
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: '''Não dependa de sentimentos''',
        desv: '''A promessa da Palavra de Deus, a Bíblia - não nossos sentimentos - é nossa autoridade. O cristão vive pela fé (confiança) na confiabilidade do próprio Deus e de sua Palavra. Este diagrama de trem ilustra a relação entre fato (Deus e Sua Palavra), fé (nossa confiança em Deus e Sua Palavra) e sentimento (o resultado de nossa fé e obediência). (Leia João 14:21)''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: ' ',
        img: 'assets/comboio.png',
        subtitulo: '''[Fato]      -   [Fé]  -  [Sentimento]''',
        desv: '''O trem funcionará com ou sem o vagão. No entanto, seria inútil tentar puxar o trem pelo vagão. Da mesma forma, como cristãos não dependemos de sentimentos ou emoções, mas colocamos nossa fé (confiança) na confiabilidade de Deus e nas promessas de Sua Palavra.''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Agora que você recebeu a Cristo',
        img: 'assets/invertido1Lei.png',
        subtitulo: '''No momento em que você recebeu Cristo pela fé, como um ato da vontade, muitas coisas aconteceram, incluindo o seguinte:''',
        desv: '''Cristo entrou em sua vida Apocalipse 3:20 Colossenses 1:27
Seus pecados foram perdoados
Colossenses 1:14
Voce se tornou um filho de Deus

João 1:12
Voce recebeu vida eterna

João 5:24
Você começou uma grande aventura ...
... para o qual Deus criou você

João 10:10;
2 Coríntios 5:17;
1 Tessalonicenses 5:18

Você pode pensar em ...
... algo mais maravilhoso que poderia acontecer com você do que receber a Cristo? Você gostaria de agradecer a Deus em oração agora pelo que Ele fez por você? Agradecendo a Deus, você demonstra sua fé.
Para aproveitar sua nova vida
ao máximo....
''',
      ),
         Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Agora que você recebeu a Cristo',
        img: 'assets/verde.png',
        subtitulo: '''No momento em que você recebeu Cristo pela fé, como um ato da vontade, muitas coisas aconteceram, incluindo o seguinte:''',
        desv: '''Cristo entrou em sua vida
Apocalipse 3:20 Colossenses 1:27

Seus pecados foram perdoados
Colossenses 1:14

Voce se tornou um filho de deus
João 1:12

Voce recebeu vida eterna
João 5:24

Você começou uma grande aventura ...
... para o qual Deus criou você

João 10:10;
2 Coríntios 5:17;
1 Tessalonicenses 5:18

Você pode pensar em ...
... algo mais maravilhoso que poderia acontecer com você do que receber a Cristo? Você gostaria de agradecer a Deus em oração agora pelo que Ele fez por você? Agradecendo a Deus, você demonstra sua fé.
Para aproveitar sua nova vida
ao máximo....
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Sugestões para o crescimento cristão',
        img: 'assets/verde.png',
        subtitulo: '''O crescimento espiritual resulta da confiança em Jesus Cristo. “... O justo viverá da fé” (Gálatas 3:11).

Uma vida de fé permitirá que você confie cada vez mais em Deus em cada detalhe de sua vida e pratique o seguinte:
''',
        desv: '''Vai
Vá a Deus em oração diariamente.
João 15: 7
Ler
Leia a Palavra de Deus diariamente.
Atos 17:11
Comece com o Evangelho de João.
Obedecer
Obedeça a Deus a cada momento.
João 14:21
Testemunha
Testemunhe por Cristo por sua vida e palavras.
Ver Mateus 4:19 e João 15: 8
Confiar em
Confie em Deus para cada detalhe de sua vida.
1 Pedro 5: 7
Espírito Santo
Permita que Ele controle e capacite sua vida diária e testemunho.
Veja Gálatas 5: 16-17 e Atos 1: 8
''',
      ),
      Evangelho( 
        categ: Categ.quatroLeis,
        catg: '4 Leis Espirituais',
        titulo: 'Comunhão em uma boa igreja',
        img: 'assets/verde.png',
        subtitulo: ''' ''',
        desv: '''A Palavra de Deus nos instrui a não abandonar "a nossa assembleia" (Hebreus 10:25). Várias toras ardem juntas, mas deixe uma de lado na lareira fria e o fogo se apaga. O mesmo ocorre com seu relacionamento com outros cristãos.
Se você não pertence a uma igreja, não espere ser convidado. Tomar a iniciativa; chame o pastor de uma igreja próxima onde Cristo é honrado e Sua Palavra é pregada. Comece esta semana e faça planos para comparecer regularmente.
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: 'Conhecer Deus Pessoalmente',
        img: 'assets/conhecendoDeus.jpg',
        subtitulo: '''Estes quatro pontos explicam como iniciar um relacionamento com Deus e experimentar a vida para a qual foste criado.''',
        desv: ''' ''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: '1 Deus ama-te e criou-te para que o Conheças pessoalmente.',
        img: 'assets/emDireccao.jpg',
        subtitulo: ''' ''',
        desv: '''Deus ama-te 
O amor de Deus para connosco manifestou-se no fato de Deus ter enviado seu Filho unigénito ao mundo para que vivamos por meio dele.
1 João 4:9 

Deus quer que tu o conheças
E a vida eterna é esta: que conheçam a ti, o único Deus verdadeiro, e a Jesus Cristo, que enviaste.
João 17:3 

Porque é que achas que a maioria das pessoas não conhece Deus pessoalmente?
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: '2 Estamos separados de deus por causa do nosso pecado, e não podemos conhecer ou experimentar o seu amor.',
        img: 'assets/emDireccao.jpg',
        subtitulo: '''O que é pecado?''',
        desv: '''Fomos criados para ter um relacionamento com Deus, mas rejeitámo-lo e esse relacionamento foi quebrado.
A rejeição a Deus e a construção de uma vida baseada em qualquer outra coisa é o que a Bíblia chama de pecado. E nós comprovamos isso por meio de ações e atitudes egoístas, e por desobedecer a Deus ou mostrar indiferença em relação a ele.
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/pecadores.jpg',
        subtitulo: '''Todos são pecadores''',
        desv: '''Porque todos pecaram e destituídos estão da glória de Deus.
Romanos 3:23 
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/manSeparated.png',
        subtitulo: '''O pecado trás consequências''',
        desv: '''Pois o salário do pecado é a morte, mas o dom gratuito de Deus é a vida eterna em Cristo Jesus, nosso Senhor. - Romanos 6:23.

Deus é perfeito e justo, e nos responsabilizará pelos nossos pecados. Há uma punição para a rejeição a Deus.

▲ - Deus Santo | Homem pecador
Deus é perfeito e nós somos pecadores. Existe um grande vazio entre nós por causa do nosso pecado.
Podemos tentar preencher este vazio através de boas obras ou seguindo uma religião. Contudo, todos os nossos esforços falham porque não podem solucionar o problema do pecado que nos afasta de Deus.

O terceiro ponto mostra-nos a única solução para este problema...
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: '3 Jesus é a única solução de Deus para o nosso pecado. Só por meio Dele podemos conhecer Deus e receber o seu amor e perdão.',
        img: 'assets/branco.png',
        subtitulo: '''Jesus é Deus''',
        desv: '''Ele [Cristo) é a imagem do Deus invisível, o primogénito sobre toda a criação.
Colossenses 1:15 
''',
      ),
       Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/morreu.jpg',
        subtitulo: '''Jesus morreu no nosso lugar''',
        desv: '''Porque também Cristo morreu uma única vez pelos pecados, o justo pelos injustos, para levar-nos a Deus.
1 Pedro 3:18
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/ressucitou.jpg',
        subtitulo: '''Jesus voltou a viver''',
        desv: '''Depois de ter sofrido, apresentou-se vivo também a eles [apóstolos], com muitas provas incontestáveis, aparecendo-lhes por quarenta dias... - Atos 1:3a
A ressurreição de Jesus provou que ele era Deus e que sofreu o castigo que nós merecíamos.
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/caminho.jpg',
        subtitulo: '''Jesus é o único caminho''',
        desv: '''Jesus lhe respondeu: "Eu sou o caminho, a verdade e a vida; ninguém chega ao Pai, a não ser por mim."
João 14:6
''',
      ),
       Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/theOnlyWay.png',
        subtitulo: '''Deus prova o amor dEle''',
        desv: '''Porque Deus amou tanto o mundo, que deu o seu Filho unigénito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna. - João 3:16''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/theOnlyWay.png',
        subtitulo: '''Deus prova o amor dEle''',
        desv: '''▲ - Deus | † - Jesus | Homem
Embora nós mereçamos ser separados de Deus para sempre, ele enviou Jesus para pagar o preço pelos nossos pecados e morrer na cruz, por causa do amor que ele tem por nós.
Por intermédio de Jesus, Deus acabou com o abismo que nos separa dele, e criou um caminho para sermos perdoados e para termos o nosso relacionamento com ele restaurado.

Não é suficiente conhecer apenas
estes tópicos...
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: '4 Devemos receber Jesus, confiando que Ele é o nosso Senhor e Salvador. Só assim poderemos conhecer Deus.',
        img: 'assets/branco.png',
        subtitulo: '''Receber-Lo inclui....''',
        desv: '''- Concordar
com Deus sobre o facto de sermos pecadores e decidir afastar-nos dos nossos pecados.

- Confiar em Deus
para que ele nos perdoe completamente, uma vez que Jesus morreu pelos nossos pecados.

- Escolher
seguir Jesus; permitindo que Ele esteja em primeiro lugar nas nossas vidas.
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: '''Relacionamento é pessoal''',
        desv: '''"Mas a todos que o receberam, aos que creem no seu nome, deu-lhes a prerrogativa de se tornarem filhos de Deus;"
João 1:12 
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/branco.png',
        subtitulo: '''O relacionamento é um presente''',
        desv: '''Porque pela graça sois salvos, por meio da fé, e isto não vem de vós, é dom de Deus; não vem das obras, para que ninguém se orgulhe.

Ele nos salvou, não por causa de atos de justiça por nós praticados, mas devido à sua misericórdia, ele nos salvou pelo lavar regenerador e renovador do Espírito Santo. -Tito 3:5
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: 'Temos que tomar uma decisão:',
        img: 'assets/autoDirigida.png',
        subtitulo: '''1 Pessoas controladas pelo "Eu"
Pessoas assim nunca receberam Jesus na vida delas. Elas continuam culpadas e separadas de Deus por causa do pecado.
''',
        desv: ''' ''',
      ),
       Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/CristoDirigindo.png',
        subtitulo: '''2 Pessoa controlada por Cristo
Pessoas assim receberam Jesus nas suas vidas. Elas foram perdoadas e experimentam o amor de Deus.
''',
        desv: '''Qual é o círculo que melhor te descreve?
Qual deles gostavas que te descrevesse?

Não é suficiente apenas saber 
ou sentir que isto é verdade.
Temos que tomar uma decisão...
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: 'Para começar um relacionamento com Deus, tens de colocar a tua confiança em Jesus apenas.',
        img: 'assets/oracao.jpg',
        subtitulo: '''Deus está mais preocupado com as tuas atitude (que refletem o teu coracão) do que com as tuas palavras.

Por meio da oracão podes expressar como te sentes em relacão a Deus.

Orar é conversar com Deus.
''',
        desv: '''Senhor Jesus,
Quero-te conhecer pessoalmente.
Peço-te perdão por fazer as coisas à minha maneira. Por favor, perdoa todos os meus pecados.
Agradeço-te porque morreste na cruz para pagar pelos meus pecados.
Aceito afastar-me do meu antigo modo de viver para te seguir, reconhecendo que és meu Senhor e salvador.

Conseguirias dizer isso a Deus de forma sincera?
Há alguma coisa que te impede de fazer esta oração, neste momento?
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: 'O que acontece quando colocas a tua confiança em Jesus?',
        img: 'assets/branco.png',
        subtitulo: '''Se convidaste Jesus para ser Senhor e Salvador da tua vida muitas coisas aconteceram, incluindo:''',
        desv: '''Jesus entrou na tua vida
Jesus entrou na tua vida, por meio do Espírito Santo, e ele nunca te vai abandonar.
(Hebreus 13:5)

Os teus pecados foram perdoados

Todos os teus pecados foram perdoados.
Colossenses 1:13-14

Agora és um filho de Deus

Tornaste-te filho de Deus. Ele é o teu pai celestial.
Gálatas 3:26

Foste fortalecido e capacitado

Deus deu-te poder para viver uma vida transformada.
(2 Coríntios 5:17; Efésios 3:14-21)

Agora és amigo de Deus

Começaste uma amizade com Deus que durará para sempre.
João 17:3


Mas como é que sabemos que isso
realmente aconteceu?
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: 'Como podes ter a certeza de que tudo isto realmente aconteceu?',
        img: 'assets/branco.png',
        subtitulo: ''' ''',
        desv: '''Jesus está na tua vida...
... porque Deus prometeu, e nele podemos confiar.

Agradece a Deus frequentemente porque Jesus está na tua vida, e porque ele nunca te abandonará.
Romanos 8:38-39

Tu tens o Espírito de Cristo

Tu podes saber que o Espírito de Cristo vive em ti e que tens a vida eterna a partir do momento em que convidaste Jesus a entrar na tua vida, porque esta é a promessa dele.

E este é o testemunho: Deus nos deu a vida eterna, e essa vida está em seu Filho. Quem tem o Filho, tem a vida; quem não tem o Filho de Deus, não tem a vida. Eu vos escrevo essas coisas, a vós que credes no nome do Filho de Deus, para que saibais que tendes a vida eterna.
- 1 João 5:11-13

Descansa em Deus
Apesar de os sentimentos serem importantes, eles não determinam o que é de facto verdade. Quem segue Jesus segue confiando na segurança que há em Deus e na Palavra dele.

Confia em factos, não em sentimentos

Para sermos transportados por um avião, devemos confiar na sua construção. Os nossos sentimentos não influenciam no facto de que é o avião que nos segura.

Do mesmo modo, podemos descansar em Deus, confiar nas promessas dele, e não depender das nossas emoções.


E o que vem de seguida?
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/conheceDeus.jpg',
        subtitulo: '''Conhece Deus''',
        desv: '''Conhece Deus por meio de uma leitura bíblica diária. (2 Timóteo 3:14-17)
Começa com o evangelho de João ou Marcos.
''',
      ),
         Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/responde.jpg',
        subtitulo: '''Responde''',
        desv: '''Responde a Deus em oração.
(Filipenses 4:6)
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/obedece.jpg',
        subtitulo: '''Obedece''',
        desv: '''Obedece a Deus a cada momento.
(Lucas 6:46-49)
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/obedece.jpg',
        subtitulo: '''Anda''',
        desv: '''Anda no poder do Espírito Santo.
(Efésios 3:14-21, 5:18)
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/faleComOutros.jpg',
        subtitulo: '''Fala com outros''',
        desv: '''Fala sobre Jesus a outras pessoas por meio da tua vida e das tuas palavras.
(Mateus 28:18-20;
2 Coríntios 5:17-20;
Efésios 4:1)
''',
      ),
      Evangelho( 
        categ: Categ.conhDeus,
        catg: 'Conhecer Deus Pessoalmente',
        titulo: ' ',
        img: 'assets/viveComunhao.jpg',
        subtitulo: '''Vive em comunhão''',
        desv: '''Tem comunhão com outros cristãos.
(Hebreus 10:25; Atos 2:42-47)
''',
      ),
    ];
    if(categ == Categ.all){
    return allEvag;
      }else {
        return allEvag.where((Evangelho c) { 
          return c.categ == categ;
        }).toList();
      }
  }
}