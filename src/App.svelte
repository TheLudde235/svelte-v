<script>
    const modules = import.meta.glob('./funnies/*.wav');
    let funnies = [];
    
    for (const path in modules) {
        modules[path]().then(m => {
            console.log(m.default)
            funnies = [...funnies, m.default];
        });
    }

    function copyScript(file) {
        const name = file.split('/')[2];
        const text = `if(-not (Test-Path -Path  \"$env:USERPROFILE\\${name}\")){Invoke-WebRequest -Uri \"https://v.theludde235.se/assets/${name}\" -OutFile \"$env:USERPROFILE\\${name}\";}Set-ItemProperty -Path \"HKCU:\\AppEvents\\Schemes\\Apps\\.Default\\Open\\.Current\" -Name \"(Default)\" -Type \"String\" -Value \"$env:USERPROFILE\\${file}\";`;
        navigator.clipboard.writeText(text);
    }
  
//   document.querySelector('a:not(.sound)').addEventListener('click', () => {
//     const text = document.querySelector('input').value;
//     navigator.clipboard.writeText(
//       `C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -noexit -ExecutionPolicy Bypass "Add-Type -AssemblyName System.Windows.Forms;[System.Windows.Forms.MessageBox]::Show('${text}');"`
//     );
//   });
</script>

<main>
    <input type="text" placeholder="pop-up content" id="popup-input">
    <a href="#"><h1>Copy pop-up (run)</h1></a>
    {#each funnies as funny}
    <div class="funny">
        <p>{funny.split('/')[2]}</p>
        <audio src="{funny}" controls></audio> <br>
        <a href="#" on:click={copyScript(funny)}>copy open-program script (ps1)</a>
        <hr>
    </div>
    {/each}

    <a href="#">Clear</a>
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
    
    h1, a {
        margin: 10px;
    } 
</style>
