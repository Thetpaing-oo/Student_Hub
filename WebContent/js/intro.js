$(document).ready(function () {
    $('input:checkbox').change(function () {//Clicking input radio
        var radioClicked = $(this).attr('id');
      console.log(radioClicked);
        unclickRadio();
        removeActive();
        clickRadio(radioClicked);
        makeActive(radioClicked);
    });
    $(".card").click(function () {//Clicking the card
        var inputElement = $(this).find('input[type=checkbox]').attr('id');
      console.log(inputElement);
        unclickRadio();
        removeActive();
        makeActive(inputElement);
        clickRadio(inputElement);
    });
});


function unclickRadio() {
    $("input:checkbox").prop("checked", false);
}

function clickRadio(inputElement) {
    $("#" + inputElement).prop("checked", true);
}

function removeActive() {
    $(".card").removeClass("active");
}

function makeActive(element) {
  console.log(element);
    $("#" + element + "-card").addClass("active");
}