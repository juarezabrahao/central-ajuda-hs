# Suporte e Dúvidas Frequentes

Consulte primeiro as orientações e perguntas frequentes desta página. Se a sua dúvida persistir, nossa equipe de suporte está à disposição através dos canais de atendimento indicados no final.

---

## Dúvidas Frequentes do Financeiro (Perguntas e Respostas com Onde Clicar)

Consulte as soluções rápidas com o caminho de telas e botões para as dúvidas mais comuns do setor financeiro:

??? question "Onde clicar para emitir o relatório de Contas a Pagar com Razão Social, Lançador e Parcelas?"
    **Caminho passo a passo:**  
    1. Na tela inicial da Retaguarda, pressione o atalho **`CTRL+W`** (ou clique no menu **Financeiro**);  
    2. Na barra lateral esquerda da tela do Financeiro, clique no botão **Pagar**;  
    3. Na barra de botões no topo, clique no botão **Imprimir** (ícone de impressora);  
    4. Passe o mouse sobre **Contas por...** e clique em **Data**;  
    5. Informe a Data Inicial e a Data Final de vencimento e clique em **OK**.  
    *O relatório abrirá na tela exibindo a **Razão Social** no nome do fornecedor, a etiqueta **`Lançador: [Nome do Operador]`** no canto direito de cada bloco e o número da parcela na coluna **Doc / Parc.** (`-P1`, `-P2`, etc.).*

??? question "Como saber qual funcionário lançou uma conta a pagar ou boleto?"
    No relatório impresso de **Contas a Pagar por Data** (emitido na aba *Pagar > Imprimir > Contas por... > Data*), cada fornecedor traz no topo do seu agrupamento o campo **`Lançador: [Nome do Usuário]`**.  
    O sistema grava automaticamente o operador que estava logado no momento em que a nota de compra foi importada pelo XML ou quando uma conta manual foi cadastrada. Isso elimina a necessidade de fazer anotações de caneta na folha de papel para descobrir quem incluiu a despesa.

??? question "Por que o relatório de Contas a Pagar exibe a Razão Social do fornecedor?"
    O relatório foi programado para priorizar a **Razão Social oficial** da empresa, que é o nome que consta nos boletos bancários e notas fiscais de compra. Caso o fornecedor não possua Razão Social preenchida no cadastro, o sistema exibe o Nome Fantasia automaticamente. Isso evita a necessidade de duplicar nomes em cadastros de fornecedores.

??? question "O que significam as marcações -P1, -P2, -P3 na coluna de documento?"
    Essas marcações identificam a **parcela da nota fiscal de compra ou da duplicata**.  
    Por exemplo: se a nota de compra número `4520` foi faturada em 3 vezes (para 30, 60 e 90 dias), a primeira conta sairá como `4520-P1`, a segunda como `4520-P2` e a terceira como `4520-P3`. Isso permite conferir e grampear diretamente cada boleto bancário recebido com a sua respectiva parcela no relatório impresso.

??? question "Onde clicar para emitir o Extrato Bancário com Saldo Anterior e Saldo Linha a Linha?"
    **Caminho passo a passo:**  
    1. Abra o Financeiro pressionando **`CTRL+W`** (ou menu **Financeiro**);  
    2. Na barra lateral esquerda, clique no botão **Caixa**;  
    3. Na barra superior do Caixa, clique no botão **Relatórios**;  
    4. No menu suspenso, clique em **Extrato de Conta Corrente / Bancária**;  
    5. Na janela de filtro, defina a **Data Inicial**, a **Data Final** e selecione a sua conta bancária (ex.: *01 - Banco Itaú*) ou conta interna (*Caixa Geral* / Reservas);  
    6. Clique no botão **OK** (ou pressione **ENTER**).  
    *O relatório exibirá o **Saldo Anterior** ao período, listará todas as movimentações em ordem cronológica com entradas, saídas e o **Saldo Atualizado linha a linha**, finalizando no rodapé com o **Saldo Final da conta**.*

??? question "Como bater o saldo do sistema com o extrato do meu banco (ex: Itaú)?"
    Emita o **Extrato de Conta Corrente / Bancária** no sistema para o mesmo período do extrato do aplicativo do seu banco (*Financeiro > Caixa > Relatórios > Extrato de Conta Corrente / Bancária*).  
    Compare o **Saldo Final** dos dois relatórios: se estiverem iguais, todas as movimentações foram lançadas com exatidão. Se houver divergência, compare linha a linha as entradas e saídas para localizar qual operação faltou registrar no sistema (como tarifas de conta, juros ou um PIX recebido diretamente).

??? question "Onde clicar para cadastrar as Contas de Reserva (13º, Aluguel, Salários)?"
    **Caminho passo a passo:**  
    1. Na tela inicial da Retaguarda, clique no menu superior **Cadastros > Financeiro > Contas Correntes**;  
    2. Na janela que se abre, clique no botão **Novo** (atalho tecla **`F2`**);  
    3. No campo **Descrição**, digite o nome padronizado (exemplo: `RESERVA - 13º SALÁRIO` ou `RESERVA - ALUGUEL`);  
    4. No campo **Tipo de Conta**, selecione **Caixa / Interno**;  
    5. Clique no botão **Salvar** (tecla **`F10`**).

??? question "Onde clicar para transferir dinheiro do Caixa Geral para a Reserva?"
    **Caminho passo a passo:**  
    1. Abra o Financeiro pressionando **`CTRL+W`**;  
    2. Na barra lateral esquerda, clique em **Caixa**;  
    3. No topo, clique no botão **Ferramentas** e selecione **Transferência entre Contas**;  
    4. Na aba **Origem**: selecione `CAIXA GERAL`, informe o valor a guardar, selecione a forma de pagamento (`DINHEIRO`), digite o histórico e clique em **Próximo >**;  
    5. Na aba **Destino**: selecione a conta de reserva (ex.: `RESERVA - 13º SALÁRIO`) e clique em **Finalizar**.  
    *O dinheiro sairá do Caixa Geral e somará na Reserva automaticamente.*

??? question "Onde clicar para ver quanto dinheiro já foi guardado em cada Reserva?"
    1. Abra o Financeiro (**`CTRL+W`**) e clique na aba lateral **Caixa**;  
    2. Clique no botão **Relatórios > Extrato de Conta Corrente / Bancária**;  
    3. Selecione a conta da respectiva reserva (exemplo: `RESERVA - 13º SALÁRIO`);  
    4. Coloque a data desde o início do ano até a data de hoje e clique em **OK**;  
    5. O extrato mostrará todo o histórico de depósitos guardados e o **Saldo Atualizado** disponível.

??? question "Como localizar qualquer relatório rapidamente pelo teclado?"
    Na tela inicial da Retaguarda, pressione o atalho **`CTRL+R`** para abrir a **Central de Relatórios**. Digite palavras como `contas`, `caixa`, `extrato`, `promissoria` ou `vencimento`, selecione com as setas do teclado e tecle **ENTER** (ou **F8**) para abrir diretamente.

??? question "Uma venda em promissória feita no caixa não apareceu no Contas a Receber. O que fazer?"
    Verifique se o aplicativo **PDV Monitor** está aberto e em execução no servidor ou terminal de retaguarda. É ele quem realiza a sincronização automática de vendas, promissórias e fechamentos dos caixas. Assim que o monitor processa a venda, a promissória fica disponível imediatamente no Contas a Receber com o nome do cliente, vencimento e valor.

---

## Informações necessárias para atendimento

Caso sua dúvida não esteja descrita acima e seja necessário acionar o suporte, reúna as informações abaixo para agilizar o atendimento:

- módulo e nome da tela onde está ocorrendo a dúvida;
- tarefa que estava sendo realizada;
- texto completo ou foto da mensagem exibida na tela;
- data e horário do ocorrido;
- loja e número do caixa/terminal, quando aplicável;
- número do documento, pedido, venda ou nota fiscal;
- informar se o problema ocorre sempre ou apenas em uma situação específica.

## Situações urgentes

Trate como urgência e solicite contato imediato caso ocorra:

- impossibilidade geral de emitir vendas nos caixas PDV;
- documento fiscal (NF-e ou NFC-e) sem retorno claro de autorização da SEFAZ;
- divergência relevante de caixa que impeça a troca de turno;
- perda de comunicação geral entre os terminais e o servidor.

## Antes de repetir uma operação

Pesquise o documento ou venda e confirme se já foi concluído. Repetir uma operação sem conferir pode duplicar vendas, cobranças de estoque ou lançamentos financeiros.

!!! danger "Nunca envie senhas bancárias ou certificados"
    A equipe de suporte nunca solicitará senhas de certificados digitais, chaves privadas, senhas de contas bancárias ou tokens de segurança.

## Canais de Atendimento

- **Atendimento Telefônico / WhatsApp:** `[informar telefone ou link]`
- **E-mail de Suporte:** `[informar e-mail]`
- **Horário de Atendimento:** Segunda a Sexta das 08h00 às 18h00 / Sábados das 08h00 às 12h00
- **Portal de Chamados:** `[informar endereço]`
