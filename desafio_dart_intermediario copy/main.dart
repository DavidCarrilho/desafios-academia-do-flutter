
import 'person.dart';

main() {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
  final persons = pessoas.map((row) {
    final fields = row.split('|');
    final name = fields[0];
    final age = int.parse(fields[1]);
    final genre = fields[2];
    return Person(name: name, age: age, genre: genre);
  }).toSet();

  final men = persons.where((p) => p.genre == 'Masculino');
  final women = persons.where((p) => p.genre == 'Feminino');
  print('Total de homens: ${men.length}');
  print('Total de mulheres: ${women.length}');

  final personsOlderThan18years = persons.where((p) => p.age > 18);
  print(
      'Total de pessoas maiores de 18 anos: ${personsOlderThan18years.length}');

  final personList = personsOlderThan18years.toList();
  personList.sort((a, b) => a.age.compareTo(b.age));
  final olderPerson = personList.last;
  print(
      'A pessoa mais velha é ${olderPerson.name} com ${olderPerson.age} anos de idade');
}
