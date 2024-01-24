import 'package:flutter/material.dart';

//onde a execução do programa começa - principal
void main() {
  runApp(const Aplicativo());     //roda o aplicativo
}
//classe aplicativo(contém caracteristicas,variaveis e funções)
//extends - extende = Herda caracteristicas do widget stateless
//stateless - tudo é imutavel após a criação 
class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});      //classe pai
  
  
  //build - reconstroi a tela
  @override
  Widget build(BuildContext context) {
    
    //widget responsável pelo design da aplicação, fornece temas e recursos
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home - tela principal - Scaffold fornece layout básico
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 88, 116, 139),
            title: const Text(
              'Flutter é divertido!',     //o texto que você quer entre aspas
              style: TextStyle(color: Colors.white),
          ),
        ),

          //body é o corpo do app, Center vai centralizar o conteúdo
          body: const Center(
          //child representa que é filho do widget Center - SizedBox - CaixaComTamanho
          child: SizedBox(
            child:const Text(
              'Mas a dragoa praticamente partiu você em dois',
               style: TextStyle(
                fontSize: 20,
                fontFamily: 'arial',
               ),
              ),
            height: 200,
             width: 200,
          ),
        ),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 88, 116, 139),
            child: Icon(Icons.add),
            onPressed: () {},
          ),

          //------ Barra de navegação inferior
          bottomNavigationBar: BottomNavigationBar(items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
              BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Negócios'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escola'),

          ]),

          //---- Barra lateral
          drawer: Drawer(
            backgroundColor: Colors.white,

            //Lista dos itens do menu
           child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 88, 116, 139)),
                  child: Text(
                    'Menu App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                

                //item / Icone do item / Título do item / Ação que o botão irá executar
                ListTile(
                  leading: const Icon(Icons.home),
                  title: Text('Pagina Inicial'),
                  onTap: () {},
                ), 

                ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text('Configurações'),
                  onTap:() {},
                ),

                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: Text('Perfil'),
                  onTap:() {},
                ),


              ],
            ),

        ),
      ),
    );
   
  }
}
