proc c*(n: csize_t, buf: ptr cint, init: cint) {.exportc, dynlib.} =
    let arr = cast[ptr UncheckedArray[cint]](buf)
    for i in 0..<n:
        arr[i] = (i.cint + init) mod 10
