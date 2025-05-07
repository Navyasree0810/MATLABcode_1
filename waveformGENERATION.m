% Parameters
fs = 1000;          % Sampling frequency (Hz)
t = 0:1/fs:1;      % Time vector (1 second duration)
f = 5;             % Frequency of the waveform (Hz)
A = 1;             % Amplitude of the waveform

% Generate waveforms
sine_wave = A * sin(2 * pi * f * t);          % Sine Wave
square_wave = A * square(2 * pi * f * t);     % Square Wave
triangle_wave = A * sawtooth(2 * pi * f * t, 0.5); % Triangle Wave
sawtooth_wave = A * sawtooth(2 * pi * f * t); % Sawtooth Wave

% Plot the waveforms
figure;

% Sine Wave
subplot(4, 1, 1);
plot(t, sine_wave);
title('Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Square Wave
subplot(4, 1, 2);
plot(t, square_wave);
title('Square Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Triangle Wave
subplot(4, 1, 3);
plot(t, triangle_wave);
title('Triangle Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Sawtooth Wave
subplot(4, 1, 4);
plot(t, sawtooth_wave);
title('Sawtooth Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

