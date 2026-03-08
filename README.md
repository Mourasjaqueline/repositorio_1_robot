# 🤖 Automação de Testes de Interface com Robot Framework

## 📌 Sobre o Projeto

Este repositório contém a implementação de testes automatizados de interface utilizando **Robot Framework**.

O objetivo da automação é validar funcionalidades críticas da aplicação através de cenários automatizados escritos no formato **BDD**, garantindo qualidade e confiabilidade durante a navegação do usuário.

O projeto também conta com **integração contínua utilizando GitHub Actions**, permitindo que os testes sejam executados automaticamente a cada atualização no repositório.

# URL: https://www.saucedemo.com/

---

## 🧪 Estratégia de Testes

Os cenários foram desenvolvidos seguindo o formato **BDD (Behavior Driven Development)**, utilizando a estrutura:

```
Given
When
Then
```

Foram implementados cenários que validam:

* Fluxo de autenticação do usuário
* Fluxo de navegação na aplicação
* Fluxo completo de checkout
* Validação de sucesso na finalização da compra

Essa abordagem garante que os principais fluxos da aplicação sejam continuamente validados.

---

## 🛠️ Tecnologias Utilizadas

* **Robot Framework**
* **Python**
* **SeleniumLibrary**
* **Chrome WebDriver**
* **GitHub Actions (CI/CD)**

---

## 📂 Estrutura do Projeto

```
repositorio_1_robot
│
├── .github
│   └── workflows
│       └── robot-tests.yml
│
├── testes
│   ├── login.robot
│   └── checkout.robot
│
├── resultados
│
└── README.md
```

---

## ⚙️ Pré-requisitos

Para executar o projeto é necessário possuir instalado:

* Python 3.9+
* Pip
* Google Chrome
* ChromeDriver compatível

---

## 🚀 Como Executar o Projeto

Clone o repositório:

```bash
git clone https://github.com/Mourasjaqueline/repositorio_1_robot.git
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

Execute os testes:

```bash
robot -d resultados testes/
```

---

## 🔄 Integração Contínua (CI)

O projeto possui pipeline configurada no **GitHub Actions**.

A cada **push** ou **pull request** na branch principal, a pipeline executa automaticamente:

1. Instalação das dependências
2. Execução dos testes Robot Framework
3. Geração dos relatórios de execução

---

## 📊 Evidências da Execução

Após a execução dos testes são gerados automaticamente os relatórios:

* **report.html**
* **log.html**
* **output.xml**

Esses relatórios ficam disponíveis na pasta:

```
resultados/
```

Na execução via pipeline, os relatórios são disponibilizados como **Artifacts** no GitHub Actions.

---

## 👩‍💻 Autora

**Jaqueline Moura**
