document.getElementById("btn-asmjs").addEventListener("click", function asmSquare() {
    const ultimateMathLib = new UltimateMathLib(window);
    const value = document.getElementById("txtValue").value;
    console.log(ultimateMathLib.square);
    console.log(ultimateMathLib.square(value));
}, false);

var wasmLoaded = fetch("ultimatemathlib.wasm")
    .then(function(response) {
        return response.arrayBuffer();
    }).then(function(buffer) {
        const moduleBufferView = new Uint8Array(buffer);
        const UltimateMathLib = Wasm.instantiateModule(moduleBufferView);
        const square = UltimateMathLib.exports.square;
        return square;
    });

wasmLoaded.then(function(square) {
    document.getElementById("btn-wasm").addEventListener("click", function() {
        const value = document.getElementById("txtValue").value;
        console.log(square);
        console.log(square(value));
    }, false);
});
