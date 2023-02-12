use std::os::raw::c_int;

#[no_mangle]
pub unsafe extern "C" fn e(n: usize, buf: *mut c_int) {
    for i in 0..n {
        *buf.offset(i as isize) = (i as c_int + 12) % 10;
    }
}
