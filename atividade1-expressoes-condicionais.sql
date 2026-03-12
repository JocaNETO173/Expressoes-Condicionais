# 1. Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’,
# cujo bairro é ‘Jardins’. Ela está de férias?

select nome, de_ferias, bairro from tabela_de_vendedores;

select nome, de_ferias, bairro from tabela_de_vendedores where nome = 'Cláudia Morais';
# Valores BIT podem ser usados como valores booleanos, em que 0 é para falso e 1 para verdadeiro.
# --------------------------

# --------------------------
# 2. A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.
# Resposta 2: A Pessoa é Roberta Martins

select * from tabela_de_vendedores where percentual_comissao > 0.10 and de_ferias = 1;
# --------------------------

# --------------------------
# 3. Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015.
# Por que o CPF desta tabela não é uma chave primária (PK)?
# Resposta 3: A Chave Primária tem que ser um valor único, nessa tabela, este valor único é o NUMERO, aqui o CPF não será usado como PK pq um CPF pode fazer mais de uma
# compra, e como essa tabela registra as compras, o CPF poderá se repetir, não tendo necessidade de se definir como chave primária

select * from notas_fiscais where matricula = 00237 or data_venda = 2015-01-12;
# --------------------------

# --------------------------
# 4. Na tabela dos itens das notas fiscais, selecione o código do produto e a quantidade vendida dos itens que possuam quantidade de venda igual ou maior do que 99.
# Qual ou quais itens representam o maior valor de venda?

select CODIGO_DO_PRODUTO, QUANTIDADE, preco from itens_notas_fiscais where QUANTIDADE >= 99 and preco > 44;
# codigo com maior preço = 1022450
select CODIGO_DO_PRODUTO, NOME_DO_PRODUTO from tabela_de_produtos where CODIGO_DO_PRODUTO = '1022450';
# Produto = Festival de Sabores - 2 Litros - Açai
# --------------------------

# --------------------------
# 5. Quem é o cliente que comprou 84 produtos com o número de código igual a 1101035, cujo número da nota fiscal foi 102?
# Quem foi o vendedor ou vendedora responsável e qual o nome do produto e seu sabor? Gere o Diagrama de Entidade - Relacionamento para melhor compreensão.

select * from notas_fiscais where numero = 102;
# CPF = 8502682733
# MATRÍCULA = 00236
select * from itens_notas_fiscais where numero = 102 and quantidade = 84;
select CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR from tabela_de_produtos where CODIGO_DO_PRODUTO = '1101035';
# Produto = Linha Refrescante - 1 Litro - Morango/Limão
select CPF, nome from tabela_de_clientes where CPF = '8502682733';
# Cliente = Valdeci da Silva
select * from tabela_de_vendedores where MATRICULA = '00236';
# Vendedor = Cláudia Morais

# Resposta 5: O Cliente é Valdeci da Silva, a vendedora responsável foi a Cláudia Morais e o produto foi o Linha Refrescante - 1 Litro - Morango/Limão (Sabor Morango/Limão)
# --------------------------