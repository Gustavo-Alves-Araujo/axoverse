## Como contribuir para o projeto

1. Clone

```
git clone git@github.com:Gustavo-Alves-Araujo/axoverse.git
```

2. Se ja tiver clonado esse repositório, não esqueça do `pull`, antes de fazer qualquer alteração

```
git pull origin main --rebase
```

2. Crie um ambiente de trabalho (branch)

```
git checkout -b nome_do_ambiente
```

3. Faça as alterações necessárias nesse ambiente

4. Salve as alterações quando estiver tudo ok

```
git status # serve para ver os arquivos modificados
git diff # serve para ver as alterações feitas
git add . # serve para adicionar todos os arquivos para serem comitados
git commit -m "mensagem do commit" # serve para salvar as alterações
```

5. Faça o upload para o ambiente de trabalho na nuvem

```
# nome_do_ambiente = nome do ambiente de trabalho criado

git push origin nome_do_ambiente
```

6. Acesse o repositorio no github

7. Clique em "Create Pull Request"

8. Adicione os revisores e o texto

9. Clique em criar

10. Seja feliz

