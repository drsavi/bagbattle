# bag-battle
Projeto web contendo uma batalha de Bagmons utilizando a arte do (@bagilustrador) web realizado com ruby on rails (v.2.6.10), autenticação utilizando a gem devise, seed dos bagmons, visualização da lista de bagmons e detalhes dos mesmos.

## *Listar todos os Bagmons*

![Alt text](/public/readme/tela-bagmons.png?raw=true "Listar todos os Bagmons")

## *Detalhe Bagmon*

![Alt text](/public/readme/tela-detalhe-bagmon.png?raw=true "Detalhe Bagmon")

## *Inicio Batalha*

![Alt text](/public/readme/tela-inicio-batalha.png?raw=true "Inicio Batalha")

## *Inicio Batalha Escolhendo Inimigo*

![Alt text](/public/readme/tela-inicio-batalha-escolha-inimigo.png?raw=true "Inicio Batalha Escolhendo Inimigo")

## *Batalhando*

![Alt text](/public/readme/tela-batalhando.png?raw=true "Batalhando")

## *Login*

![Alt text](/public/readme/tela-login.png?raw=true "Login")

## *SignUp*

![Alt text](/public/readme/tela-signup.png?raw=true "SignUp")

## *Forgot Password*

![Alt text](/public/readme/tela-forgot-password.png?raw=true "Forgot Password")

# VAGRANT

## Links uteis:

### DOWNLOAD VIRTUALBOX
https://www.virtualbox.org/wiki/Downloads

### DOWNLOAD VAGRANT
https://releases.hashicorp.com/vagrant/2.3.2/vagrant_2.3.2_windows_i686.msi


## Verificar versão do vagrant
```
vagrant --version
```

## Instalação plugin do vagrant
```
Vagrant plugin install vagrant-vbguest
```

## Criação Vagrantfile
```
vagrant init GuiDev/Ubuntu-Rails5x --box-version 1.0.0
```

## Verificar Vagrantfile e editar da seguinte forma
```
Vagrant.configure("2") do |config|
 config.vm.box = "GuiDev/Ubuntu-Rails5x"
 config.vm.box_version = "1.0.0"
 config.vm.network :forwarded_port, guest: 3000, host: 3000
 config.vm.network :forwarded_port, guest: 5432, host: 5432
 config.vm.provider "virtualbox" do |vb|
 vb.gui = false
 vb.memory = "1024"
 end
end
```

## Iniciar Vagrant
```
vagrant up
```

## Para pausar a VirtualBox
```
vagrant suspend
```

## Para parar a VirtualBox
```
vagrant halt
```

## Estabelecer uma sessão SSH na VirtualBox em execução para fornecer acesso ao shell
```
vagrant ssh
```

# DOS COMANDOS RUBY

## verificar versão
```
Ruby -v
```

## Instalar versão
```
gem install rails -v 5.2.8
```

## Verificar versão padrão do Ruby utilizando o gerenciador de versões do Ruby (RVM)
```
rvm list
```

## Verificar lista de versões disponíveis para instalação
```
rvm list known
```

## Instalar versão específica do Ruby
```
rvm install 2.3
```

## Colocar como padrão a versão específica do Ruby
```
rvm use 2.3
```

## Instalar de gem (pacotes)
```
gem install {nome do pacote. Ex: pry}
```

# COMANDOS UTILIZADOS NO RUBY ON RAILS

# Verificar versão do Rails
```
Rails -v 
```

## Criação de novo projeto Rails
```
rails new {nome do projeto}
```

## Rodar projeto
```
rails server -> rails s -b 0.0.0.0
```

## Crição de Scaffolding, criando um conjunto de arquivos gerados automaticamente que formam a estrutura básica de um projeto Rails.
```
rails generate scaffold <Model> <campo:tipo> <campo:tipo> …
```

## Criação de Controller
```
rails generate controller {nome da controller}
```

## Deletar Controller
```
rails destroy controller {nome}
```

## Subir aplicação e configurar por tipo de ambiente
```
RAILS_ENV=production rails s -b 0.0.0.0
rails s -b 0.0.0.0 -e production
```

## Acesasr o console do banco de dados
```
rails dbconsole
```

## Criar o banco de dados 
```
rails db:create
```

## Excluir o banco de dados
```
rails db:drop
```

## Rodar migrations 
```
rails db:migrate
```

##  Mostrar quais migrations foram executadas no banco e quais não foram 
```
rails db:migrate:status
```

## Rodar os seeds do banco de dados
```
rails db:seed
```

## Desfazer o último arquivo de migration
```
rails db:rollback
```

## Instalando o devise

No arquivo Gemfile, adicionar: gem 'devise'

### 0 - Instalação: 
```
bundle install
```

para instalar as dependências: 
rails generate devise:install

### 1 - Em config/environments/development.rb adicionar a seguinte configuração:

    config.action_mailer.default_url_options = {host: 'localhost', port: 3000}

### 2 - Ensure you have defined root_url to something in your config/routes.rb. Por exemplo: root to: "home#index"

### 3 - Ensure you have flash messages in app/views/layouts/application.html.erb. For example:
    <p class="notice"><%= notice %></p>
    <p class="alert"><%= alert %></p>

### 4 - Em config/initializers/devise.rb, descomentar e setar: config.scoped_views = true

    rails g devise User 

    rails generate devise:views users 

## Gerando backoffice

rails g controller users_backoffice/welcome index 

rails g controller users_backoffice

Lembrar de alterar os controllers do welcome para herdar do users_backoffice e não mais de application Adicionar o layout ao novo controller.

Pra reaalizar o Logoff apenas de 1 escopo por vez:

config.sign_out_all_scopes = false

## Sobre os arquivos criados nas views:

### show: 
Use this to show a single post that has been created.

### new: 
Use this to tell your program how to create a new post (I show you how to do this simply in the code at the bottom).

### create: 
Use this to tell your program what to do once you are actually creating the post (new just initializes the process, while create actually does something with it).

### index: 
Use this to show all posts that have been created. This is like the homepage for all of the posts.


## Comandos utilizados no projeto:

```
rails g scaffold Type name color --skip
```
cria a model da entidade Type com os atributos

```
rails g scaffold Bagmon name number image type_id
```
cria models, views, controllers, assets, helpers, migration, e testes refentes a entidade Bagmon, com seus atributos

```
rails g migration AddTypeToBagmon state:references
```
adiciona tipo a bagmon

## Para verificar as rotas existentes no ambiente de desenvolvimento.
http://localhost:3000/rails/info/routes

# DA UTILIZAÇÃO DO GIT

## Verificar versão
```
git --version
```

## Instalação via cmd
```
sudo apt-get install git
```


## Configurar usuario no seu git
```
git config --global user.email “email@email.com”
```

```
git config --global user.name “nome”
```

## Clonar repositório existente
```
git clone https://github.com/user/repository
```

## Criar um novo repositório
```
git init
```

## Alterar a url do respositório remoto
```
git remote set-url origin https://github.com/user/repository
```

## Exibe as condições do diretório de trabalho e da área de staging
```
git status
```

## Exibir os registros dos commits realizados no histórico do repositório
```
git log
```

## Exibir todas as branchs 
```
git branch -a
```

## Criar nova branc
```
git checkout -b {nome da nova branch}
```

## Mudar de branch
```
git checkout {nome da branch}
```

## Apagar branch local
```
git branch -D {nome da branch}
```

## Apagar branch remota
```
git push origin --delete {nome da branch}
```

## Adicionar alterações para o próximo commit
```
git add {nome do arquivo} {ou . pra incluir tudo}
```

## Adicionar alterações adicionadas na area de staging para o repositório
```
git commit -m "mensagem"
```

## Enviar o conteúdo do repositório local para um repositório remoto
```
git push
```
ou quando for o primeiro commit do repositório:

```
git push -u origin HEAD
```

## Arquivar alterações não commitadas do seu local de trabalho
```
git stash
```

## Aplicar as mudanças de um stash à área de trabalho 
```
git stash pop
```

## Unir duas branchs 
Ir para a branch que deseja aplicar as modificações
```
git merge {nome da outra branch}
```

