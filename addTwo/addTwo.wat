(module
  (func $imports.imported_func (;0;) (import "imports" "imported_func") (param i32))
  (func (export "addTwo") (param i32 i32) (result i32) (local $var i32)
    local.get 0
    local.get 1
    i32.add
	local.tee $var
    local.get $var
    call $imports.imported_func
  )
)