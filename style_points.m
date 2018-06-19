function spoints = style_points(points)

sort(points);
for i = 2:length(points)-1
    spoints = points(i);
end

end

