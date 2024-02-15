% This script is intended to introduce you to the naming convention in
% programming. The reason for using naming conventions: 
% Reduce the effort needed to read and understand source code,
% Enable code reviews to focus on issues more important than syntax and
% naming standards,
% Enable code quality review tools to focus their reporting mainly on
% significant issues other than syntax and style preferences.

% In the following, some traditional naming conventions are described.
% However, some companies may use their own naming convention. 
% The most important is to follow strictly one convention!

%% Camel case naming convenction
% Most of the object oriented programming languages prefer lower camel case
% naming convention (e.g. C++, C#, Java, etc.) in what the words are
% separated by capitalized letters.
exampleVariable = 1; % Variable definition and assignment

% Functions also follow lower camel case rule: exampleFunction();

% In camel case naming convention classes (object-oriented programming) 
% and objects as instrances of pre-defined classes are indentified with
% with upper camel case: ExampleClass, ExampleObject

%% Snake case naming convention
% In embedded programming and some other high-level languages (e.g. Python)
% the snake case naming convention is preferred. In this case, words are
% separated by underscores.
example_variable = 2; % Variable definition and assignment

% In snake case naming convention classes (object-oriented programming) 
% and objects as instrances of pre-defined classes are indentified with
% with upper snake case: Example_Class, Example_Object

%% Constants
% Constants are program inputs that are not intended to change their values
% For example, programming a vehicle model, the wheelbase of the vehicle is
% constant. Constants are represented with capitalized letters separated by
% underscores.

VEHICLE_WHEEL_BASE = 3.6;
%% Descriptive identifiers (names)
% Besides naming convention another important aspect is the descriptive 
% identifiers (names). This means that variables should be identified with 
% names that correspond to the content and role of them. 

% Let's see a lousy example of creating two variables representing scalar 
% values and another one corresponding to their sum:

a = 1; %variable 1
b = 2; %variable 2
c = a + b; %sum of variable1 and variable2

% Let's see the right solution:
scalarVariable1 = 1;
scalarVariable2 = 2;
sumOfVariables = scalarVariable1 + scalarVariable2;