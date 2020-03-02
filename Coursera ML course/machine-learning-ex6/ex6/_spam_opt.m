clear; close all; clc;more off;

% download ham emails and append h to ham and s to spam then load them here and process each one and assign 1 if the file contains s (spam) and 0 if it starts with h (ham) 


fprintf('\nPreprocessing spam_dataset emails\n');

files = dir('~/Documents/spam_dataset/dataset/*.txt');
n = length(files)
X = [];
y=[];
for i=1:n
  f_path=strcat('~/Documents/spam_dataset/dataset/',files(i).name);
  % Extract Features
  if strfind(files(i).name,'s') == 1
    fprintf('processing file%d: %s\n',i,files(i).name);
    file_contents = readFile(f_path);
    word_indices  = processEmail(file_contents);
    features = emailFeatures(word_indices);
    X(i,:) = features;
    y(i,0)=1;
  elseif strfind(files(i).name,'h') == 1
    fprintf('processing file%d: %s\n',i,files(i).name);
    file_contents = readFile(f_path);
    word_indices  = processEmail(file_contents);
    features = emailFeatures(word_indices);
    X(i,:) = features;
    y(i,:) = 0;
  end
 end
save('spam_ham_data.m');


