function result = generate(law, n)
	range = cumsum(law);
	result = rand(n, 1); 
	for i=1:n
		result(i) = find(range > result(i))(1);
	endfor
endfunction
