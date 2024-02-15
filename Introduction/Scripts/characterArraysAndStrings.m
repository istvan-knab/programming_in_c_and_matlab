% In matlab there are two ways to store "texts": character arrays and
% strings

%% Caharacter vectors (arrays)

% Vectors
characterVector1 = 'FC Bayern ';
characterVector2 = 'München';

% Since character vectors (arrays) behave like numeric vectors (matrices)
% they can be concatenated. 
theBestTeamEver = [characterVector1, characterVector2]

% Arrays
characterVector3 = 'Buda';
characterVector4 = 'Pest';

characterArray = [characterVector3; characterVector4];

%% Strings

% Matlab strings almost works the same as character arrays, but the memory
% usage of them is different. 
matlabString = "I love Matlab programming";