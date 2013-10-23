function result = contingency(M, n)
	s = size(M);
	x = s(1);
	y = s(2);
	MU = unique(M, 'rows');
	l = zeros(y, 1);
	for i=1:y
		l(i) = length(unique(MU(:,i)));
	endfor
	result = zeros(l);
	for i=1:x
		M
		M(i,:)
		l
		result(sub2ind2(l', M(i,:))) += 1;
	endfor
	result /= x*y;
endfunction
