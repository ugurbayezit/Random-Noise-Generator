clc;clear all;close all;
n = 16; 
% array1 = randi([0, 1], [1, n]);
array1=[1 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0]
array2= zeros(n,n);
for i=1:2^n
    value1=~xor(array1(1),array1(2));
    value2=~xor(array1(4),value1);
    feedback=~xor(array1(13),value2);
    %feedback=xor(array1(13),(xor(array1(4),(xor(array1(1),array1(2))))));
    array1(1,2:16)=array1(1,1:15);
    array1(1,1)=feedback;
    array2(i,1:n)=array1;
end
array3=binaryVectorToHex(array2);
array4=hex2dec(array3);
hist(array4,1000)
