import { spawn } from "child_process";
import { fileURLToPath } from "url";
import { dirname } from "path";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const AHK_PATH = "C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey64.exe";

const ahk = spawn(AHK_PATH, ["test.ahk"], {
    cwd: __dirname,
    windowsHide: true
});

ahk.stdout.on("data", (data) => console.log("[AHK]", data.toString()));
ahk.stderr.on("data", (data) => console.log("[AHK-ERR]", data.toString()));
ahk.on("exit", (code) => console.log("AHK exited", code));
