

Separate sample into

+ training data
+ test data

Say 90% training, 10% test.

Make certain test is qualitatively the same as training
  + obeys same sampling scheme as for sample
  + if random, make certain randomize rows.


Fit all competing models on training data.
  +  F1, F2, ..., Fm

Predict test data for each model F1, F2, ..., Fm

  + Get prediction/classification error for test using known results (Y)
    for each model.

Select model with smallest error for test data.


Objective as not using test data to fit the models.

Avoids overfitting.


When select final model, then do refit using entire sample.



However, outcome depends on which 10% we chose for test.

A better approach is:

+ split sample into, say V = 10, non-overlapping groups.

   + S1, S2, S3, ..., S10

+ Take S1 as test, and combine S2, ..., S10 as training.
   + Fit all models using training data.
   + Compute error on test data.

+ Next, repeat with
    + test = S2
    + training = S1, S3, ..., S10

    + Fit all models on training
    + Compute error on test

+ i-th step
    + test = Si
    + training = S1, S2, ...,  S(i-1), S(i+1), ..., S10
    + Fit models on training
    + Compute error on test



+ Finally, for each model,  sum the errors across all 10 test sets
  



+ This is V-fold cross-validation
    + V is the number of separate test sets
    + always use the rest as training for each fold.      
