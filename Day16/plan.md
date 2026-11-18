# BTW

When summarizing the scores for the 5 questions in the midterm
and the Total, I had to 
+ read the data and skip over rows.
+ convert the data from wide-form to long form
    + unlist()
    + rep() the question name
    + create the data.frame()      
+ subset to remove rows ot of interest.
+ create  factors via cut() (e.g. for letter grades)
+ plot the individual question distributions for all questions together
+ plot scatterplots with all students for each pair of questions to see
  performance across questions.

All of these are the foundational skills we learned in the first half of this course 
and I use every day!!

# Bootstrap

+ Next homework builds on these too, as will the next.

+ Explain assignment
   + setup
   + weighted least squares   


+ Example of a bootstrap
   + univariate     
   + 2 estimates
     + 1/median
     + ratio of 75% and 25% quantile
     + ratio of variances       

   + Asymptotics may work but maybe not for our sample size.


   + Parametric
   + Non-parametric     



Population
  + population parameter we are trying to estimate
  + get a single sample
  + one of many possible samples
  + if we sampled again, we get a new sample with same size and it would be slightly different    

  + sample estimate will vary from possible sample to sample.

  + we only get one sample and we use theory to characterize the between sample variability
     of our estimate
    + that's how we get confidence intervals, hypothesis tests, ...
    + knowing how our sample is likely to fit into the set of all possible samples
        + ASSUMING OUR SAMPLE IS REPRESENTATIVE


If we can't rely on theory to know the "sampling distribution of our statistic", i.e.
      how the sample statistic will vary from sample to sample, then we have a PROBLEM.

The bootstrap.

   + We have a sample  X1, X2, ..., Xn
     + Compute our sample statistics, T(X1, ..., Xn) e.g., mean(X1, ... Xn)
   + Now, let's pretend that is our population
      + Then sample n observations **with replacement** from that population to create a new
         "fake"/bootstrap sample.
          + X*1, X*2, ..., X*n
       + Compute our sample statistic for this new T*(X*...)
   + Repeat this B times.
       + All with the same original sample size n
       + All using the same sampling scheme we used to get X1, ..., Xn - the original data.
           + i.e., if we did something special to ensure a certain structure in the sample, ensure
	   this happens for our bootstrap sample too.

   + Now we have T*1(), T*2(), T*3(), ...., T*B() sample statistics.

   + We now have an approximation/estime of the sampling distribution of our original sample
     statistics T(X).

   + The bootstrap is relying on
       + our orignial sample is to the population as
       + our bootstramp samples is to the original sample

   + Not perfect
     + Doesn't magically solve/improve for
         + small sample sizes
         + sample that isn't representative
         + badly sampled data.
         + weird original sample where you have the 1 in a milloin weird data.  


