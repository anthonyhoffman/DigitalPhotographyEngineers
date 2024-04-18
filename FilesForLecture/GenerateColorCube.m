% Generate RGB values for the color cube
n = 16; % Number of divisions along each axis, use a power of 2.
[red, green, blue] = meshgrid(linspace(0, 1, n), linspace(0, 1, n), linspace(0, 1, n));

% Reshape RGB values into column vectors
red = red(:);
green = green(:);
blue = blue(:);

% Plot the color cube
scatter3(red, green, blue, 50, [red, green, blue], 'filled');
xlabel('Red');
ylabel('Green');
zlabel('Blue');
title('RGB Color Cube');
axis([0 1 0 1 0 1]); % Set axis limits to [0, 1] for each color channel
