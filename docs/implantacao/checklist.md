# Roteiro de implantação

Use esta lista em cada nova implantação. Marque os itens somente depois de testar o processo completo.

## 1. Levantamento

- [ ] Definir lojas, terminais e responsáveis.
- [ ] Identificar regime tributário e dados fiscais de cada estabelecimento.
- [ ] Levantar certificado digital, CSC e credenciais fiscais aplicáveis.
- [ ] Listar impressoras, balanças, leitores, terminais de consulta e equipamentos de pagamento.
- [ ] Definir formas de pagamento, prazos, bancos e contas.
- [ ] Planejar migração de clientes, fornecedores, produtos, saldos e preços.

## 2. Retaguarda

- [ ] Cadastrar empresa e lojas.
- [ ] Criar usuários e permissões por função.
- [ ] Revisar clientes, fornecedores, vendedores e funcionários.
- [ ] Revisar setores, categorias, unidades, marcas, NCM, CEST e regras fiscais.
- [ ] Importar ou cadastrar produtos e preços por loja.
- [ ] Informar estoque inicial e estoque mínimo.
- [ ] Configurar formas de pagamento, plano de contas e financeiro.
- [ ] Cadastrar PDVs e parâmetros de integração.

## 3. Fiscal

- [ ] Instalar e selecionar o certificado digital.
- [ ] Confirmar ambiente de emissão e dados da SEFAZ.
- [ ] Configurar série e numeração de NF-e, NFC-e e MDF-e sem misturar os documentos.
- [ ] Validar CSC da NFC-e, quando aplicável.
- [ ] Emitir documentos de homologação e conferir XML e impressão.
- [ ] Treinar contingência e recuperação de documentos pendentes.

## 4. Equipamentos e integrações

- [ ] Testar impressora de cupom.
- [ ] Testar leitor de código de barras.
- [ ] Testar balança e etiquetas.
- [ ] Testar terminal de consulta, se utilizado.
- [ ] Testar cartão, PIX e demais meios de pagamento.
- [ ] Testar comunicação de cada PDV com a retaguarda.

## 5. Treinamento por função

- [ ] Operador: abertura, venda, recebimento, cancelamento permitido e fechamento.
- [ ] Supervisor: autorizações, sangria, suprimento e conferências.
- [ ] Estoque/compras: entrada de nota, inventário e movimentações.
- [ ] Financeiro: contas a pagar/receber, promissórias, cartões e conciliação.
- [ ] Fiscal: NF-e, MDF-e, XML, SPED e relatórios de conferência.
- [ ] Gestor: preços, promoções, relatórios e indicadores.

## 6. Teste de ponta a ponta

1. cadastrar um produto de teste;
2. enviar a carga ao PDV;
3. realizar venda com cada forma de pagamento;
4. emitir e conferir o documento fiscal;
5. confirmar que a venda chegou à retaguarda;
6. conferir estoque, caixa e financeiro;
7. cancelar uma venda de teste e conferir os estornos;
8. fechar o caixa e comparar os totais.

## 7. Entrada em produção

- [ ] Fazer backup antes da virada.
- [ ] Conferir numerações fiscais.
- [ ] Acompanhar a primeira abertura, venda, transmissão e fechamento.
- [ ] Registrar pendências, responsável e prazo.
- [ ] Entregar o link desta central de ajuda aos usuários.

!!! danger "Nunca pule o teste completo"
    Uma venda concluída no caixa deve aparecer corretamente na retaguarda, no estoque, no financeiro e nos documentos fiscais.
