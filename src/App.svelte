<script>
    const modules = import.meta.glob('./funnies/*.wav');
    const funnies = [];
    for (const path in modules) {
        funnies.push(path)
    }
</script>

<main>
    <input type="text" placeholder="pop-up content" id="popup-input">
    <a href="#"><h1>Copy pop-up (run)</h1></a>
    {#each funnies as funny}
    <div class="funny">
        <p>{funny.split('/')[2]}</p>
        <audio src="/src/{funny}" controls></audio> <br>
        <a href="#">copy open-program script (ps1)</a>
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
