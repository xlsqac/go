/*
Mos 未运行时自动运行
可执行文件为 ~/script/go/mos-monitor
*/
package main

import (
    "github.com/shirou/gopsutil/process"
    "os/exec"
)

func main() {
    processes, _ := process.Processes()
    var hasMos bool = false

    for _, p := range processes {
        name, _ := p.Name()
        if name == "Mos" {
            hasMos = true
            break
        }
    }
    if !hasMos {
        cmd := exec.Command("open", "/Applications/Mos.app")
        err := cmd.Run()
        if err != nil {
            return
        }
    }
}
