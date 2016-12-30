function UltimateMathLib(global) {
    "use asm";
    function square(value) {
        value = +value;
        return +(value * value);
    }
    return { square: square };
}
