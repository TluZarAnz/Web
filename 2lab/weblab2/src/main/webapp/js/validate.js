const Y_INVALID_MESSAGE = "Select X value";
const X_INVALID_MESSAGE = "Fix Y value";
const R_INVALID_MESSAGE = "Fix R value";
const X_MAX_VALUE = 5;
const X_MIN_VALUE = -5;

const X_ELEMENT = $('input[name="x-value"]');



function checkInput(min, max, element) {
    let text = element.val().replace(",", ".");
    element.val(text);
    let val = parseFloat(text);
    if (/^(-?\d+)(\.\d+)?$/.test(text) && val >= min && val <= max) {
        $(element).css("border-color", "green");
        return true;
    } else {
        $(element).css("border-color", "red");
        return false;
    }
}

function checkX() {
    if (!checkInput(X_MIN_VALUE, X_MAX_VALUE, X_ELEMENT)) {
        writeErrorMessage(X_INVALID_MESSAGE);
        return false;
    }
    writeErrorMessage("");
    return true;
}

function checkY() {
    if ($('.rainbow-button.active').val() === undefined) {
        writeErrorMessage(Y_INVALID_MESSAGE);
        return false;
    } else {
        return true;
    }
}

function writeErrorMessage(message) {
    $("#error-log").html(message);
}

function checkR() {
    if ($('.r-button.hvr-grow.active').val() === undefined) {
        writeErrorMessage(R_INVALID_MESSAGE);
        return false;
    } else {
        return true;
    }
}