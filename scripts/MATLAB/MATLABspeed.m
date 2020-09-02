% Test 1.1: Cumulative addition - once
a = 0.0;
n_additions = 100000000;
tic
speedtest_add(a, n_additions)
t_1_1 = toc;

% Test 1.2: Cumulative addition - multiple and average
n_runs = 10;
a = 0.0;
tic
speedtests_add(a, n_runs, n_additions)
t_1_2 = toc/n_runs;

% Test 1.3: Cumulative addition - multiple 
n_runs_arr = [1,10,20,40,80];
tic
speedtests_add(a, n_runs_arr(1), n_additions)
t_1_3_a = toc;

tic
speedtests_add(a, n_runs_arr(2), n_additions)
t_1_3_b = toc;

tic
speedtests_add(a, n_runs_arr(3), n_additions)
t_1_3_c = toc;

tic
speedtests_add(a, n_runs_arr(4), n_additions)
t_1_3_d = toc;

t_1_3 = [t_1_3_a, t_1_3_b, t_1_3_c, t_1_3_d];
% Test 2.1: Appending array
a_arr = [];
n_appends = 100000000; 
tic
speedtest_app(a_arr, n_appends)
t_2_1 = toc;
length = 100000000;
b_arr = rand(length,1); % between 0 and 1
tic
sort_arr(b_arr)
t_3_1 = toc;

% Test 3.1: Sorting array
t_all = [t_1_1, t_1_2, t_2_1, t_3_1];
dlmwrite('../data/MATLAB_times.txt', t_all, '\n');
dlmwrite('../data/MATLAB_times_t_1_details.txt', t_1_3, '\n');
function speedtest_add(r, n_additions)
    for i = 1:n_additions
        r = r + 1;
    end
    % disp(r);
end

function speedtests_add(r, n_runs, n_additions)
    for i = 1:n_runs
        speedtest_add(r, n_additions)
    end
end

function speedtest_app(r_arr, n_appends)
    for i = 1:n_appends
        r_arr = [r_arr,4];
    end
    %disp(r_arr); 
end

function sort_arr(r_arr)
	sort(r_arr);
end
