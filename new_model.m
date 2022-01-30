function new_model(modelname) 
% NEW_MODEL Create a new, empty Simulink model
%    NEW_MODEL('MODELNAME') creates a new model with
%    the name 'MODELNAME'. Without the 'MODELNAME'
%    argument, the new model is named 'my_untitled'.

if nargin == 0 
     modelname = 'my_untitled';
end 

% create and open the model
open_system(new_system(modelname));

% set default screen color
set_param(modelname,'ScreenColor','green');

% set default solver
set_param(modelname,'Solver','ode3');

% save the model
save_system(modelname)