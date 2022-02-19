function onSubmitClick(e) {
    e.preventDefault();
    if (checkX() && checkY() && checkR()) {
        let x = parseFloat(getXValue());
        let y = parseFloat(getYValue());
        let r = getRValue();
        writeErrorMessage("");

        // ajax submit
        $.ajax({
            type: "POST",
            url: "controller",
            data: {
                "x-value": x,
                "y-value": y,
                "r-value": r
            },
            success: function () {
                if (getUrlContext() !== "answer.jsp") {
                    document.location.href = "answer.jsp";
                } else {
                    document.location.reload();
                }
            }
        });
    }
}
$("input:checkbox").on('click', function() {
    // in the handler, 'this' refers to the box clicked on
    const $box = $(this);
    if ($box.is(":checked")) {
        // the name of the box is retrieved using the .attr() method
        // as it is assumed and expected to be immutable
        const group = "input:checkbox[name='" + $box.attr("name") + "']";
        // the checked state of the group/box on the other hand will change
        // and the current value is retrieved using .prop() method
        $(group).prop("checked", false);
        $box.prop("checked", true);
    } else {
        $box.prop("checked", false);
    }
});
$('.rainbow-button.hvr-grow').click(function () {
    $('.rainbow-button.hvr-grow').removeClass('active');
    $(this).addClass('active');
});


$('input[name="x-value"]').keyup(checkX);
$('.r-button.hvr-grow').click(function () {
    $('.r-button.hvr-grow').removeClass('active');
    $(this).addClass('active');
});

$('button[name=\"btn-submit\"]').on("click", onSubmitClick);

// handler enter key
// enter key code = 13
$("#data-form").keydown(function (event) {
    if (event.keyCode === 13) {
        event.preventDefault();
        $('button[name=\"btn-submit\"]').click();
    }
});
