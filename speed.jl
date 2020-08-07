
a = 0.
function tester(r)
    for i in 1:100
        r+=1
    end
    return r
end
@time tester(a)
