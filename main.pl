use strict;
use warnings;

sub soma {
    my ($a, $b) = @_;
    return $a + $b;
}

my $nome = "Cleiton";
my $idade = 20;
my $sexo = 'M';
my $peso = 70.5;
my $ativo = 1;  # true in Perl

my ($val1, $val2, $adicao, $subtracao, $multiplicacao, $divisao, $modulo);

my $idadeTernario;
my $idadeTer;

my $idadeIF;
my $dia;

my $a = 0;

my $b = 0;

my $c = 0;
my $m = 0;
my $n = 0;

use constant PI => 3.14159265;

# Comments
print "#### ESCREVER NA TELA ####\n";
print "Olá Mundo\n\n";

# VARIÁVEIS
print "### VARIÁVEIS E TIPOS BÁSICOS ###\n";
print "Nome: $nome\n";
print "Idade: $idade\n";
print "Sexo: $sexo\n";
print "Peso: $peso\n";
print "Ativo: $ativo\n\n";

# CONSTANTE
print "### CONSTANTE ###\n";
print "PI: ", PI, "\n\n";

print "#### OPERACOES ####\n";
print "Informe o valor 1: ";
$val1 = <STDIN>;
chomp($val1);

print "Informe o valor 2: ";
$val2 = <STDIN>;
chomp($val2);

# OPERACOES
$adicao = $val1 + $val2;
$subtracao = $val1 - $val2;
$multiplicacao = $val1 * $val2;
$divisao = $val1 / $val2;
$modulo = $val1 % $val2;
print "Soma: $adicao\n";
print "Subtracao: $subtracao\n";
print "Multiplicacao: $multiplicacao\n";
print "Divisao: $divisao\n";
print "Modulo: $modulo\n\n";

# TERNARIO
print "### TERNARIO ###\n";
print "Digite um número: ";
$idadeTernario = <STDIN>;
chomp($idadeTernario);
$idadeTer = $idadeTernario >= 18 ? "Maior de idade" : "Menor de idade";
print "$idadeTer\n\n";

# IF ELSE IF ELSE
print "### IF ELSE IF ELSE ###\n";
print "Informe a idade: ";
$idadeIF = <STDIN>;
chomp($idadeIF);
if ($idadeIF < 12) {
    print "CRIANCA\n";
} elsif ($idadeIF >= 12 && $idadeIF < 18) {
    print "ADOLESCENTE\n";
} else {
    print "ADULTO\n";
}
print "\n";

# CASE
print "### CASE ###\n";
print "Informe um numero 1 - 7 para semana: ";
$dia = <STDIN>;
chomp($dia);

given ($dia) {
    when (1) { print "Domingo\n"; }
    when (2) { print "Segunda\n"; }
    when (3) { print "Terça\n"; }
    when (4) { print "Quarta\n"; }
    when (5) { print "Quinta\n"; }
    when (6) { print "Sexta\n"; }
    when (7) { print "Sabado\n"; }
    default   { print "Valor nao existente\n"; }
}
print "\n";

# REPEAT
print "### REPEAT ###\n";
print "Não tem REPEAT\n\n";

# DO WHILE
print "### DO WHILE ###\n";
do {
    print "$a\n";
    $a = $a + 1;
} while ($a < 10);
print "\n";

# WHILE
print "### WHILE ###\n";
while ($b < 10) {
    print "$b\n";
    $b = $b + 1;
}
print "\n";

# FOR
print "### FOR ###\n";
for ($c = 0; $c < 10; $c++) {
    print "$c\n";
}
print "\n";


# ARRAY
print "### ARRAY ###\n";
my @numbers = (10, 20, 30, 40);

foreach my $number (@numbers) {
    print "$number\n";
}
print "\n";

# MATRIZ
print "### MATRIZ ###\n";
my @matriz;

# Inicialização da matriz
for my $i (0..2) {
    for my $j (0..2) {
        $matriz[$i][$j] = $i * 3 + $j + 1;
    }
}

# Acesso aos elementos da matriz
print "Elementos da matriz:\n";
foreach my $row (@matriz) {
    print join(' ', @$row) . "\n";
}
print "\n";

# FUNCAO
print "### FUNCAO ###\n";
print "Digite o valor 1: ";
$m = <STDIN>;
chomp($m);

print "Digite o valor 2: ";
$n = <STDIN>;
chomp($n);

my $resultado = soma($m, $n);
print "A soma de $m e $n é igual a $resultado\n\n";

# PROCEDURE
print "### PROCEDURE ###\n";
print "Não tem PROCEDURE\n\n";

# PONTEIRO
print "### PONTEIRO ###\n";
print "Não tem PONTEIRO \n";
print " Não é necessário liberar memória manualmente, como em C ou C++. A variável será automaticamente coletada pelo coletor de lixo quando não estiver mais em uso. \n";
print "\n";
