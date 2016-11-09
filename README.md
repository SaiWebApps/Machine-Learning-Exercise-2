Coursera Machine Learning Exercise #2
===================

Supervised Learning - Classification Problems (Logistic Regression Model)

-----------
Prerequisites
-----------
<img src="https://www.gnu.org/software/octave/images//logo.png" width="25" height="25" /> GNU Octave 4.0.0+

<img src="http://itprocurement.unl.edu/software_product_images/matlablogo.jpg" width="100" />

-------------
Files Included In This Exercise
-------------

#### Drivers (Main Files)
* ex2.m - Run non-regularized logistic regression model.
* ex2_reg.m - Run regularized logistic regression model.
* submit.m - Submit code to Coursera grader.

#### Datasets
* ex2data1.txt - Used in ex2.m
* ex2data2.txt - Used in ex2_reg.m

#### Plotting Functions
* plotData.m - Plot 2D classification data.
* plotDecisionBoundary.m - Plot classifier's decision boundary.

#### Logistic Regression Functions
* sigmoid.m - Logistic Regression Hypothesis Function
* predict.m - Logistic Regression Prediction Function
* costFunction.m - Logistic Regression Cost Function (Unregularized)

#### Regularization Functions
* mapFeature.m - Function to generate polynomial features, thereby necessitating regularization.
* costFunctionReg.m - Logistic Regression Cost Function (Regularized)

-------------
Basic Equations
-------------

#### Logistic Regression Hypothesis Function - Sigmoid
<img src="https://latex.codecogs.com/gif.latex?h_\Theta(x)&space;=&space;g(\Theta^Tx)&space;=&space;\frac{1}{1&plus;e^{-\Theta^Tx}}" title="h_\Theta(x) = g(\Theta^Tx) = \frac{1}{1+e^{-\Theta^Tx}}" />

#### Logistic Regression Cost Function (Unregularized)
<img src="https://latex.codecogs.com/gif.latex?J(\Theta)&space;=&space;-\frac{1}{m}\sum_{i=1}^{m}y^{(i)}*log(h_\Theta(x^{(i)}))&space;&plus;&space;(1-y^{(i)})*log(1-h_\Theta(x^{(i)}))" title="J(\Theta) = -\frac{1}{m}\sum_{i=1}^{m}y^{(i)}*log(h_\Theta(x^{(i)})) + (1-y^{(i)})*log(1-h_\Theta(x^{(i)}))" />

#### Logistic Regression Cost Function (Regularized)
<img src="https://latex.codecogs.com/gif.latex?J(\Theta)&space;=&space;[-\frac{1}{m}\sum_{i=1}^{m}y^{(i)}*log(h_\Theta(x^{(i)}))&space;&plus;&space;(1-y^{(i)})*log(1-h_\Theta(x^{(i)}))]&space;&plus;&space;[\frac{\lambda}{2m}\sum_{j=1}^{n}\Theta_j^2]" title="J(\Theta) = [-\frac{1}{m}\sum_{i=1}^{m}y^{(i)}*log(h_\Theta(x^{(i)})) + (1-y^{(i)})*log(1-h_\Theta(x^{(i)}))] + [\frac{\lambda}{2m}\sum_{j=1}^{n}\Theta_j^2]" />

#### Gradient Descent (Unregularized)

*For j = [0, n]:*

<img src="https://latex.codecogs.com/gif.latex?\Theta_j&space;:=&space;\Theta_j&space;-&space;\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})x^{(i)}_j" title="\Theta_j := \Theta_j - \alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)}) - y^{(i)})x^{(i)}_j" />

#### Gradient Descent (Regularized)

*For j = 0:*

<img src="https://latex.codecogs.com/gif.latex?\Theta_0&space;:=&space;\Theta_0&space;-&space;\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})x^{(i)}_j" title="\Theta_0 := \Theta_0 - \alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)}) - y^{(i)})x^{(i)}_j" />

*For j = [1,n]:*

<img src="https://latex.codecogs.com/gif.latex?\Theta_j&space;:=&space;\Theta_j&space;-&space;\alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)})&space;-&space;y^{(i)})x^{(i)}_j&space;&plus;&space;\frac{\lambda}{m}\Theta_j" title="\Theta_j := \Theta_j - \alpha\frac{1}{m}\sum_{i=1}^{m}(h_\Theta(x^{(i)}) - y^{(i)})x^{(i)}_j + \frac{\lambda}{m}\Theta_j" />

-------------
References
-------------
* [Coursera Machine Learning Exercise #2 Instructions](https://github.com/SaiWebApps/Machine-Learning-Exercise-2/blob/master/ex2.pdf)
* GNU Octave Documentation
* Matlab Documentation