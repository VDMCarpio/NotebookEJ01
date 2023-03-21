function AvisoRevision(comparacion::Bool,iniciado = false::Bool)
	if iniciado	
		if comparacion
			text01 = "Excelente, has realizado correctamente el ejercicio."
			Markdown.MD(Markdown.Admonition("correct", "Correcto" ,[text01]))
		else
			text01 = "Revisa tu procedimiento y plantea nuevamente la solución. Desactive la casilla antes de volver a intentar este ejercicio."
			Markdown.MD(Markdown.Admonition("danger", "Vuelve a intentarlo." ,[text01]))
		end
	else
		text01 = "Realiza el ejercicio para que sea revisado, recuerda dar clic en el botón Revisar."
		Markdown.MD(Markdown.Admonition("hint", "Intenta resolver el ejercicio" ,[text01]))
	end
end

function Solver01(i::Int64)
	local vector = zeros(i)
	if j == "1"
		for n in 1:i
			vector[n] = (1 + (1/n))^n
		end
	elseif j == "2"
		for n in 1:i
			vector[n] = -(4/3)^n
		end
	elseif j == "3"
		for n in 1:i
			vector[n] = 1 - 1/n + 1/(n^2)
		end
	elseif j == "4"
		for n in 1:i
			vector[n] = (((-1)^n)/n + 2/n)
		end
	elseif j == "5"
		for n in 1:i
			vector[n] = (n + 1) / n
		end
	elseif j == "6"
		for n in 1:i
			vector[n] = ((10^n) / (5^n + 5))
		end
	elseif j == "7"
		for n in 1:i
			vector[n] = (n / factorial(1 + n))
		end
	elseif j == "8"
		for n in 1:i
			vector[n] = 10 / 2^n
		end
	elseif j == "9"
		for n in 1:i
			vector[n] = (n + 1) / (n^2 - 10)
		end
	else
		for n in 1:i
			vector[n] = factorial(n + 1) / 10^(n-1)
		end
	end
	return vector
end

function EjemploIgualdadSucesion(i::Int64,o::Int64)
	local vector = zeros(i)
	if o == 1 #Divergente
		for n in 1:i
			vector[n] = (1 + (3/n))^n
		end
	elseif o == 2 #Convergente
		for n in 1:i
			vector[n] = (4/5)^n
		end
	elseif o == 3 #Convergente
		for n in 1:i
			vector[n] = 1 - 5/n + 1/(n^2)
		end
	elseif o == 4 #Convergente
		for n in 1:i
			vector[n] = (((-1)^n)/n + 20/n)
		end
	elseif o == 5 #Convergente
		for n in 1:i
			vector[n] = (n + 1) / (2 * n)
		end
	elseif o == 6 #Divergente no
		for n in 1:i
			vector[n] = ((10^n) / (3^n + 5))
		end
	elseif o == 7 #Convergente
		for n in 1:i
			vector[n] = (n / factorial(big(5 + n)))
		end
	elseif o == 8 #Convergente
		for n in 1:i
			vector[n] = 10 / 2^(n + 1)
		end
	elseif o == 9 #Convergente
		for n in 1:i
			vector[n] = (2 * n + 1) / (n^2 - 10)
		end
	else
		for n in 1:i #Divergente
			vector[n] = factorial(big(n + 1)) / 100^(n-1)
		end
	end
	return vector
end
