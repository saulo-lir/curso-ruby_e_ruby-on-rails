# Mixins Permite que façamos uma pseudo herança múltipla
# Vem da ideia de misturar classes e módulos

require_relative 'exemplo'

x = Exemplo.new

# Utilizando os métodos do módulo A
x.a1 
x.a2

# Utilizando os métodos do módulo B
x.b1
x.b2

# Utilizando o método da classe Exemplo
x.ex1