
a = 0.

function tester(r)
    for i in 1:100000000
        r+=1
    end
    return r
end

@time res = tester(a)

res
