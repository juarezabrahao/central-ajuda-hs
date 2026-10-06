# Como emitir NF-e pelo PDV

Este procedimento emite **NF-e modelo 55** diretamente no caixa. Ele é diferente da NFC-e modelo 65 usada normalmente no varejo.

## Visão geral

O processo tem quatro etapas:

1. habilitar a NF-e no cadastro da Retaguarda;
2. enviar a configuração ao PDV;
3. preparar certificado, pastas e impressora do DANFE;
4. identificar corretamente o destinatário e selecionar NF-e no pagamento.

!!! warning "Habilitação obrigatória"
    Sem a opção **Permitir emissão de NF-e (modelo 55) no PDV**, o caixa emite somente NFC-e. O F10 de NF-e não será apresentado na tela de pagamento.

## 1. Configuração na Retaguarda

Entre com um usuário autorizado e acesse:

**Configurações do sistema > E — PDV > 4 — Vendas**

No quadro **NF-e modelo 55 no PDV**:

1. marque **Permitir emissão de NF-e (modelo 55) no PDV**;
2. confira a contingência SVC definida para a UF da loja;
3. escolha o formato do DANFE: **Retrato** ou **Paisagem**;
4. salve as configurações.

!!! note
    A opção de contingência deve seguir a orientação fiscal aplicável à UF da loja. Não altere esse parâmetro durante uma venda.

## 2. Enviar a configuração para o caixa

Depois de salvar:

1. execute a carga ou atualização dos PDVs na Retaguarda;
2. mantenha o PDV Monitor aberto;
3. aguarde a sincronização;
4. se necessário, feche e abra novamente o PDV;
5. inicie uma venda de teste e confirme que aparece **F10 — NFe** na tela de pagamento.

Se o F10 não aparecer, confira:

- se a opção foi salva na loja correta;
- se a carga chegou ao PDV;
- se o Monitor está online;
- se o caixa foi reaberto após a configuração.

## 3. Preparar o PDV

Antes da primeira emissão, confira:

- certificado digital válido e acessível;
- dados fiscais da loja;
- conexão com a SEFAZ;
- impressora A4 para o DANFE;
- pasta compartilhada para guardar os XMLs;
- pasta compartilhada para guardar os PDFs do DANFE.

No PDV, abra:

**F9 — Opções do sistema > Avançadas > Configurar NF-e**

Na tela **Configuração da NF-e (modelo 55)**:

1. informe a **Pasta do XML da NF-e**;
2. informe a **Pasta do PDF do DANFE**;
3. use uma pasta no servidor que também possa ser acessada pela Retaguarda;
4. pressione **F8 — OK**.

Na primeira emissão, o sistema poderá solicitar a impressora A4 do DANFE.

!!! danger "Não guarde somente no caixa"
    XML e PDF devem ser armazenados em local compartilhado e incluídos na rotina de backup.

## 4. Conferir o cadastro do cliente

Para NF-e, o destinatário precisa estar identificado corretamente. Prefira cadastrar ou revisar o cliente na Retaguarda antes da venda.

Confira:

- CPF ou CNPJ;
- nome ou razão social;
- situação fiscal e inscrição estadual, quando aplicável;
- CEP;
- endereço e número;
- bairro;
- município;
- UF;
- e-mail, quando o XML for enviado ao destinatário.

Depois da alteração, aguarde a carga do cadastro para o PDV.

## 5. Chamar o cliente no PDV

Durante a venda:

1. use a opção de identificação de cliente indicada na tela;
2. na seleção, escolha **F5 — Clientes**;
3. pesquise pelo CPF, CNPJ, código ou nome;
4. selecione o cadastro correto;
5. confirme o nome exibido na venda.

Se o cliente não estiver cadastrado, o PDV poderá abrir a tela de identificação. Preencha CPF/CNPJ, nome, endereço, número, bairro, CEP, cidade, UF e inscrição estadual quando aplicável. Confirme com **F8 — OK**.

!!! warning "CPF/CNPJ não substitui o cadastro completo"
    Informar somente o documento pode ser suficiente para uma NFC-e, mas a NF-e exige os dados completos do destinatário.

## 6. Lançar os produtos

1. leia ou pesquise cada produto;
2. confira descrição, quantidade e preço;
3. confirme descontos e acréscimos;
4. confira se todos os itens pertencem à mesma venda;
5. avance para o pagamento.

## 7. Selecionar NF-e no pagamento

Na tela de pagamento:

1. pressione **F10 — Emitir NFe**;
2. confirme que a indicação mudou para **NFe [SIM]**;
3. confira se o formato do documento mostra **NF-e (Modelo 55)**;
4. lance as formas de pagamento;
5. finalize a venda.

Pressionar F10 novamente desmarca a NF-e e retorna para NFC-e.

!!! tip "Venda em promissória"
    Quando a NF-e no PDV estiver habilitada, uma promissória vinculada a cliente cadastrado seleciona NF-e automaticamente. Confira a indicação **NFe [SIM]** antes de concluir.

## 8. Validação do destinatário

Antes da emissão, o sistema verifica os dados do cliente. Se algo estiver faltando:

1. a venda permanece aberta;
2. complete os dados solicitados;
3. confirme novamente;
4. prossiga com a finalização.

Se não for necessário emitir NF-e, cancele a correção e pressione F10 para voltar à NFC-e.

## 9. Autorização e DANFE

Após finalizar:

1. aguarde a resposta da SEFAZ;
2. confirme que a NF-e foi autorizada;
3. confira número, destinatário e total;
4. imprima o DANFE;
5. confirme que XML e PDF foram gravados nas pastas configuradas;
6. encaminhe os arquivos ao destinatário quando necessário.

## 10. Se a NF-e for rejeitada

A NF-e possui tratamento próprio e a venda permanece aberta para correção.

1. leia a mensagem completa da SEFAZ;
2. não registre outra venda;
3. corrija o destinatário, produto ou configuração indicada;
4. tente finalizar novamente;
5. se a mensagem envolver certificado, serviço da SEFAZ ou contingência, chame o suporte.

!!! danger "Não troque para NFC-e para esconder a rejeição"
    Se a operação exige NF-e, corrija a causa. Não edite XML, numeração ou série manualmente.

## Checklist do primeiro teste

- [ ] Opção de NF-e habilitada na Retaguarda.
- [ ] Configuração recebida pelo PDV.
- [ ] Certificado válido.
- [ ] Impressora A4 selecionada.
- [ ] Pastas de XML e PDF acessíveis.
- [ ] Cliente com dados completos.
- [ ] F10 indicando **NFe [SIM]**.
- [ ] NF-e autorizada pela SEFAZ.
- [ ] DANFE impresso.
- [ ] XML e PDF encontrados no servidor.
- [ ] Venda recebida corretamente pela Retaguarda.
