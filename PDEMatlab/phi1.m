function res = phi1(x)
    for k = 1:length (x)
    if x (k) >= 1 / 2 && x (k) <= 7 / 2
      res (k) = (2 * x(k) - 1) * (2 * x(k) - 7) * cos (pi * x(k));
    else res(k) = 0;
    end
  end
end
