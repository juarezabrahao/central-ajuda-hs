# Como adicionar um vídeo

## Recomendações para gravação

1. use uma base de demonstração sem dados reais;
2. grave em resolução 1920×1080;
3. aumente o ponteiro e mantenha a tela legível;
4. apresente objetivo, pré-requisitos, procedimento e conferência;
5. corte esperas e mantenha o vídeo curto;
6. não mostre senhas, certificados, tokens ou dados pessoais;
7. use título no padrão `HS | Módulo | Procedimento`.

## Inserir um link

```markdown
[Assistir ao tutorial no YouTube](https://www.youtube.com/watch?v=ID_DO_VIDEO)
```

## Incorporar o vídeo na página

Substitua `ID_DO_VIDEO`:

```html
<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden">
  <iframe
    src="https://www.youtube.com/embed/ID_DO_VIDEO"
    title="Tutorial do HS Automação Comercial"
    style="position:absolute;top:0;left:0;width:100%;height:100%"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
  </iframe>
</div>
```

## Texto que deve acompanhar o vídeo

```markdown
## Objetivo

Explique em uma frase o resultado do procedimento.

## Antes de começar

- Pré-requisito 1
- Pré-requisito 2

## Passo a passo

1. Primeiro passo.
2. Segundo passo.
3. Confira o resultado.

## Se algo der errado

Descreva a mensagem e a ação segura para o usuário.
```
