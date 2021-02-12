

enum Categoria{
  all,fe,confianca,pecado,amor,coracao,oracao,verdade,conversao,
  salvacao,libertacao,eterna
}
class CapaJesus{
 CapaJesus({this.categoria,this.titulo,this.subTitulo,this.img});
 final Categoria categoria; 
 String titulo,subTitulo,img;
}

class CapaJesusRepo{
  List<CapaJesus> loadCapaJesus(Categoria categoria){
    var allCapaJeus = <CapaJesus>[ 
      CapaJesus(
        categoria: Categoria.amor,
        titulo: 'O Amor De Deus',
        subTitulo: 'Dê graças ao Senhor, porque Ele é bom.\n O Seu amor dura para sempre',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.confianca,
        titulo: 'Confiança em Deus',
        subTitulo: 'Feliz é aquele que confia a sua vida no Senhor, refúgio de todo que O busca.',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.conversao,
        titulo: 'Arrependimento e Conversão',
        subTitulo: 'Arrependa-te e converta-te, para que sejam apagados os teus pecados.',
        img: 'assets/cruz.png'
      ),  
      CapaJesus(
        categoria: Categoria.coracao,
        titulo: 'O Coração do Homem',
        subTitulo: 'Esta é a única maneira de falar com Deus, Use-a com diligência.',
        img: 'assets/cruz.png'
      ),  
      CapaJesus(
        categoria: Categoria.eterna,
        titulo: 'Vida Eterna',
        subTitulo: 'Jesus é o caminho, a Verdade e a Vida.\n Ninguém chega ao Pai senão através dEle.',
        img: 'assets/cruz.png'
      ),  
      CapaJesus(
        categoria: Categoria.fe,
        titulo: 'Fé em Deus',
        subTitulo: 'A Fé que deve ser em Deus, unicamente Nele.',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.libertacao,
        titulo: 'Libertação',
        subTitulo: 'E conhecereis a Verdade e a Verdade ti libertará. Jesus é a Verdade que Liberta.',
        img: 'assets/cruz.png'
      ), 
      CapaJesus(
        categoria: Categoria.oracao,
        titulo: 'Oração e Jejum',
        subTitulo: 'A Fé que deve ser em Deus, unicamente nEle.',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.pecado,
        titulo: 'Pecado',
        subTitulo: 'Todo aquele que vive pecando é escravo do pecado. Liberte-se dele.',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.salvacao,
        titulo: 'Salvação',
        subTitulo: 'Confessa com a tua boca que Jesus é o Senhor, aceita no teu coração que Deus o ressuscitou dentre os mortos, serás salvo.',
        img: 'assets/cruz.png'
      ),
      CapaJesus(
        categoria: Categoria.verdade,
        titulo: 'Deus, A Verdade',
        subTitulo: 'Deus criou tudo: Os céus e até os mais altos céus, a terra e tudo o que nela existe.',
        img: 'assets/cruz.png'
      ), 
    ];
    if(categoria == Categoria.all){
      return allCapaJeus;
    }else{
      return allCapaJeus.where((CapaJesus c) {
          return c.categoria == categoria;
      }).toList();
    }
  }
}
class Jesus {

Jesus({this.categoria,this.categoriaN,this.tema,this.versoDia,this.mensagem});
final Categoria categoria; String categoriaN,tema,versoDia,mensagem;
}

class JesusDatabase{
  static List<Jesus> loadJesusDB(Categoria categoria){
    var allJesusDb = <Jesus>[ 
      Jesus( 
        categoria: Categoria.amor, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Amor De Deus', // aqui faz parte do tema ou menu principal
        tema: 'A SALVAÇÃO NO ANTIGO TESTAMENTO', // tema relacionado
        versoDia: ''' ''',
     mensagem: '''A salvação é uma obra completa de Deus na vida do Homem que consiste em trazê-lo da condição de pecado ao estado da Glória *através de Jesus Cristo.* No estado anterior o Homem está espiritualmente morto e condenado à ira divina, neste último ele está sob a graça de Deus e experimentando a vida eterna. 

No *Antigo Testamento* a salvação *_"Yasha"_* significa: liberdade daquilo que prende ou restringe, também significa, como verbo: soltar e liberar. 

Os vários substantivos derivados desta palavra *_"Yasha,"_* significam tanto o acto de libertar, quanto o acto de resgatar. Podemos encontrar este significado em *1 Samuel 11: 9* 
_Então disseram aos mensageiros que tinham vindo: Assim direis aos homens de Jabes-Gileade: Amanhã, em aquentando o sol, vos virá livramento. Vindo, pois, os mensageiros, anunciaram-no aos homens de Jabes, os quais se alegraram._

Esta palavra também serve para transmitir o estado final de segurança, bem estar e  prosperidade *2 Samuel 23: 5; Salmos 12:6* 

_Pois não é assim a minha casa para com Deus? Porque estabeleceu comigo um pacto eterno, em tudo bem ordenado e seguro; pois não fará ele prosperar toda a minha salvação e todo o meu desejo?_ *2 Samuel: 23 - 5*

Numa última análise, também pode ter um significado de vitória sobre adversários *2 Samuel 23: 10 - 12;  Salmos 98: 1*
_Cantai ao Senhor um cântico novo, porque ele tem feito maravilhas; a sua destra e o seu braço santo lhe alcançaram a vitória._ *Salmos 98: 1*

O particípio passado deste Verbo é a palavra Traduzida como *SALVADOR* _"moshia"_ da qual vem o nome Josué e a sua forma grega, Jesus; e  ambas significam *_"Yah(weh) — salva"_*

Uma análise de algumas menções no antigo testamento nos mostram que a salvação sempre foi pela graça de Deus e os antigos percebiam e sabiam disso. 

_A tua salvação espero, ó SENHOR!_ *Gênesis 49: 18.*

_No tocante a mim, confio na tua graça; regozije-se o meu coração na tua salvação_ *Salmosa 13:5.*

Davi confiava na graça do Senhor e mesmo confiando nessa graça, era obediente à lei. 
_Deleito-me em fazer a tua vontade, ó Deus meu; sim, a tua lei está dentro do meu coração._ *Salmos 40: 8*

_Eis que Deus é a minha salvação; confiarei e não temerei, porque o SENHOR Deus é a minha força e o meu cântico; ele se tornou a minha salvação._ *Isaías 12:2*

_Paz e bênção para ti em nome de Jesus Cristo_ 🙌🏼🙏🏼🙌🏼
'''
      ),
      Jesus( 
        categoria: Categoria.amor, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Amor De Deus', // aqui faz parte do tema ou menu principal
        tema: 'A SALVAÇÃO NO ANTIGO TESTAMENTO', // tema relacionado
        versoDia: ''' 
  ''',
     mensagem: ''' A salvação é uma obra completa de Deus na vida do Homem que consiste em trazê-lo da condição de pecado ao estado da Glória *através de Jesus Cristo.* No estado anterior o Homem está espiritualmente morto e condenado à ira divina, neste último ele está sob a graça de Deus e experimentando a vida eterna. 

No *Antigo Testamento* a salvação *_"Yasha"_* significa: liberdade daquilo que prende ou restringe, também significa, como verbo: soltar e liberar. 

Os vários substantivos derivados desta palavra *_"Yasha,"_* significam tanto o acto de libertar, quanto o acto de resgatar. Podemos encontrar este significado em *1 Samuel 11: 9* 
_Então disseram aos mensageiros que tinham vindo: Assim direis aos homens de Jabes-Gileade: Amanhã, em aquentando o sol, vos virá livramento. Vindo, pois, os mensageiros, anunciaram-no aos homens de Jabes, os quais se alegraram._

Esta palavra também serve para transmitir o estado final de segurança, bem estar e  prosperidade *2 Samuel 23: 5; Salmos 12:6* 

_Pois não é assim a minha casa para com Deus? Porque estabeleceu comigo um pacto eterno, em tudo bem ordenado e seguro; pois não fará ele prosperar toda a minha salvação e todo o meu desejo?_ *2 Samuel: 23 - 5*

Numa última análise, também pode ter um significado de vitória sobre adversários *2 Samuel 23: 10 - 12;  Salmos 98: 1*
_Cantai ao Senhor um cântico novo, porque ele tem feito maravilhas; a sua destra e o seu braço santo lhe alcançaram a vitória._ *Salmos 98: 1*

O particípio passado deste Verbo é a palavra Traduzida como *SALVADOR* _"moshia"_ da qual vem o nome Josué e a sua forma grega, Jesus; e  ambas significam *_"Yah(weh) — salva"_*

Uma análise de algumas menções no antigo testamento nos mostram que a salvação sempre foi pela graça de Deus e os antigos percebiam e sabiam disso. 

_A tua salvação espero, ó SENHOR!_ *Gênesis 49: 18.*

_No tocante a mim, confio na tua graça; regozije-se o meu coração na tua salvação_ *Salmosa 13:5.*

Davi confiava na graça do Senhor e mesmo confiando nessa graça, era obediente à lei. 
_Deleito-me em fazer a tua vontade, ó Deus meu; sim, a tua lei está dentro do meu coração._ *Salmos 40: 8*

_Eis que Deus é a minha salvação; confiarei e não temerei, porque o SENHOR Deus é a minha força e o meu cântico; ele se tornou a minha salvação._ *Isaías 12:2*

_Paz e bênção para ti em nome de Jesus Cristo_ 🙌🏼🙏🏼🙌🏼
'''
      ),

       Jesus( 
        categoria: Categoria.amor, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Amor De Deus', // aqui faz parte do tema ou menu principal
        tema: 'O Amor de Cristo na cruz', // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5)
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem. 
     \n Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.amor, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Amor De Deus', // aqui faz parte do tema ou menu principal
        tema: 'O Amor de Cristo na cruz', // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5)
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.confianca, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Confiança em Deus',   // aqui faz parte do tema ou menu principal
        tema: 'Os que Confiam em Deus',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5)
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.confianca, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Confiança em Deus',   // aqui faz parte do tema ou menu principal
        tema: 'Os que Confiam em Deus',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.confianca, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Confiança em Deus',   // aqui faz parte do tema ou menu principal
        tema: 'Os que Confiam em Deus',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.conversao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Arrependimento e Conversão',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.conversao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Arrependimento e Conversão',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.conversao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Arrependimento e Conversão',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.coracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Coração do Homem',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.coracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Coração do Homem',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.coracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'O Coração do Homem',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.eterna, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Vida Eterna',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.eterna, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Vida Eterna',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.eterna, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Vida Eterna',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.fe, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Fé em Deus',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.libertacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Libertação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.libertacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Libertação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.libertacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Libertação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.oracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Oração e Jejum',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.oracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Oração e Jejum',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.oracao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Oração e Jejum',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.pecado, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Pecado',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.pecado, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Pecado',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
        Jesus( 
        categoria: Categoria.pecado, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Pecado',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.salvacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Salvação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.salvacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Salvação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.salvacao, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Salvação',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
      Jesus( 
        categoria: Categoria.verdade, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Deus, A Verdade',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.verdade, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Deus, A Verdade',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
       Jesus( 
        categoria: Categoria.verdade, //aqui deve sempre estar assim, muda caso for diferente NB:tens que ser tu a mudar como um dos exemplos abaixo ou copia para facilitar
        categoriaN: 'Deus, A Verdade',   // aqui faz parte do tema ou menu principal
        tema: 'Arrependa se hoje',  // tema relacionado
        versoDia: '''8. Porém, Deus comprova seu amor para conosco pelo fato de ter Cristo morrido em nosso benefício quando ainda andávamos no pecado.
   (Romanos, 5) 
  ''',
     mensagem: '''É um amor incondicional, não aumenta nem diminui, pois é perfeito. Deus ama a todos independentemente de suas atitudes, acima de nossas erros e pecados, e nos quer bem.
         Deus nos ama apesar de nossos pecados 
         Paz e Bencao '''
      ),
    ];
    if(categoria == Categoria.all){
      return allJesusDb;
    }else{
      return allJesusDb.where((Jesus c) {
         return c.categoria == categoria;
      }).toList();
    }
  }
}