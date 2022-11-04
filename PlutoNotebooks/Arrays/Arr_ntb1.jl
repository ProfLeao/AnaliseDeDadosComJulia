### A Pluto.jl notebook ###
# v0.19.14

using Markdown
using InteractiveUtils

# ╔═╡ 4385af42-5b0f-11ed-0874-ebf4d0440e2f
md"""
# Introdução aos Arranjos (**Arrays**) de Julia
## Autor: Prof. Dr. R. G. Leão Jr.  
*prof.reginaldo.leao@gmail.com.br*

#### Arranjos ou *Arrays*, o que são ? 

Essencialmente um arranjo é uma estrutura de dados capaz de armazenar uma coleção de valores de tal forma que estes podem ser identificados por índices numéricos, inteiros e inequívocos. 

Arranjos unidemensionais, denominados **vetores**, têm cada um de seus elementos identificados por apenas um índice, conforme pode ser visto no códio abaixo. 

No exemplo `vetor = [10,20,30,40,50]` inicializa o vetor propriamente dito que por sua vez é acessado pelos elementos do `UnitRange{Int64}` iniciado em `1` e encerrado pelo comprimento do vetor obtido por `length(vetor)`. 

O retorno da função `typeof` deixa claro o tipo e sua natureza `Vector{Int64}` cuja a natureza é um *alias* para um `Array{Int64, 1}`. 
"""

# ╔═╡ 32504df5-2a9f-4e82-ad44-4e43d578b6c8
begin
	vetor = [10, 20, 30, 40, 50]
	for i in 1:length(vetor)
		println("$(i)° elemento do vetor: $(vetor[i])")
	end
	typeof(vetor)
end

# ╔═╡ 697fcab2-5df5-4235-81d0-b85086082e56
md"""
Veja que as vírgulas foram utilizadas para a criação do vetor. Se espaços fossem utilizados, o tipo criado seria uma matriz, como no exemplo abaixo. 
"""

# ╔═╡ 4b8d90bf-0a99-4fac-a241-6e6f6e0336b7
begin
	vetor2 = [10 20 30 40]
	println(vetor2)
	typeof(vetor2)
end

# ╔═╡ 2655e909-4f1e-4e9f-a2bc-82e7c5a1fc9b
md"""
Um arranjo bidimensional em alguma linguages de programação são tratados diretamente como matrizes, Julia é versátil em relação a isso, permitindo ambas as abordagens.
"""

# ╔═╡ 4c27cdd6-5836-4c89-8f51-f183d4236697
begin
	arr_2d = [
		1 2 3 ;  
		4 5 6 ;
		7 8 9
	]
	size(arr_2d)
end

# ╔═╡ 6a46b144-3987-4478-a721-601ac52c9890
md"""
Neste caso o tipo de dado criado foi `Matrix{Int64}` também um *alias* mas agora para um arranjo de duas dimensões `Array{Int64, 2}`. Ou seja, as matrizes de Julia são na verdade arranjos bidimensionais. Veja que um `;` foi usado para declarar o final de uma linha, embora eles não sejam explicitamente necessários. 

Objeto semelhante pode ser obtido pela seguinte técnica de incialização.
"""

# ╔═╡ 6bf88119-2c0b-456b-81ea-eb748c35bb26
begin
	arr_3d = [
		03 04 ;
		05 06 ;;;
		07 08 ;
		09 10 ;;;
	    11 12 ;
		13 14 ;
	]
	arr_3d
end

# ╔═╡ c8465c88-baa1-4117-8ebd-ba943bc2cfb4
md"""
Agora com `;;;` sendo usado para a delimitação das matrizes presentes em cada uma das três dimensões do arranjo. 

A inicialização manual de arranjos, no entanto, não é uma técnica muito usual. Rotinas de inicialização destas estruturas, na grande maioria das vezes, produzem resultados mais poderosos, ágeis e versáteis.

A inicialização de um vetor de 10 elementos, por exemplo, com zeros, pode ser feita de maneira bastante concisa. 
"""

# ╔═╡ 3cfe3066-09c4-429a-9e7d-7a69bcc3fb2d
begin
	vec_zeros = zeros(10) # método 1
	println("Zeros 1:", vec_zeros)
	vec_zeros2 = fill(0., 10) # método 2
	println("Zeros 2:", vec_zeros2)
end

# ╔═╡ bab9f3a7-e5f3-4ad5-97df-f68a2ffbf37d
md"""
O método `zeros` permite a criação de um arranjo de zeros de qualquer *shape*, enquanto `fill` e sua respectiva mutante `fill!` podem ser usadas para preencher arranjos de qualquer formato com qualquer valor suportado pela linguagem. 

Como no caso do arranjo tridimensional abaixo, totalmente preenchido pelo caractere unicode ▢.
"""

# ╔═╡ 3516a6be-7ddd-421a-b4c1-70ebde5b840f
arr1 = fill("▢", 3, 3, 3)

# ╔═╡ 14487ab8-7d17-4fb5-94f1-f53e47919fc1
md"""
Outro método semelhante é o `ones`, capaz de criar arranjos preenchidos por valores unitários. No uso abaixo, foi declarado, inclusive, o tipo de dado pelo qual os valores devem ser representado, um inteiro de 64 bits.
"""

# ╔═╡ 81467536-16ea-45ca-a8bc-ac1d0ac71032
arr3 = ones(Int64,4,4)

# ╔═╡ e2e2c8dc-912a-4f6b-bd47-71845bc1c61d
md"""
Inicializações mais robustas também pode ser feitas, aqui uma matriz 5x10 é criada utilizando um gerador, o método `reshape` para um shape 10x5 e sua transposição.  
"""

# ╔═╡ 359fdf80-c82a-4557-a24b-c2aa4d05aa29
begin
	arr2 = [x for x in 1:50]
	arr2 = reshape(arr2, 10,5)'
end

# ╔═╡ a7c99d06-96f2-4997-8e54-f9ba1e40d4f1
md"""
Finalmente é preciso mencionar a versatilidade dos métodos `rand` para a geração de arranjos com números aleatórios, e o método `Array` para a geração de arranjos com valores indefinidos, geralmente substituídos por outros em algum processo.
"""

# ╔═╡ 3f7d07d1-95d4-4288-b33c-052e71c8b5a4
mat_rand = rand(1:10,5,5)

# ╔═╡ dad14dd8-8cd4-4824-a92c-2dc8fad02831
mat_undef = Array{Float16}(undef, 3,3)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.2"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─4385af42-5b0f-11ed-0874-ebf4d0440e2f
# ╠═32504df5-2a9f-4e82-ad44-4e43d578b6c8
# ╠═697fcab2-5df5-4235-81d0-b85086082e56
# ╠═4b8d90bf-0a99-4fac-a241-6e6f6e0336b7
# ╠═2655e909-4f1e-4e9f-a2bc-82e7c5a1fc9b
# ╠═4c27cdd6-5836-4c89-8f51-f183d4236697
# ╠═6a46b144-3987-4478-a721-601ac52c9890
# ╠═6bf88119-2c0b-456b-81ea-eb748c35bb26
# ╠═c8465c88-baa1-4117-8ebd-ba943bc2cfb4
# ╠═3cfe3066-09c4-429a-9e7d-7a69bcc3fb2d
# ╠═bab9f3a7-e5f3-4ad5-97df-f68a2ffbf37d
# ╠═3516a6be-7ddd-421a-b4c1-70ebde5b840f
# ╠═14487ab8-7d17-4fb5-94f1-f53e47919fc1
# ╠═81467536-16ea-45ca-a8bc-ac1d0ac71032
# ╠═e2e2c8dc-912a-4f6b-bd47-71845bc1c61d
# ╠═359fdf80-c82a-4557-a24b-c2aa4d05aa29
# ╠═a7c99d06-96f2-4997-8e54-f9ba1e40d4f1
# ╠═3f7d07d1-95d4-4288-b33c-052e71c8b5a4
# ╠═dad14dd8-8cd4-4824-a92c-2dc8fad02831
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
