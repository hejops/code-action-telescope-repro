# previewing code_action via telescope creates new file without confirmation

1. ensure `gopls` is available in `PATH`
   ([install](https://pkg.go.dev/golang.org/x/tools/gopls#readme-installation))
1. `nvim -u ./minimal.lua ./main.go`
1. position cursor on `func main`
1. `<space>A`
1. navigate to `Extract declarations to new file` (but do not select it)
1. `main` is moved to new file immediately, without confirmation
