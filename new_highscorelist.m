function list = new_highscorelist()
list = zeros(10, 2);
p = 100;
vec = [];
for i = 1:10
    list(i, 2) = p;
    p = p - 10;
end

phone = [1100000 44000000 22000000 90909090 73500000 ...
    73000000 22220000 54000000 30303030 40404040];

for i = 1:length(phone)
   r = randi(10);
   vec(i) = r;
   while sub(vec, r) == 0
       r = randi(10);
       vec(i) = r;
   end
   list(i, 1) = phone(r);
    
end

end

