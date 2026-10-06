# CENTRAL DE AJUDA DO ERP HIPER SIMPLES

Documentação pública criada com [MkDocs](https://www.mkdocs.org/) e o tema Material.

## Visualizar no computador

No PowerShell:

```powershell
cd C:\Clientes\Rubao\central-ajuda-hs
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
mkdocs serve
```

Acesse `http://127.0.0.1:8000`.

## Gerar o site

```powershell
mkdocs build --strict
```

Os arquivos prontos para hospedagem serão criados em `site/`.

## Publicação automática

O fluxo em `.github/workflows/deploy-docs.yml` publica o site no GitHub Pages a cada envio para a branch `main`.

Antes da primeira publicação:

1. crie um repositório no GitHub;
2. envie o conteúdo desta pasta;
3. em **Settings > Pages**, escolha **GitHub Actions**;
4. substitua `SEU-USUARIO` em `mkdocs.yml`;
5. envie uma alteração para a branch `main`.

## Padrão editorial

- escreva para o operador, evitando termos de programação;
- use um procedimento por página;
- informe o caminho de menu e os pré-requisitos;
- use imagens sem dados reais de clientes;
- vídeos devem ter título, objetivo e duração;
- nunca publique senhas, chaves, certificados ou dados fiscais reais.
