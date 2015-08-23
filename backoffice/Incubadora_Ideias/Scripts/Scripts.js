//registation photo upload

function readURL(input) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $('#blah').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
}

$(document).on('change', '.btn-file :file', function () {
    var input = $(this),
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [1, label]);
});

$(document).ready(function () {
    $('.btn-file :file').on('fileselect', function (event, numFiles, label) {
        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label;
        if (input.length) {
            input.val(log);
        } else {
            if (log) alert(log);
        }
    });
    $('#tab_ideia a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
});

function changtabe() {
    $('#ul_tabs a[href=\"#menu1\"]').tab('show')
}



//footer auto resize
var bumpIt = function () {
    $('body').css('margin-bottom', $('.footer').height() + 25);
},
    didResize = false;

$(window).resize(function () {
    didResize = true;
});
setInterval(function () {
    if (didResize) {
        didResize = false;
        bumpIt();
    }
}, 250);
bumpIt();



/*search tags*/
$(document).ready(function () {
    $('#inp_search').on('keyup', function () {
        var searchText = $(this).val();
        $('.tag-list a').each(function () {
            var currentLiText = $(this).clone().children().remove().end().text().toLowerCase(),
                    showCurrentLi = currentLiText.indexOf(searchText) !== -1;
            $(this).toggle(showCurrentLi);
        });
    });

    
});

/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/

function EditarUser(id){
    console.log(id);
    
    
    $.ajax({
        url: "BackOffica.aspx/EditarUser",
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        datatype: "json",
        data: "{ 'Id':'" + id + "' }",
        success: function (result) {
            console.log(result);
            $("#txtEmail").val(result.d.Email);
            $("#Password").val(result.d.Password);
        },
        error: function (result) {

            console.log(result);
        }
});
        


}





/*--------------------------------------------------------------------------------------------------------------------*/
