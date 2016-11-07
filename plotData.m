function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% Create the plot, and insert data points.
admittedIndices = find(y == 1); % Examples that were admitted
notAdmittedIndices = find(y == 0); % Examples that were not admitted

x1Admitted = X(admittedIndices, 1); % Exam 1 scores for admitted students
x2Admitted = X(admittedIndices, 2); % Exam 2 scores for admitted students
plot(x1Admitted, x2Admitted, 'k+', 'LineWidth', 2, 'MarkerSize', 7);

x1NotAdmitted = X(notAdmittedIndices, 1); % Exam 1 scores for not admitted students
x2NotAdmitted = X(notAdmittedIndices, 2); % Exam 2 scores for not admitted students
plot(x1NotAdmitted, x2NotAdmitted, 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% Set legend and axes labels.
legend('Admitted', 'Not Admitted');
xlabel('Exam 1 Score');
ylabel('Exam 2 Score');

% Done with Figure
hold off;

end
