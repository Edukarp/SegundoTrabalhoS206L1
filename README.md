# Segundo Trabalho de S206 - L1
 
## Integrantes: 
- Eduardo Karpfenstein - GES - 77
- Inajaha Costa - GES - 318
 
## Para Execução
1. Abra o terminal no diretório desejado e digitar o comando:

```
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.0.1 \
-DgroupId=aula.inatel \
-DartifactId=aula_inatel
```

2. Para rodar o teste digite o seguinte comando no diretorio 'aula_inatel':

```
mvn test -Dtest=storeRunner
```

## Para Vizualizar o Relatório
1. O arquivo contendo o relatório estará em: 
"...\aula_inatel\target\karate-reports"

2. Agora basta executar o arquivo WEB chamado:
"trabalho.store.store"