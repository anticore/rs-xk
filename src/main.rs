#![no_std]
#![no_main]

#[no_mangle]
pub extern "C" fn main(_argc: isize, _argv: *const *const u8) {
}

#[no_mangle]
pub extern "system" fn mainCRTStartup() {
}


#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}