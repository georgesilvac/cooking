Documento de Visão
Histórico de Revisões
Data	Versão	Descrição	Autores
11/03/2026	0.1	Criação inicial do documento de visão do sistema	George Silva
11/03/2026	0.2	Estruturação completa do domínio e requisitos   George Silva
1. Objetivo do projeto

O objetivo deste projeto é desenvolver uma API backend estruturada para planejamento alimentar doméstico, permitindo que usuários gerenciem ingredientes disponíveis, registrem receitas, planejem refeições semanais e gerem listas de compras automaticamente.

O sistema busca resolver dificuldades comuns relacionadas à organização da alimentação doméstica, como a escolha de refeições diárias, o desperdício de alimentos e a falta de planejamento nas compras.

Além de atender a esse problema real, o projeto tem como objetivo principal servir como um laboratório de estudo de arquitetura backend moderna, explorando conceitos como:

APIs REST estruturadas
modelagem de domínio
autenticação e autorização
processamento assíncrono
ingestão de dados externos
integração com inteligência artificial
busca semântica baseada em embeddings
documentação de APIs
múltiplos clientes consumindo a mesma API

Inicialmente, o foco do projeto será a construção da API, sem dependência de um frontend específico.

2. Descrição do problema
Categoria	Descrição
Problema	Casais e famílias frequentemente enfrentam dificuldades para decidir quais refeições preparar diariamente, além de problemas relacionados ao controle de ingredientes disponíveis e ao planejamento de compras.
Afeta	Casais, famílias, pessoas que cozinham regularmente em casa e indivíduos que desejam organizar melhor sua alimentação.
Impacta	Gera perda de tempo na escolha de refeições, desperdício de alimentos esquecidos, compras duplicadas ou incompletas e discussões recorrentes sobre planejamento alimentar.
Solução	Um sistema que gerencie ingredientes disponíveis na casa, registre receitas, sugira pratos com base nos ingredientes existentes, permita o planejamento semanal de refeições e gere listas de compras automaticamente com auxílio de inteligência artificial.
3. Descrição dos usuários
Nome	Descrição	Responsabilidade
Usuário Doméstico	Pessoa que utiliza o sistema para organizar ingredientes, receitas e refeições do dia a dia.	Registrar ingredientes disponíveis, cadastrar receitas, planejar refeições e executar pratos.
Membro da Casa	Usuário convidado para participar de um grupo doméstico compartilhado.	Visualizar estoque, consultar receitas e participar do planejamento das refeições.
Administrador da Casa	Usuário responsável pela criação e gerenciamento de um grupo doméstico.	Gerenciar membros da casa, permissões e organização geral do ambiente doméstico.
Sistema de IA	Componente automatizado responsável por auxiliar na geração de receitas e sugestões.	Gerar sugestões de receitas, classificar conteúdos, analisar ingredientes disponíveis e gerar listas inteligentes de compras.
4. Descrição do ambiente dos usuários

Os usuários utilizarão o sistema principalmente através de aplicações cliente conectadas à API, podendo incluir:

aplicações web
aplicativos mobile
interfaces CLI
aplicações experimentais para estudo

O ambiente de uso típico envolve:

acesso à internet
dispositivos móveis ou computadores
múltiplos usuários compartilhando a mesma casa ou grupo doméstico

O sistema deve permitir que múltiplos clientes consumam a mesma API de forma consistente.

5. Principais necessidades dos usuários

Os usuários necessitam de ferramentas que permitam:

registrar ingredientes disponíveis em casa
acompanhar quantidades e validade dos ingredientes
cadastrar e consultar receitas
receber sugestões de receitas baseadas nos ingredientes disponíveis
planejar refeições da semana
gerar listas de compras automaticamente
registrar quando um prato foi preparado
evitar desperdício de alimentos
organizar melhor a alimentação doméstica
6. Alternativas concorrentes

Existem algumas aplicações e serviços que abordam parcialmente o problema, tais como:

Sistema	Características
Apps de receitas	Oferecem receitas, mas geralmente não integram controle de estoque doméstico.
Apps de lista de compras	Permitem registrar itens para comprar, mas não integram planejamento alimentar.
Apps de planejamento de dieta	Focados em nutrição e dietas, não em gestão de ingredientes domésticos.

A proposta deste sistema é integrar gestão de ingredientes, receitas e planejamento alimentar em uma única plataforma, com suporte adicional a IA e automação.

7. Visão geral do produto

O produto será uma API backend para gerenciamento de planejamento alimentar doméstico, capaz de:

gerenciar usuários e grupos domésticos
registrar ingredientes disponíveis
armazenar receitas e seus ingredientes
sugerir receitas baseadas nos ingredientes disponíveis
permitir planejamento semanal de refeições
gerar listas de compras automaticamente
registrar execução de receitas
integrar inteligência artificial para geração e análise de receitas
oferecer busca semântica por receitas

O sistema será projetado com arquitetura modular para facilitar extensões futuras, incluindo:

aplicativos mobile
interfaces web
integrações com serviços externos
assistentes baseados em IA
8. Requisitos Funcionais
Código	Nome	Descrição	Prioridade
RF01	Cadastro de usuários	O sistema deve permitir o registro de novos usuários.	Alta
RF02	Autenticação de usuários	O sistema deve permitir autenticação segura de usuários.	Alta
RF03	Gerenciamento de grupos domésticos	Usuários devem poder criar e participar de grupos domésticos.	Alta
RF04	Cadastro de ingredientes	O sistema deve permitir cadastrar ingredientes disponíveis no estoque doméstico.	Alta
RF05	Gerenciamento de estoque doméstico	O sistema deve permitir registrar quantidade e validade dos ingredientes.	Alta
RF06	Cadastro de receitas	Usuários devem poder registrar receitas com ingredientes e modo de preparo.	Alta
RF07	Consulta de receitas	O sistema deve permitir pesquisar e visualizar receitas.	Alta
RF08	Sugestão de receitas	O sistema deve sugerir receitas baseadas nos ingredientes disponíveis.	Média
RF09	Planejamento de refeições	O sistema deve permitir planejar refeições semanais.	Alta
RF10	Registro de preparo de receitas	O sistema deve permitir registrar quando uma receita foi preparada.	Média
RF11	Atualização automática do estoque	Ao preparar uma receita, os ingredientes devem ser atualizados no estoque.	Média
RF12	Geração de lista de compras	O sistema deve gerar automaticamente uma lista de compras baseada no planejamento semanal.	Alta
RF13	Importação de receitas externas	O sistema deve permitir ingestão de receitas de fontes externas.	Baixa
RF14	Busca semântica de receitas	O sistema deve permitir pesquisa semântica baseada em linguagem natural.	Média
RF15	Geração de receitas com IA	O sistema deve permitir geração de novas receitas baseadas em ingredientes disponíveis.	Baixa
9. Requisitos não-funcionais
Código	Nome	Descrição	Categoria	Classificação
RNF01	Usabilidade	A API deve possuir documentação clara e estruturada utilizando OpenAPI/Swagger.	Usabilidade	Obrigatório
RNF02	Escalabilidade	O sistema deve suportar múltiplos clientes consumindo a mesma API simultaneamente.	Performance	Importante
RNF03	Segurança	O sistema deve garantir autenticação segura e controle de acesso baseado em permissões.	Segurança	Obrigatório
RNF04	Manutenibilidade	O sistema deve seguir arquitetura modular para facilitar manutenção e evolução do código.	Manutenção	Obrigatório
RNF05	Observabilidade	O sistema deve permitir registro de logs e monitoramento de eventos importantes.	Operacional	Importante
RNF06	Processamento assíncrono	Operações pesadas devem ser processadas de forma assíncrona através de filas de tarefas.	Performance	Importante
RNF07	Extensibilidade	A arquitetura deve permitir integração futura com serviços externos e IA.	Arquitetura	Importante
10. Stack de Tecnologias
Categoria	Tecnologia	Descrição
Backend	Python	Linguagem principal para implementação da API e lógica de negócio.
Framework Backend	FastAPI ou Django	Framework para construção da API REST e organização da aplicação.
Banco de Dados	PostgreSQL	Banco de dados relacional para persistência das entidades do sistema.
ORM	SQLAlchemy / Django ORM	Camada de mapeamento objeto-relacional e gerenciamento de migrações.
Vector Database	pgvector / Weaviate	Armazenamento de embeddings para busca semântica e RAG.
Filas / Workers	Celery / Redis / RabbitMQ	Execução de tarefas assíncronas como geração de embeddings e ingestão de receitas.
IA / Embeddings	APIs de LLM	Geração de receitas, classificação e busca semântica.
Infraestrutura	Docker	Plataforma de conteinerização para isolar ambientes, padronizar o desenvolvimento e facilitar deploys.
Documentação da API	OpenAPI / Swagger	Documentação automática da API para facilitar integração com clientes.
Controle de Versão	Git	Gerenciamento do código fonte e versionamento do projeto.

