# API

### Dart File 

Uma aplicação para ensinar como usar programaçao assíncrona (async await) e como utilizar uma API externa usando o pacote (http) [https://pub.dev/packages/http] fornecido pelo Dart.
Além disso, a utilização de fromJson para conseguir selecionar cada item do API, podendo assim manipulá-lo e o toJson para transformar o response em uma lista json novamente.

Para finalizar, tratamos os erros com:
```
try{

} catch (e) {

}
```

### Flutter File

Construimos um app que mostraria as response do API externo, utilizamos o pacote Mockito para realizar testes.
Além disso, criamos 4 estados para podermos visualizar, sendo eles, o start que mostra uma tela vazia, o loading que mostra o icon de carregando, o erro que mostrará um botão quando estivermos sem conexão com a internet e o sucesso, em que aparece a lista do API com um check box mostrando quais tem o complement false ou true.
