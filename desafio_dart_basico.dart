void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  var maiores = 0;
  List sobrenomes = [];

  for (var paciente in pacientes) {
    var linha = paciente.split('|');
    var idade = linha[1];
    if (int.parse(idade) > 20) maiores++;

    var sobrenome = (linha[0].split(' '))[1];

    if (!sobrenomes.contains(sobrenome)) {
      sobrenomes.add(sobrenome);
    }
  }

  print('Total de pacientes com mais de 20 anos: $maiores ');

  for (var sobrenome in sobrenomes) {
    print('Familia $sobrenome:');

    for (var paciente in pacientes) {
      var linha = paciente.split('|');
      var nome = (linha[0].split(' '))[0];
      var sobrenome2 = (linha[0].split(' '))[1];

      if (sobrenome == sobrenome2) {
        print('$nome');
      }
    }
  }
}
