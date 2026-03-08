# 🤖 Automação de Testes de Interface com Robot Framework

## 📌 Sobre o Projeto

Este repositório contém a implementação de testes automatizados de interface (UI) utilizando Robot Framework.

O objetivo deste projeto é validar funcionalidades da aplicação através de cenários automatizados escritos no formato BDD, garantindo qualidade e confiabilidade durante o fluxo de uso do sistema.

Além da automação dos testes, o projeto também conta com integração contínua utilizando GitHub Actions, permitindo que os testes sejam executados automaticamente a cada atualização no repositório.

---

## 🧰 Tecnologias Utilizadas

* **Robot Framework**
* **Python**
* **SeleniumLibrary**
* **GitHub Actions (CI/CD)**
* **Chrome WebDriver**

---

## 📂 Estrutura do Projeto

A estrutura do projeto foi organizada de forma a facilitar a manutenção e escalabilidade dos testes.

```
repositorio_1_robot
│
├── .github
│   └── workflows
│       └── robot-tests.yml        # Pipeline de execução no GitHub Actions
│
├── testes                         # Casos de teste automatizados
│   └── login.robot
    └── checkout.robot
│
├── resultados                     # Relatórios gerados após execução dos testes
│
├── README.md                      # Documentação do projeto
```

---

## 🧪 Estratégia de Testes

Os cenários foram desenvolvidos seguindo o formato BDD (Behavior Driven Development), utilizando a estrutura:

```
Given
When
Then
```

Esse formato facilita o entendimento dos testes por pessoas técnicas e não técnicas.

Exemplo de cenário automatizado:

```
Cenário: Login com sucesso

Given que o usuário acessa a página de login
When informa usuário e senha válidos
Then o sistema permite o acesso à aplicação
```

---

## ⚙️ Pré-requisitos

Antes de executar os testes é necessário possuir instalado:

* Python 3.9+
* Pip
* Google Chrome
* ChromeDriver compatível

---

## 🚀 Instalação do Projeto

Clone o repositório:

```bash
git clone https://github.com/Mourasjaqueline/repositorio_1_robot.git
```

Acesse a pasta do projeto:

```bash
cd repositorio_1_robot
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

---

## ▶️ Como Executar os Testes

Para executar todos os testes automatizados utilize:

```bash
robot -d resultados testes/
```

Após a execução serão gerados os relatórios dentro da pasta:

```
resultados
```

---

## 📊 Relatórios de Execução

Após a execução dos testes, o Robot Framework gera automaticamente os seguintes relatórios:

| Arquivo         | Descrição                             |
| --------------- | ------------------------------------- |
| **report.html** | Relatório resumido da execução        |
| **log.html**    | Log detalhado de cada passo executado |
| **output.xml**  | Arquivo com os resultados da execução |

Esses arquivos ficam disponíveis dentro da pasta:

```
resultados/
```

---

## 🔄 Integração Contínua (CI)

O projeto está integrado ao GitHub Actions.

A cada push ou pull request na branch principal, a pipeline executa automaticamente:

Instalação das dependências

Execução dos testes automatizados

Geração de evidências da execução

---

## 📦 Artefatos da Pipeline

Após a execução da pipeline no GitHub Actions, os relatórios de teste são disponibilizados como **artefatos**, permitindo o download das evidências de execução.

---

## 👩‍💻 Autora

**Jaqueline Moura**

