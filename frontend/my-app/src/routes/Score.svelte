<script>
    let open = false;
    let score = null;

    function selectScore(s) {
        score = s;
        open = false;
    }
</script>

<button
    class=" text-black rounded text-center underline"
    on:click={() => {
        open = true;
    }}
>
    Score
</button>

{#if open}
    <div
        class="fixed inset-0 flex items-center justify-center bg-gray-500 bg-opacity-50 padding"
    >
        <div class="bg-white rounded shadow p-6">
            <div class="grid grid-cols-2 gap-4">
                <button
                    class="w-full bg-green-500 text-white px-4 py-2 rounded"
                    class:bg-green-800={score == "A"}
                    on:click={() => selectScore("A")}
                >
                    A
                </button>

                <button
                    class="w-full bg-blue-500 text-white px-4 py-2 rounded"
                    class:bg-blue-800={score == "B"}
                    on:click={() => selectScore("B")}
                >
                    B
                </button>

                <button
                    class="w-full bg-yellow-500 text-white px-4 py-2 rounded"
                    class:bg-yellow-800={score == "C"}
                    on:click={() => selectScore("C")}
                >
                    C
                </button>

                <button
                    class="w-full bg-orange-500 text-white px-4 py-2 rounded"
                    class:bg-orange-800={score == "D"}
                    on:click={() => selectScore("D")}
                >
                    D
                </button>
            </div>
        </div>
    </div>
{/if}

{#if score}
    <div class="p-4 rounded text-2xl">{score}</div>
{/if}

<style>
    .padding {
        padding-left: 900px;
        padding-bottom: 400px;
    }
</style>
