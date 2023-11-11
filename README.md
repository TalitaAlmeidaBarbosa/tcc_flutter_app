# TCC: Sistema de Irrigação integrado a um App de Configurações

Nosso tcc é um sistema de irrigação conectado a um aplicativo de configurações com seis exemplares de plantas já pré-programados que funcionará via Bluetooth para controle do sistema HardWere.
"tcc_flutter_app" como está o nome do nosso repositório, nada mais é do que a parte de conexão entre o sistema de irrigação e o usuário (nosso aplicativo).

- Front-end do TCC (app);
- Desenvolvimento de Interface: Flutter;
- Linguagem de programação: Dart;


- Back-end do TCC: lógica dos botões e funcionamento do HardWere;
-  Desenvolvimento do sistema: Arduino IDE;
- Linguagem de programação: C++;

  

O projeto de interface consiste em uma página de configurações com seis botões incluindo a imagem e nome de cada um para o usuário poder identificar cada botão e poder modificar a escolha do seu exemplar de planta.
para poder acessar as imagens no repositório : lib > img

## Como rodar:

-> Prepare o ambiente do Android Studio para instalar o Flutter (caso não esteja instalado); </br>
-> Abra o projeto no Android Studio; </br>
-> Escolha um emulador de sua preferência para rodar o aplicativo (lembrando que só irá funcionar se for android, nada de ios); </br>
-> Rode o programa e verá os botões. </br>

## Mais sobre o App:

Desenvolvido em visual studio code o projeto migrou para o Android Studio tanto para poder rodar no emulador como para conectar com o Bluetooth que já existe no próprio programa.
Dessa forma, abrimos essa parte do aplicativo no Android Studio, conforme as prioridades colocadas no projeto, inicialmente o aplicativo se mostra mais visual do que funcional de fato, podem ser observadas as alterações de cores conforme forem sendo pressionados cada botão (que sem a parte HardWere nada vai fazer além disso) e rodando no emulador o android de sua preferência, de cara já é possível ver esses botões em tela.

O foco maior desse projeto é deixar as coisas mais simples e intuitivas possíveis, sem muitos rodeios o usuário pode facilmente identificar de acordo com as necessidades que a sua planta precisa e ajustá-las de acordo com essas seis opções mostradas pelo aplicativo. De certo modo, entendemos que o usuário também precise de um mínimo conhecimento sobre o tempo e quantidade de água que a planta precisa, entretanto, visto que essa quetão se resolveria dado ao conhecimento de mundo, nosso objetivo apenas se mostra em apresentar esses seis botões visualmente identificáveis para livre escolha do usuário.

## Sobre a lógica HardWere:

O sistema funcionará sem auxílio de nenhum tipo de sensor, o controle de funcionamento se dará inteiramente pelo tempo de execução, também já pré-programado. O código do sistema em HardWare se encontra em outro repositório.

by: Talita
