import 'package:flutter/material.dart';

//método principal que inicia a aplicação
void main() {
  runApp(Aplicativo());         //runApp - roda app - Chama classe Aplicativo
}

//A classe aplicativo vai herdar Stateless - não tem alteração dentro da tela
class Aplicativo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagina1(),
    );

  }
}
class Pagina1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(                  
      //barra de cima
        appBar: AppBar(
        //texto detro da barra - cor da letra
        title: const Text('Pagina 1', style: TextStyle(color: Colors.white), ),
        backgroundColor: const Color.fromARGB(255, 14, 65, 107), //cor da barra
      ),
      body: Center(         //body - corpo - Center - centralizar
        child: Column(            //organize em sentido coluna
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  'https://miro.medium.com/v2/resize:fit:1358/1*6JxdGU2WIzHSUEGBx4QeAQ.jpeg',
                width: 300,
                height: 300,
              ),
              Text('Olá Mundo',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'flutter é uma ferramenta multiplataforma - Android e IOS com um único código',
              ),
                  const SizedBox(height: 20), //dar uma quebra de linha

                  ElevatedButton(
                  //Navigator, gerencia navegações entre telas
                  //push - empurra uma nova rota, para a pilha de navegação
                    onPressed: () {
                    Navigator.push(
                      //context identifica pagina atual
                      context,
                      //MaterialPageRoute - define animação e layout para ir para outra tela
                      //builder - Constroi a tela da Página2
                      MaterialPageRoute(builder: (context) => Pagina2()),
                    );
                  },
                   child: Text('Ir para a Página 2'),
                   ),
              
            ],
        ),
      ),
    );
   
  }

}


class Pagina2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: const Color.fromARGB(255, 48, 87, 119),
         title: const Text('Pagina 2', style: TextStyle(color: Colors.white), 
         ),
        
       ),

       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://www.casadocodigo.com.br/cdn/shop/products/p_319fe74c-d444-43f0-8ea0-05f85622519c_large.jpg?v=1651084566',
             width: 300,
              height: 300,
              ),

              SizedBox(height: 20),

              Text( 
                'Linguagem DART',
                style: TextStyle(fontSize: 30),
              ),

              Text('É  uma linguagem versátil que combina eficiência e desempenho'
              ),

              SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:  (context) => Pagina3()),
                    );
                  },
                  child: Text('Ir para a Página 3'),
                )
          ],

        ),
        ),
    );
  }
}

//Stateless - informações estatícas, não mudam
  class Pagina3 extends StatelessWidget {
    //build - responsável pela renderização/construção
      @override
          Widget build(BuildContext context) {
            //define estruturas de layout - appBar + body
              return Scaffold(
                appBar: AppBar(
                    backgroundColor: Color.fromARGB(255, 105, 131, 151),
                     title: Text('Pagina 3', style: TextStyle(color: Colors.white), 
                     ),
                      actions: [
                        PopupMenuButton(
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                child: Text('Opção 1'),
                                 value: 'opcao1', 
                              ),
                              PopupMenuItem(
                                child: Text('Opção 2'),
                                 value: 'opcao2', 
                                ),
                            ];
                          },
                        ),
                      ], 
                    ),

                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,  //centralizando acima-baixo
                         children: [
                           Image.network( 
                            'https://www.sescpr.com.br/wp-content/uploads/2021/08/Imagem1.jpg', 
                            width: 300, 
                            height: 300,

                           ),

                           Text(
                            'A Historia do Senac',
                             style: TextStyle(fontSize: 30),
                             ),
                           Text(
                            'O Senac foi criado no ano 1946, com o propósito de educar profissionalmente'),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Pagina1()),
                                  );
                              },
                              child: Text('Voltar para a Página Inicial'),
                            ),
                            
                           
                         ],
                       ), 
                      ),
                  
                );
    }
  }

