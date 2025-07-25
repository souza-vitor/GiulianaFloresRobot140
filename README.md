# GiulianaFloresRobot140

Este projeto automatiza testes de interface web para o site Giuliana Flores utilizando Robot Framework e SeleniumLibrary. O objetivo é validar funcionalidades como busca de produtos, adição ao carrinho e navegação nas principais páginas do site.

## Estrutura do Projeto
- `pages/`: Contém arquivos `.robot` com as definições das páginas e seus elementos.
- `tests/web/po/`: Testes automatizados utilizando o padrão Page Object.
- `tests/web/simples/`: Testes automatizados simples, sem Page Object.

## Ferramentas Utilizadas
- **Robot Framework**: Framework para automação de testes.
- **SeleniumLibrary**: Biblioteca para automação de browsers via Selenium.
- **Python**: Linguagem base para execução dos testes.

## Como rodar localmente

1. **Instale o Python** (recomendado 3.8+).
2. **Instale o Robot Framework e SeleniumLibrary**:
   ```powershell
   pip install robotframework seleniumlibrary
   ```
3. **Execute os testes**:
   - Para rodar todos os testes:
     ```powershell
     robot tests/web/
     ```
   - Para rodar um teste específico:
     ```powershell
     robot tests/web/simples/consultar_produto.robot
     ```

## Observações
- Certifique-se de que o driver do navegador (ex: ChromeDriver) está instalado e disponível no PATH.
- Os resultados dos testes serão exibidos no terminal e salvos em arquivos de log e report na pasta de execução.