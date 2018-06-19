rlist = rand_list2(15);
mat = new_level(rlist);
while correct_place(mat) < 10
    rlist = rand_list2(15);
    mat = new_level(rlist);
end

level_to_text(mat);
