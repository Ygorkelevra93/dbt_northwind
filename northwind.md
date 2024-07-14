### Introdução:
 
Recebido o Case da Northwind, escolhida a ferramenta  QlikCloud  por oferecer mais robustez na criação de conexões com bancos de origem, carga das informações,  e agilidade na identificação dos campos chaves entre tabelas dimensão e tabelas fato.  Inclusive a carga dos dados foi em um banco postgres tal como mencionado no documento.
 
 
 
### Arquitetura:
Pelo fato da escolha pela solução da QLIK, para este case optei pela orquestração e armazenagem do  pacote Qlik Cloud, onde tenho diversas opções que podem facilitar a governança e segurança das camadas de desenvolvimento, publicação em produção e consumo. Complementando,  foi construído também um modelo paralelo utilizando DBT e disponibilizado o dado refinado  para oferecer a possibilidade de leitura por outras ferramentas de DataViz como o Power BI ou Tableau
 
[Opções de pipeline para este case]
![image](https://github.com/user-attachments/assets/6582b7c2-f699-48c0-9673-7706e0124766)

 

[Configurando o ETL no DBT]
![image](https://github.com/user-attachments/assets/72ea0501-1fb5-4182-8a11-2d418968fdcc)

 
 
[Configurando o ETL no Qlik]
![image](https://github.com/user-attachments/assets/fb752ef2-6f52-40b4-907e-cfdae43e8199)



  
 
### Modelo de dados
Construído tomando como base os modelos estrela , porém com algumas normalizações das dimensões em produtos e colaboradores.
 [Modelo de dados no Qlik]
![image](https://github.com/user-attachments/assets/85ee83bd-ecd8-4549-b06e-315cd8bc9727)

 
[Modelo de dados no PowerBI]
![image](https://github.com/user-attachments/assets/d7be9f8b-a799-4099-95cb-fadbf23050e6)

 
 
 
 

### Indicadores analisados:
Faturamento;
Faturamento médio mensal;
Ticket médio;
Taxa de churn;
Desempenho por  vendedor;
Desempenho por país
 
 
### Dashboard final:  Link do vídeo 
https://youtu.be/ClBAU4i_lGU
![image](https://github.com/user-attachments/assets/f159dfdb-66ad-46d5-8c7a-cee0bd0243c8)

 
 
### Faturamento
Estamos em 06 de Maio de 1998 e o faturamento já  está em mais de 70% do realizado no ano anterior, e seguindo essa média de faturamento em 1998 de 100K mês, tudo indica que pode fechar o ano faturando acima de R$ 1 M BRL, fechando o ano com um crescimento de 100%.
![image](https://github.com/user-attachments/assets/78f726eb-e94d-45bd-950d-1171b74416b8)

 

 Lembrando que o crescimento de 1997 frente a 1996 comparando apenas o segundo semestre, visto que as operações começam em jul/96  foi superior em mais de 50%
![image](https://github.com/user-attachments/assets/2ee674fb-ff8e-441f-b134-6ac1f097cef7)



### Faturamento médio mensal
![image](https://github.com/user-attachments/assets/6f4fa35b-fb85-4ed0-aa47-320785d02a51)
![image](https://github.com/user-attachments/assets/eb18fcca-b212-4716-b09c-aa3f88d631cd)

 

 
Perspectiva positiva pelo faturamento médio mensal que vem crescendo nestes 3 anos, nos dois anos superando os períodos anteriores. 
 [Faturamento mensal geral]
![image](https://github.com/user-attachments/assets/c02e283f-d74f-4725-afb1-447141112daf)



### Ticket Médio
O ticket médio da empresa  também apresenta crescimento de um ano para o outro  se mantendo em 1998 maior que o  todo o período (6%)  e que o período anterior  (8%).

![image](https://github.com/user-attachments/assets/bcfddc56-76f5-425e-9253-ec867ec45950)

![image](https://github.com/user-attachments/assets/9875e821-ef11-4e75-a7e2-9eb04000a6a2)

 

 
 
 
### Taxa de Churn
 A taxa de churn e número de forma geral tem um cenário positivo onde ano pós ano a empresa conseguiu movimentar mais clientes, conforme apontado no gráfico onde as linhas estão cada período mais abaixo no gráfico. A alavancagem apontada em maio se dá pelo fato de estarmos ainda no início do mês.
![image](https://github.com/user-attachments/assets/0d9d7f73-86e1-45bf-8432-323d897162da)

  
 
### Desempenho de vendedores
![image](https://github.com/user-attachments/assets/2c2178cc-a620-4f12-8e44-bcd7526c5061)

 
# Prós:
Cenário de disputa bastante equilibrado onde sim temos os melhores vendedores e piores vendedores mas sem nenhuma grande discrepância entre eles. No topo da tabela 3 vendedores em média com 18% das vendas e na parte de baixo  também 3 vendedores com 8%.
 

 INSIGHT:  Destaque para valor de vendas ao Andrew pelo dois meses de faturamento muito acima da média
![image](https://github.com/user-attachments/assets/8469f7be-25ce-4b55-8e8e-e9074e02ddc0)
![image](https://github.com/user-attachments/assets/ef5cf236-c7ce-41c4-889b-b9d506bd330b)

  
# Contras:
Atenção  para o volume de vendas da Janet que vem decaindo em por três meses seguidos em 1998
 ![image](https://github.com/user-attachments/assets/dca20516-1591-4663-a755-ec09d984ea4e)

 
 
 
### Desempenho por país
![image](https://github.com/user-attachments/assets/e402dd08-6a46-444a-aae9-5a1f06f36600)
Nos três anos da empresa o país com maior número de vendas foi o mercado  interno sendo sempre seguido por Alemanha, Áustria e Brasil.
 
Destaque ao cliente Quick Stop da Alemanha que faz colocar o país em posição de destaque frente ao cenário geral .
RECOMENDAÇÃO: E nesse sentido é importante alertar sobre a pulverização de vendas onde no caso da northwind 3 clientes já superam o patamar de 5% do valor das vendas.
 

[Faturamento líquido - por cliente]
![image](https://github.com/user-attachments/assets/1ef91f12-af4c-4f69-bd22-df7a9d9951e1)


   
RECOMENDAÇÃO:
Atenção ao faturamento para o mercado brasileiro onde estava em uma crescente no primeiro tri de 1998 e perdeu o ritmo. Sendo o Brasil o 4ª cliente com maior valor de faturamento 
[Faturamento mensal - Brasil]
![image](https://github.com/user-attachments/assets/dd611a3a-5b84-4d01-ba77-a1d0b0ae5db3)


 
[Faturamento anual - Brasil]

![image](https://github.com/user-attachments/assets/817e05e6-6a39-4fa8-968d-729f1424eecd)

  
### Desempenho por produto
O carro chefe da empresa é  o produto Cote de Blaye
E dentro de sua categoria de produtos ele representa 52% do grupo , "carregando" o segmento  frente ao cenário da empresa. 
INSIGHT: Investimento em desenvolvimentos de produtos bem aceitos no mercado como o Cote de Blaye.


![image](https://github.com/user-attachments/assets/76253e66-7ce7-421f-8743-94c2da447eb5)
 
[Faturamento por produto - Categoria Beverages]
 ![image](https://github.com/user-attachments/assets/05921dcd-3694-4636-8622-0abd714c7ff2)

[Faturamento por produto]
![image](https://github.com/user-attachments/assets/d956a717-59c6-4c90-af18-21c6eb9783e4)

 
### Observação
**Mas atribuímos a este ponto o fato de que este é também o produto mais caro da empresa R$ 263,50
 No cenário geral em quantidades vemos uma distribuição mais homogênea das saídas da empresa.
 

[Quantidade de produtos vendidas]
![image](https://github.com/user-attachments/assets/4d7c13b3-c0a2-4ecb-8a12-624f248fa682)

 
 
 
 
Coluna de unit price da tabela de produtos,  a princípio  feito  uma tentativa de utilizar esta coluna como  preço de custo, para criar  o indicador de margem de lucro, mas sem sucesso, somente em 4 vendas tivemos valores de venda por exemplo superiores aos preços de compra. Seria interessante uma manutenção na extração dessa informação para trazer o custo do item.
 [tabela csv products e order_details]
![image](https://github.com/user-attachments/assets/17648dbd-591c-4d9a-975a-a7c63de95202)

 
 
 
### Observações finais:
Revisando este documento do desafio encontrei também uma divergência apresentada quanto ao faturamento da Northwind, não alcançando os  R$ 1,5 M BRL/Mês
![image](https://github.com/user-attachments/assets/63bd713d-4522-4f02-87b7-c018b57690a3)

 
Importante também para uma próxima análise, receber os documentos de orçamento e metas da empresa (por cliente, vendedor ou categoria de produto), para avaliarmos os atingimentos de expectativas.
 

