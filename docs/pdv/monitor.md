# PDV Monitor

O PDV Monitor mantém a comunicação entre o caixa e a Retaguarda. Ele deve permanecer aberto durante o expediente.

## O que é sincronizado

- movimentos de abertura, sangria, suprimento e fechamento;
- vendas, itens e formas de pagamento;
- clientes e comissões;
- produtos, preços e configurações recebidas da Retaguarda;
- pedidos;
- informações financeiras relacionadas às vendas;
- documentos fiscais pendentes;
- carga de balanças, quando utilizada.

## Quando a conexão cair

O caixa continua operando localmente nos fluxos permitidos. Quando a comunicação voltar, o Monitor retoma a sincronização.

1. não feche o caixa nem repita vendas já concluídas;
2. confira se o Monitor está aberto;
3. aguarde o retorno da rede;
4. confirme se o indicador voltou ao estado online;
5. se continuar offline, acione o suporte.

## Reiniciar o Monitor

Quando orientado pelo suporte ou supervisor:

1. no PDV, abra **F9 — Opções do sistema**;
2. escolha **Reiniciar PDV Monitor**;
3. aguarde o ícone reaparecer;
4. confirme que a comunicação voltou.

## Quando chamar o suporte

- o Monitor não abre;
- permanece offline mesmo com a rede funcionando;
- preços ou produtos não chegam ao caixa;
- vendas concluídas não aparecem na Retaguarda;
- documentos pendentes não são transmitidos;
- fechamento ou financeiro apresenta divergência.

Informe loja, PDV, horário e número da venda afetada.

!!! danger "Não use ferramentas técnicas por conta própria"
    Reenvio de movimentos, reabertura, cancelamento de filas e execução de scripts são procedimentos de suporte. O uso incorreto pode duplicar vendas ou movimentações financeiras.
