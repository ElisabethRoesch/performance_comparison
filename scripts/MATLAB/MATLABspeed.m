
a = 0.0;
n_additions = 100000000;
tic
speedtest_add(a, n_additions)
toc
n_runs = 10;
a = 0.0;
tic
speedtests_add(a, n_runs, n_additions)
toc
a_arr = []
n_appends = 100000000
tic
speedtest_app(a_arr, n_appends)
toc
% Test 1.1: Cumulative addition - once
function speedtest_add(r, n_additions)
    for i = drange(1,n_additions)
        r = r + 1;
    end
    % disp(r);
end
% Test 1.2: Cumulative addition - multiple and average
function speedtests_add(r, n_runs, n_additions)
    for i = drange(1,n_runs)
        speedtest_add(r, n_additions)
    end
end
% Test 2.1: Appending array

function speedtest_app(r_arr, n_appends)
    for i = drange(1,n_appends)
        r_arr=[r_arr,4];
    end
    %disp(r_arr); 
end