# Como editar e publicar a central

Os textos da central ficam em arquivos Markdown (`.md`). Eles podem ser editados no Cursor, Visual Studio Code ou até no Bloco de Notas.

## Onde estão os arquivos

Pasta principal:

```text
C:\Clientes\Rubao\central-ajuda-hs
```

Conteúdo:

```text
central-ajuda-hs
├── mkdocs.yml             # nome, tema e menu
├── requirements.txt       # dependências
├── iniciar-ajuda.bat      # inicia a visualização local
└── docs                   # páginas da central
    ├── index.md
    ├── retaguarda
    ├── nfe
    ├── pdv
    ├── balcao
    ├── mdfe
    ├── fiscal
    └── videos
```

## Arquivos de lote prontos

Na pasta principal existem atalhos que executam todo o processo:

1. `01-instalar-central.bat` — instala o ambiente necessário;
2. `02-visualizar-central.bat` — abre a central no navegador;
3. `03-validar-central.bat` — verifica o site antes da publicação;
4. `04-primeira-publicacao.bat` — configura e envia a primeira versão ao GitHub;
5. `05-publicar-atualizacao.bat` — publica as próximas alterações;
6. `06-links-da-publicacao.bat` — abre configuração, andamento e site publicado;
7. `07-republicar-site.bat` — solicita nova publicação após ativar o Pages.

Execute cada arquivo com dois cliques. A primeira publicação pode abrir o navegador para confirmar sua conta do GitHub.

## Editar uma página existente

1. abra a pasta `C:\Clientes\Rubao\central-ajuda-hs` no Cursor;
2. expanda a pasta `docs`;
3. abra o arquivo `.md` desejado;
4. altere o texto;
5. salve com **Ctrl+S**;
6. mantenha `iniciar-ajuda.bat` aberto;
7. atualize o navegador para conferir.

O MkDocs normalmente detecta a alteração e atualiza a página automaticamente.

## Formatação básica

```markdown
# Título da página

## Título da seção

Texto normal.

- Item de lista
- Outro item

1. Primeiro passo
2. Segundo passo

[Texto do link](https://exemplo.com)

**Texto em destaque**
```

## Criar uma página

1. crie o arquivo dentro da seção correta, por exemplo:

   ```text
   docs\pdv\novo-tutorial.md
   ```

2. escreva o conteúdo;
3. abra `mkdocs.yml`;
4. adicione a página ao menu `nav`:

   ```yaml
   - PDV:
       - Operação do caixa: pdv/index.md
       - Novo tutorial: pdv/novo-tutorial.md
   ```

5. salve e confira no navegador.

Use nomes de arquivo sem espaço e sem acentos, por exemplo `emitir-nfe.md`.

## Adicionar vídeo do YouTube

Use um link simples:

```markdown
[Assistir ao vídeo](https://www.youtube.com/watch?v=ID_DO_VIDEO)
```

Para mostrar o vídeo dentro da página, consulte [Como adicionar um vídeo](../videos/como-publicar.md).

## Conferir antes de publicar

No Prompt de Comando:

```cmd
cd /d C:\Clientes\Rubao\central-ajuda-hs
.venv\Scripts\python.exe -m mkdocs build --strict
```

Se aparecer `Documentation built`, o site foi gerado corretamente.

## Como o site fica online

O MkDocs gera um site estático. Ele pode ser hospedado no GitHub Pages, servidor próprio, hospedagem web ou intranet.

Este projeto já possui publicação automática preparada para **GitHub Pages**.

### Primeira publicação no GitHub

#### Etapa 1 — Criar uma conta

Se ainda não tiver conta:

1. acesse [github.com](https://github.com/);
2. clique em **Sign up**;
3. informe e-mail, senha e nome de usuário;
4. confirme o e-mail recebido.

O nome de usuário fará parte do endereço da central. Para descobri-lo depois, clique na sua foto no canto superior direito. Ele aparece abaixo do seu nome.

#### Etapa 2 — Criar o repositório

1. entre na sua conta do GitHub;
2. acesse diretamente [github.com/new](https://github.com/new);
3. em **Repository name**, digite `central-ajuda-hs`;
4. em **Description**, digite `Central de ajuda do HS Automação Comercial`;
5. marque **Public**;
6. deixe desmarcadas as opções de criar README, `.gitignore` e licença, pois esses arquivos já existem;
7. clique em **Create repository**.

!!! note
    Não use o nome `seu-usuario.github.io` mostrado em alguns tutoriais. Para este projeto, use apenas `central-ajuda-hs`.

O repositório desta central é:

```text
https://github.com/juarezabrahao/central-ajuda-hs
```

#### Etapa 3 — Informar o endereço no MkDocs

O arquivo `mkdocs.yml` desta central já está configurado assim:

```yaml
site_url: https://juarezabrahao.github.io/central-ajuda-hs/
```

#### Etapa 4 — Enviar os arquivos

Execute com dois cliques:

```text
04-primeira-publicacao.bat
```

O arquivo valida o site, configura o Git e envia tudo automaticamente.

Se preferir fazer manualmente, abra o **Prompt de Comando** e execute:

```cmd
cd /d C:\Clientes\Rubao\central-ajuda-hs
git init
git add .
git commit -m "Cria central de ajuda"
git branch -M main
git remote add origin https://github.com/juarezabrahao/central-ajuda-hs.git
git push -u origin main
```

Na primeira vez, uma janela do navegador poderá pedir autorização. Entre na conta e confirme.

!!! warning "Não envie arquivos gerados"
    As pastas `.venv` e `site` não devem ser enviadas. O arquivo `.gitignore` do projeto já impede isso quando os comandos acima são usados.

#### Etapa 5 — Ativar o GitHub Pages

1. abra o repositório `central-ajuda-hs` no GitHub;
2. clique em **Settings** na barra superior do repositório;
3. no menu esquerdo, clique em **Pages**;
4. em **Build and deployment**, localize **Source**;
5. mantenha **Deploy from a branch**;
6. em **Branch**, escolha **gh-pages**;
7. ao lado, escolha **/(root)**;
8. clique em **Save**;
9. clique na aba **Actions** do repositório;
10. aguarde a publicação aparecer com o símbolo verde de sucesso.

!!! warning "Não selecione main ou docs"
    A branch `main` contém os textos Markdown. A branch `gh-pages` contém o site pronto, com menu, pesquisa e tema visual.

Se a aba **Settings** não aparecer, confirme se você está dentro do seu repositório e se a conta conectada é a proprietária.

#### Etapa 6 — Abrir a central publicada

O endereço público será:

```text
https://juarezabrahao.github.io/central-ajuda-hs/
```

Na primeira publicação, o endereço pode levar alguns minutos para começar a funcionar.

### Atualizações seguintes

Depois da configuração inicial:

1. edite os arquivos Markdown;
2. confira localmente;
3. execute `05-publicar-atualizacao.bat`;
4. informe uma descrição curta da alteração;
5. aguarde a confirmação de que a atualização foi enviada.

Se preferir usar o Prompt de Comando:

```cmd
git add .
git commit -m "Atualiza os tutoriais"
git push
```

O GitHub recompila e publica automaticamente.

## Domínio próprio

Também é possível usar um endereço como:

```text
ajuda.suaempresa.com.br
```

Para isso, configure o domínio no GitHub Pages e crie o apontamento DNS solicitado pelo serviço.

!!! warning "Repositório público"
    No GitHub Pages gratuito, normalmente o conteúdo e o repositório ficam públicos. Publique somente manuais operacionais, sem senhas, certificados, dados de clientes ou documentação técnica interna.
