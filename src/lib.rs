#[no_mangle]
pub extern "C" fn string() -> *const u8 {
  "Hello World\0".as_bytes().as_ptr()
}
