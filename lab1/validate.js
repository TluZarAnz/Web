$(document).ready(function (){

    let x = undefined;
    let r = undefined;
    let y = undefined;

    $('.btn-x').on('click', function () {
        x = Number($(this).text());
        $('.btn-x').removeClass('selected-x');
        $(this).addClass('selected-x');
        console.log("тип: " + typeof(x) + ", значение: " + x);
    })

    $('#check-btn').on('click', function () {
        let value = $('#input-y').val().replace(',','.').trim();
        if (value != '') {
            value = Number(value);
            if (value >= -5 && value <= 3) {
                y = value;
            } else {
                alert("Введен некорректный Y");
                $('#input-y').val('');
                return;
            }
        }
        let valueR = $('#input-r').val().replace(',','.').trim();
        if (valueR != '') {
            valueR = Number(valueR);
            if (valueR >= 1 && valueR <= 4) {
                r = valueR;
            } else {
                alert("Введен некорректный R");
                $('#input-r').val('');
                return;
            }
        }
        if (y != undefined && x != undefined && r != undefined) {
            $.ajax ({
                url: 'check.php',
                type: 'GET',
                cache: false,
                data: {'r': r, 'x': x, 'y': y},
                dataType: 'html',
                success: function (data) {
                    document.getElementById("output").innerHTML = data;
                }
            })
        } else {
            alert("Не все поля заполнены");
        }
    })

    $('#output').load("check.php")

})