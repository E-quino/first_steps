import 'Inscrito.dart';
import 'dart:io';

class TorneioHipismo {
  List<Inscrito> inscritos = [];

  void registrarInscrito() {
    print("Nome do jóquei:");
    String nomeJoquei = stdin.readLineSync()!;
    print("Idade do jóquei:");
    int idadeJoquei = int.parse(stdin.readLineSync()!);

    print("Nome do cavalo:");
    String nomeCavalo = stdin.readLineSync()!;
    print("Raça do cavalo:");
    String racaCavalo = stdin.readLineSync()!;

    Inscrito novoInscrito = Inscrito(
      nomeJoquei: nomeJoquei,
      idadeJoquei: idadeJoquei,
      nomeCavalo: nomeCavalo,
      racaCavalo: racaCavalo,
    );

    inscritos.add(novoInscrito);
    print("Inscrito registrado com sucesso!");
  }

  void exibirInscritos() {
    if (inscritos.isEmpty) {
      print("Ainda não há inscritos no torneio.");
    } else {
      for (Inscrito inscrito in inscritos) {
        print("Nome do jóquei: ${inscrito.nomeJoquei}");
        print("Idade do jóquei: ${inscrito.idadeJoquei}");
        print("Nome do cavalo: ${inscrito.nomeCavalo}");
        print("Raça do cavalo: ${inscrito.racaCavalo}");
        print("--------------------------");
      }
    }
  }

  void executar() {
    while (true) {
      print("\nMenu Principal:");
      print("1. Registrar novo inscrito");
      print("2. Exibir lista de inscritos");
      print("3. Sair");

      print("Digite sua opção:");
      int opcao = int.parse(stdin.readLineSync()!);

      switch (opcao) {
        case 1:
          registrarInscrito();
          break;
        case 2:
          exibirInscritos();
          break;
        case 3:
          print("Saindo do programa...");
          return;
        default:
          print("Opção inválida. Tente novamente.");
      }
    }
  }
}
