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
});



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


$(document).ready(function () {
    $('[data-toggle="offcanvas"]').click(function () {
        $('.row-offcanvas').toggleClass('active')
    });


    $('.tags-sidebar').height($('#products').height());
});



/*--------------------------------------------------------------------------------------------------------------------*/
$(document).ready(function () {
    $('#list').click(function (event) {
        event.preventDefault();
        $('#products .item').addClass('list-group-item');
        $('#products .item').removeClass('grid-group-item');
        $('#list').addClass('active');
        $('#grid').removeClass('active');
    });

    $('#grid').click(function (event) {
        event.preventDefault();
        $('#products .item').removeClass('list-group-item');
        $('#products .item').addClass('grid-group-item');
        $('#grid').addClass('active');
        $('#list').removeClass('active');

    });
});


$(document).ready(function () {

    $('#inpTags').selectize({
        delimiter: ',',
        persist: false,
        create: function (input) {
            return {
                value: input,
                text: input
            }
        }
    });

    $("#inpCover").fileinput({
        language: "pt",
        allowedFileExtensions: ["jpg", "png", "gif"],
        browseClass: "btn btn-primary btn-block",
        showCaption: false,
        showRemove: false,
        showUpload: false,
        previewSettings: {
            image: { width: "100%", height: "auto" }
        },


        maxFileSize: 1500,
        previewFileType: "image",
        browseLabel: "Procurar Capa",
        browseIcon: "<i class=\"glyphicon glyphicon-picture\"></i> ",
        allowedFileTypes: ["image"],
    });

    $("#inpImage").fileinput({
        language: "pt",
        allowedFileExtensions: ["jpg", "png", "gif"],
        showUpload: false,
        maxFileCount: 6,
        maxFileSize: 1500,
        previewFileType: "image",
        browseClass: "btn btn-primary",
        browseLabel: "Procurar Imagens",
        browseIcon: "<i class=\"glyphicon glyphicon-picture\"></i> ",
        allowedFileTypes: ["image"],
    });
    $("#inpAttach").fileinput({
        language: "pt",
        //allowedFileExtensions: ["jpg", "png", "gif"],
        showUpload: false,
        showPreview: false,
        maxFileCount: 3,
        browseClass: "btn btn-primary",
        browseLabel: "Procurar Anexos",
    });


    var REGEX_EMAIL = '([a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@' +
                      '(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)';



    $('#inpConvt').selectize({
        createFilter: REGEX_EMAIL,
        delimiter: ',',
        create: function (input) {
            return {
                value: input,
                text: input
            }
        }
    });








    //--------------------------------------Reportar_Erros----------------------------------------
    $("#fu_error").fileinput({
        language: "pt",
        maxFileCount: 3,
        showUpload: false,
        maxFileSize:'1000'
    });













});



