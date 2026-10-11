# Manual do Financeiro e Relatórios

Este manual foi elaborado para orientar gestores, administradores e operadores do setor financeiro no uso diário do **ERP Hiper Simples**. As instruções foram organizadas em linguagem direta, prática e sem termos técnicos de programação, detalhando exatamente **o caminho a seguir, onde clicar e como extrair cada relatório e dado do sistema**.

---

## 1. Visão Geral da Tela do Financeiro

### Como abrir a tela do Financeiro
Existem 3 formas rápidas de abrir o Financeiro na Retaguarda:

1. **Pelo Menu Superior:** Clique no menu **Financeiro** no topo da tela inicial.
2. **Pelo Ícone de Atalho:** Clique no botão com o ícone de pasta/cifrão financeiro na barra de atalhos.
3. **Pelo Teclado:** Pressione o atalho global **`CTRL+W`** a qualquer momento na tela inicial da Retaguarda.

### Entendendo as Abas da Barra Lateral Esquerda
Ao abrir o Financeiro, a tela é dividida em seções práticas na coluna esquerda:

- **Início:** Painel com indicadores, gráficos e resumo do dia.
- **Receber:** Contas a receber de clientes, notas a prazo e convênios.
- **Pagar:** Contas a pagar de fornecedores, despesas fixas, compras e tributos.
- **Caixa:** Contas correntes bancárias (Itaú, Bradesco, etc.), caixas físicos internos, dinheiro e transferências.
- **Pessoas:** Consulta de lançamentos agrupados por cliente ou fornecedor específico.

---

## 2. Contas a Pagar: Boletos, Despesas e Lançador

O módulo de **Contas a Pagar** concentra todas as obrigações da empresa: boletos de fornecedores de mercadorias, despesas de água, luz, internet, aluguel, folha de pagamento, tributos e manutenções.

### 2.1 Identificação de quem lançou a conta (Operador Lançador)
Para acabar de vez com anotações manuais de caneta nos relatórios impressos, o sistema registra automaticamente quem foi o operador responsável:
- **Na importação de XML de compra:** o usuário logado que conferiu e gravou a entrada é gravado como lançador da conta.
- **No lançamento manual:** o usuário logado é registrado na hora.
- **No relatório impresso:** o nome do operador aparece em destaque no cabeçalho de cada fornecedor:  
  `Lançador: [Nome do Operador]` (ex.: *Lançador: CARLOS*, *Lançador: MARIANA*).

### 2.2 Razão Social do Fornecedor e Parcelas (-P1, -P2, -P3)
- **Razão Social Oficial:** O relatório prioriza a Razão Social da nota fiscal de compra. Se a Razão Social não estiver preenchida no cadastro, o sistema usa o Nome Fantasia automaticamente. Não é necessário preencher o mesmo nome duas vezes.
- **Identificação das Parcelas (`Doc / Parc.`):** O documento traz o número da nota com o sufixo da parcela:
  - `NF 15820-P1` = 1ª parcela da nota 15820;
  - `NF 15820-P2` = 2ª parcela da nota 15820;
  - `NF 15820-P3` = 3ª parcela da nota 15820.

---

## 3. Passo a Passo: Onde Clicar para Extrair o Relatório de Contas a Pagar

Siga exatamente o roteiro abaixo para emitir e imprimir o relatório de contas a pagar com Razão Social, Lançador e Parcelas:

### Passo 1: Acessar a aba de Pagamentos
1. Abra o Financeiro pressionando **`CTRL+W`** (ou menu **Financeiro**).
2. Na barra lateral esquerda, clique no botão **Pagar** (o texto do botão fica em destaque amarelo e a tela entra no modo de pagamentos).

### Passo 2: Clicar no botão de impressão
3. Na barra de botões no topo da tela, clique no botão **Imprimir** (botão com ícone de impressora).
4. Ao clicar, abrirá um menu suspenso:
   - Passe o mouse sobre a opção **Contas por...**
   - No submenu que se abre ao lado, clique em **Data**.  
   *(Se desejar ver receitas e despesas juntas, clique em **Receitas e despesas por... > Data**).*

```
[ Menu do Financeiro ]
   └── [ Aba "Pagar" ]
         └── Botão [ Imprimir ]
               └── [ Contas por... ]
                     └── Clique em: [ Data ]
```

### Passo 3: Definir o período de vencimento
5. Na janela de filtro de datas que se abrir:
   - Informe a **Data Inicial** (ex.: `01/10/2026`);
   - Informe a **Data Final** (ex.: `31/10/2026`);
   - Clique no botão **OK** (ou pressione **ENTER**).

### Passo 4: Conferir, Imprimir ou Salvar em PDF
6. O relatório é exibido na tela no visualizador **FastReport**:
   - **No topo de cada grupo:** Confira o nome do fornecedor pela **Razão Social** e o **Lançador** responsável;
   - **Nas colunas:** Confira a coluna **Doc / Parc.** com o número e parcela (`-P1`, `-P2`), a data de vencimento e o valor;
   - **Para Imprimir:** Clique no ícone de **Impressora** no canto superior esquerdo da tela de visualização, escolha a impressora e confirme;
   - **Para Salvar em PDF:** Clique no ícone de **PDF** (ou no disquete de salvar), selecione a pasta do seu computador onde quer salvar o arquivo e clique em **Salvar**.

---

## 4. Extrato Bancário Real: Saldo Anterior e Saldo Linha a Linha

O **Extrato de Conta Corrente / Bancária** foi projetado para conciliar centavo por centavo com o aplicativo do seu banco (Itaú, Bradesco, Caixa Econômica, Banco do Brasil, etc.) ou conferir caixas físicos internos.

### 4.1 O que o Extrato apresenta
- **Saldo Anterior ao Período:** Quanto havia na conta antes do primeiro segundo da data inicial;
- **Lançamentos Cronológicos:** Data, Número do Documento, Histórico/Descrição, Entrada (Crédito), Saída (Débito);
- **Saldo Acumulado Linha a Linha:** Recalculado imediatamente após cada lançamento;
- **Totais e Saldo Final Atualizado:** No rodapé, apresenta Total de Entradas, Total de Saídas e o **Saldo Atualizado / Final**.

---

## 5. Passo a Passo: Onde Clicar para Extrair o Extrato Bancário

Siga este roteiro para emitir o extrato de qualquer conta bancária ou interna:

### Passo 1: Acessar a aba de Caixa e Bancos
1. Abra o Financeiro pressionando **`CTRL+W`** (ou menu **Financeiro**).
2. Na barra lateral esquerda, clique no botão **Caixa** (o texto do botão fica amarelo e a tela mostra as contas correntes e movimentos).

### Passo 2: Clicar no menu de Relatórios do Caixa
3. Na barra de botões superior, localize e clique no botão **Relatórios** (botão com ícone de relatório/impressora).
4. No menu que se abre, clique na opção:
   - **Extrato de Conta Corrente / Bancária**.

```
[ Menu do Financeiro ]
   └── [ Aba "Caixa" ]
         └── Botão [ Relatórios ]
               └── Clique em: [ Extrato de Conta Corrente / Bancária ]
```

### Passo 3: Selecionar a Conta e as Datas
5. Na janela de filtro que surge na tela:
   - **Data Inicial (DI):** Digite a data inicial da consulta (exemplo: `01/10/2026`);
   - **Data Final (DF):** Digite a data final da consulta (exemplo: `10/10/2026`);
   - **Conta Corrente:** Clique na caixinha de seleção e escolha:
     - Para o Banco Itaú: selecione `01 - BANCO ITAU S/A`;
     - Para o cofre: selecione `CAIXA GERAL`;
     - Para uma reserva: selecione `RESERVA - 13º SALÁRIO`, `RESERVA - ALUGUEL`, etc.;
     - Ou deixe `<Todas as Contas>` para emitir o extrato consolidado de todas as contas.
6. Clique no botão **OK** (ou pressione a tecla **ENTER**).

### Passo 4: Como conciliar o Extrato com o Banco
7. Na visualização do relatório:
   - Confira o valor de **SALDO ANTERIOR AO PERÍODO** logo abaixo do nome da conta;
   - Compare cada linha de entrada e saída com o extrato do aplicativo do seu banco;
   - Olhe o **SALDO ATUALIZADO / FINAL** no rodapé: se for exatamente o mesmo saldo do aplicativo do banco, sua conciliação está perfeita e encerrada.
   - Use o ícone de **Impressora** para imprimir ou o ícone de **PDF** para exportar e arquivar.

---

## 6. Caixa Geral e Sistema de Reservas (Provisões de Despesas)

Muitas empresas faturam bem diariamente, mas chegam no final do mês ou no final do ano com dificuldades para pagar o **13º salário**, o **aluguel** ou os **impostos**, porque todo o dinheiro que entra no caixa acaba sendo gasto no dia a dia.

Para resolver esse problema, o ERP Hiper Simples permite organizar o fluxo financeiro separando o dinheiro em **Contas de Reserva**.

### 6.1 Como funciona o fluxo do dinheiro na empresa
```
┌──────────────────────────────────────────────┐
│        CAIXAS PDV (1º ao 4º Caixa)           │
└──────────────────────┬───────────────────────┘
                       │ (Sangrias e fechamentos em dinheiro físico)
                       ▼
┌──────────────────────────────────────────────┐
│           CAIXA GERAL (COFRE)                │
└──────────────────────┬───────────────────────┘
                       │
                       ├─► [ RESERVA - ALUGUEL ]
                       ├─► [ RESERVA - SALÁRIOS ]
                       ├─► [ RESERVA - 13º SALÁRIO ]
                       ├─► [ RESERVA - DESPESAS GERAIS ]
                       └─► [ RESERVA - IPVA / MANUTENÇÃO ]
```

1. **Caixas PDV (Frente de Loja):** Sangrias e fechamentos em dinheiro descem para o **Caixa Geral (Cofre)**. Cartões e PIX caem diretamente nas contas bancárias.
2. **Caixa Geral (Cofre Central):** Representa o cofre físico da sua loja.
3. **Contas de Reserva:** Contas internas onde você guarda antecipadamente quantias para compromissos futuros.

---

## 7. Passo a Passo: Onde Clicar para Cadastrar as Contas de Reserva

Você só precisa fazer este cadastro uma única vez no sistema:

### Passo 1: Abrir o cadastro de Contas Correntes
1. Na tela inicial da Retaguarda, clique no menu superior:  
   **Cadastros > Financeiro > Contas Correntes**  
   *(Alternativa: dentro do Financeiro, na aba **Caixa**, clique em **Ferramentas > Contas`).*

### Passo 2: Incluir uma nova conta de reserva
2. Na janela de contas, clique no botão **Novo** (ou pressione a tecla de atalho **`F2`**).
3. Preencha os campos da seguinte forma:
   - **Descrição:** Digite o nome da provisão. Exemplos recomendados:
     - `RESERVA - ALUGUEL`
     - `RESERVA - SALÁRIOS`
     - `RESERVA - 13º SALÁRIO`
     - `RESERVA - DESPESAS GERAIS`
     - `RESERVA - IPVA / IMPOSTOS`
     - `RESERVA - MANUTENÇÃO`
   - **Tipo de Conta:** Selecione a opção **Caixa / Interno**.
   - **Saldo Inicial:** Deixe `0,00` (ou informe o valor caso já exista dinheiro guardado).
4. Clique no botão **Salvar** (ou pressione a tecla **`F10`**).
5. Repita o procedimento para as demais reservas que desejar criar.

---

## 8. Passo a Passo: Onde Clicar para Transferir do Caixa Geral para a Reserva

Toda semana ou todo mês, ao retirar dinheiro do cofre físico para guardar para uma despesa futura:

### Passo 1: Abrir a tela de Transferência
1. Abra o Financeiro pressionando **`CTRL+W`**.
2. Na barra lateral esquerda, clique em **Caixa**.
3. Na barra de botões superior, clique no botão **Ferramentas** (ícone de engrenagem/ferramentas).
4. No menu que se abre, clique em **Transferência entre Contas**.

```
[ Menu do Financeiro ]
   └── [ Aba "Caixa" ]
         └── Botão [ Ferramentas ]
               └── Clique em: [ Transferência entre Contas ]
```

### Passo 2: Preencher a Conta de Origem (de onde sai o dinheiro)
5. Na primeira tela (aba **Origem**):
   - **Conta de Origem:** Clique na lista e selecione `CAIXA GERAL` (ou a conta bancária de onde o dinheiro está saindo);
   - **Valor:** Digite o valor exato a ser guardado (exemplo: `500,00`);
   - **Forma de Pagamento:** Selecione `DINHEIRO` (ou Transferência Bancária);
   - **Descrição / Histórico:** Digite o motivo (exemplo: *Provisão semanal de 13º salário - semana 41*);
   - **Data:** Confirme a data da operação;
   - Clique no botão **Próximo >** (no canto inferior direito).

### Passo 3: Escolher a Conta de Destino (para onde vai o dinheiro)
6. Na segunda tela (aba **Destino**):
   - **Conta de Destino:** Selecione a conta de reserva correspondente (exemplo: `RESERVA - 13º SALÁRIO`);
   - Clique no botão **Finalizar**.

!!! success "Operação Concluída com Sucesso"
    O sistema retira o valor do Caixa Geral (lançando um débito/saída no cofre) e credita o valor na Conta de Reserva (lançando um crédito/entrada). Tudo fica registrado com data, hora e usuário responsável.

---

## 9. Como Consultar o Saldo Guardado em Cada Reserva

Para saber a qualquer momento quanto dinheiro está acumulado em cada reserva:

1. Abra o **Financeiro** (`CTRL+W`);
2. Clique na aba **Caixa**;
3. Clique no botão **Relatórios > Extrato de Conta Corrente / Bancária**;
4. No campo **Conta Corrente**, selecione a reserva que deseja consultar (ex.: `RESERVA - 13º SALÁRIO`);
5. Defina o período desde o início do ano até a data de hoje;
6. Clique em **OK**.  
   *O extrato listará todas as transferências que foram guardadas e mostrará no rodapé o **Saldo Atualizado** exato disponível para uso.*

---

## 10. Como Acessar Qualquer Relatório pela Central de Relatórios [CTRL+R]

Para facilitar o dia a dia sem precisar navegar por vários menus, utilize a **Central de Relatórios**:

1. Na tela principal da Retaguarda, pressione o atalho **`CTRL+R`** no teclado.
2. Na janela que se abre:
   - Digite no campo de busca palavras como `contas`, `caixa`, `extrato`, `vencimento`, `promissoria`, `fechamento`.
   - A lista filtra instantaneamente todos os relatórios correspondentes.
3. Utilize as setas do teclado ($\uparrow$ e $\downarrow$) para posicionar no relatório desejado.
4. Pressione a tecla **ENTER** ou clique no botão **Abrir (F8)** para iniciar o relatório imediatamente.

---

## 11. Resumo Rápido de Atalhos e Caminhos

| O que você deseja fazer | Onde Clicar / Atalho |
|---|---|
| **Abrir o Financeiro** | Menu *Financeiro* ou atalho **`CTRL+W`** |
| **Relatório de Contas a Pagar** | Financeiro > Aba *Pagar* > Botão *Imprimir* > *Contas por... > Data* |
| **Extrato Bancário Analítico** | Financeiro > Aba *Caixa* > Botão *Relatórios* > *Extrato de Conta Corrente / Bancária* |
| **Cadastrar Contas de Reserva** | Menu *Cadastros > Financeiro > Contas Correntes* > Botão *Novo (F2)* |
| **Transferir Dinheiro para Reserva** | Financeiro > Aba *Caixa* > Botão *Ferramentas* > *Transferência entre Contas* |
| **Pesquisa Rápida de Relatórios** | Pressione **`CTRL+R`** em qualquer lugar da tela inicial |
