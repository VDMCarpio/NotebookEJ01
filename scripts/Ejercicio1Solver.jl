if j == "1"
	for n in 1:i
		vsol01[n] = (1 + (1/n))^n
	end
elseif j == "2"
	for n in 1:i
		vsol01[n] = -(4/3)^n
	end
elseif j == "3"
	for n in 1:i
		vsol01[n] = 1 - 1/n + 1/(n^2)
	end
elseif j == "4"
	for n in 1:i
		vsol01[n] = (((-1)^n)/n + 2/n)
	end
elseif j == "5"
	for n in 1:i
		vsol01[n] = (n + 1) / n
	end
elseif j == "6"
	for n in 1:i
		vsol01[n] = ((10^n) / (5^n + 5))
	end
elseif j == "7"
	for n in 1:i
		vsol01[n] = (n / factorial(1 + n))
	end
elseif j == "8"
	for n in 1:i
		vsol01[n] = 10 / 2^n
	end
elseif j == "9"
	for n in 1:i
		vsol01[n] = (n + 1) / (n^2 - 10)
	end
else
	for n in 1:i
		vsol01[n] = factorial(n + 1) / 10^(n-1)
	end
end