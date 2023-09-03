# StoreCo

A StoreCo é um sistema de e-commerce online desenvolvido em Elixir, com o auxílio do framework Phoenix.
Este sistema, quando pronto, deve ser capaz de realizar/gerar:
1. Cadastro de Usuários: Permita que os usuários se cadastrem, façam login e gerenciem suas contas.
2. Listagem de Produtos: Exiba uma lista de produtos disponíveis para compra, com informações como nome, preço e imagem.
3. Detalhes do Produto: Crie páginas de detalhes para cada produto, mostrando informações mais detalhadas e a possibilidade de adicionar ao carrinho.
4. Carrinho de Compras: Implemente um carrinho de compras onde os usuários possam adicionar produtos, ajustar quantidades e visualizar o total.
5. Finalização da Compra: Permita que os usuários finalizem a compra, fornecendo informações de envio e pagamento.
6. Histórico de Pedidos: Os usuários devem poder visualizar seus pedidos anteriores e detalhes de cada compra.
7. Pesquisa e Filtros: Implemente um sistema de pesquisa para encontrar produtos e filtros para refinar os resultados.

## Setup do projeto

Para rodar o projeto em sua máquina, execute o comando `docker-compose up -d`. Dessa maneira, você terá acesso ao banco de dados **postgres** local sem a necessidade de tê-lo instalado em sua máquina. 
Não se esqueça, também, de sempre manter as dependências do projeto atualizadas com `mix deps.get` para evitar erros de execução.

