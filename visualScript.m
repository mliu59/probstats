%The sirVisualClassDef is a bit messy to handle, so this script attempts to
%make it very simple to help simplify the process of making it run. Below
%is a description of the 5 inputs sirVisualClassDef takes to get it running.

%Input 1: The first one is how many people are in the simulation. Please
%set it to the square of something between 5 and 12, such as 25, 36, or
%144. Hypothetically the model will work for any number, but you might get
%some odd behavior.

%Input 2: Input 2 is best described as a form of 'interaction parameter'
%between individuals in the simulation. It changes based on whether you are
%modeling an urban, suburban, or rural area.

%Input 3: If you want social distancing to take effect immediately, set
%input 3 to 1.

%Input 4: If you want social distancing to take effect after a certain
%percent of the population is infected, you can set this to 10, 20, or 30,
%all the way up to 100.

%Input 5: If you want mass testing to be present, set this to 1. The people
%in the model will be tested for the presence of virus, and will appear
%green if they test positive. 
 
number_people = 100;
interaction_parameter = 1.2; %1.2 for urban, 1 for suburban, 0.8 for rural
social_distancing = 0;
social_distancing_threshold = 20; %Currently set to 20% before social distancing kicks in
testing_present = 0;

%sirVisual=sirVisualClassDef(number_people, interaction_parameter, social_distancing, social_distancing_threshold, testing_present); 
%draw(sirVisual)

%Since this is a stochastic model, you may need to run the model several
%(ie hundreds) of times to draw conclusions from it. The function
%drawInfected only plots the number of infected people and not the visual
%animation part of disease spread. 
for i=1:100
    i
    hold on
    sirVisual=sirVisualClassDef(number_people, interaction_parameter, social_distancing, social_distancing_threshold, testing_present);
    drawInfected(sirVisual);   
end
hold off