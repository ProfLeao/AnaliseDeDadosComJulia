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
Um arranjo bidimensional em alguma linguages de programação são tratados diretamente como matrizes, Julia é versátil em relação a isso, permitindo ambas as abordagens.
"""

# ╔═╡ 4c27cdd6-5836-4c89-8f51-f183d4236697
begin
	arr_2d = [
		1 2 3 ; 
		4 5 6 ;
		7 8 9
	];
	shape(arr_2d)
end

# ╔═╡ 6a46b144-3987-4478-a721-601ac52c9890
md"""
Neste caso o tipo de dado criado foi `Matrix{Int64}` também um *alias* mas agora para um arranjo de duas dimensões `Array{Int64, 2}`. Ou seja, as matrizes de Julia são na verdade arranjos bidimensionais. 

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
# ╠═4385af42-5b0f-11ed-0874-ebf4d0440e2f
# ╠═32504df5-2a9f-4e82-ad44-4e43d578b6c8
# ╟─697fcab2-5df5-4235-81d0-b85086082e56
# ╠═4c27cdd6-5836-4c89-8f51-f183d4236697
# ╠═6a46b144-3987-4478-a721-601ac52c9890
# ╠═6bf88119-2c0b-456b-81ea-eb748c35bb26
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
