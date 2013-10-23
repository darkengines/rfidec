function result = evaluate(X)
	values = unique(X);
	count = length(values);
	h = hist(X, values);
	total = sum(h);
	result = h / total;
endfunction
