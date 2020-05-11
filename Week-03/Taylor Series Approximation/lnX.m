function approxValue = lnX(value_X,no_Of_terms) % calculates ln(1+x)

approxValue=value_X;
signedPowXValue=value_X;

for i=2:no_Of_terms
    signedPowXValue = -signedPowXValue * value_X;
    termValue = signedPowXValue / i;
    approxValue = approxValue + termValue;
end

% Implemented :: Tested
