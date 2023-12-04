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

## Parte Teorica

### 1. Quantas suítes de testes você desenvolveu?
Foi desenvolvida apenas 1 suite de teste.

### 2. Os testes desenvolvidos são manuais ou automatizados?
Os testes desenvolvidos tratam-se de teste automatizados.

### 3. Onde os testes se localizam na pirâmide apresentada?
Se localizam no centro da pirâmide, na parte de serviços.

### 4. Os testes desenvolvidos são funcionais ou não-funcionais?
Os testes desenvolvidos são testes funcionais.

### 5. Alguns dos testes desenvolvidos são testes Fim-a-Fim(End-To-End)?
Todos os testes desenvolvidos são Fim-a-Fim(End-To-End).

### 6. que se deve fazer para que os testes desenvolvidos funcionem em modo regressão?
Eles já podem ser utilizados em modo de regressão, podemos configurar o CI/CD para sempre que tiver alguma alteração no codigo (um pull, commit, push) os teste rodarem novamente para validar se a alteração quebrou alguma parte do código.

