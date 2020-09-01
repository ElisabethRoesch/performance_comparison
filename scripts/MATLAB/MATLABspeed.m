a = 0.0;
n_additions = 100000000;
tic
speedtest_add(a, n_additions)
t_1_1 = toc;
n_runs = 10;
a = 0.0;
tic
speedtests_add(a, n_runs, n_additions)
t_1_2 = toc/n_runs;
a_arr = [];
n_appends = 10000000; 
tic
speedtest_app(a_arr, n_appends)
t_2_1 = toc;
length = 10000000;
b_arr = rand(length,1); % between 0 and 1
tic
sort_arr(b_arr)
t_3_1 = toc;
t_all = [t_1_1, t_1_2, t_2_1, t_3_1];
dlmwrite('../data/MATLAB_times.txt', t_all);
% Test 1.1: Cumulative addition - once
function speedtest_add(r, n_additions)
    for i = 1:n_additions
        r = r + 1;
    end
    % disp(r);
end
% Test 1.2: Cumulative addition - multiple and average
function speedtests_add(r, n_runs, n_additions)
    for i = 1:n_runs
        speedtest_add(r, n_additions)
    end
end
% Test 2.1: Appending array
function speedtest_app(r_arr, n_appends)
    for i = 1:n_appends
        r_arr = [r_arr,4];
    end
    %disp(r_arr); 
end
% Test 3.1: Sorting array
function sort_arr(r_arr)
	sort(r_arr);
end
