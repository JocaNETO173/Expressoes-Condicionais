# 1. Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’,
# cujo bairro é ‘Jardins’. Ela está de férias?

select nome, de_ferias, bairro from tabela_de_vendedores;

select nome, de_ferias, bairro from tabela_de_vendedores where nome = 'Cláudia Morais';
# Valores BIT podem ser usados como valores booleanos, em que 0 é para falso e 1 para verdadeiro.

# 2. A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.

select * from tabela_de_vendedores where percentual_comissao > 0.10 and de_ferias = 1;

# 3. Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015.
# Por que o CPF desta tabela não é uma chave primária (PK)?

select * from notas_fiscais
