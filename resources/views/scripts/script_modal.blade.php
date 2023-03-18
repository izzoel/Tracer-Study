<script>
    var myModal = new bootstrap.Modal(document.getElementById("modal_form_tambah"), {});





    // $('#modal_form_tambah').on('shown.bs.modal', function() {
    //     var html = "";
    //     html += '<tbody><tr>';
    //     html += '<td class="col-auto pe-0 tambahNoUrut"></td>';
    //     html += '<td></td>';
    //     html += '<div></div>';
    //     html += '<td></td>';
    //     html += '</tr></tbody>';
    //     $('.modTambah').append(html);
    // });

    // $('#modal_form_tambah').on('hidden.bs.modal', function() {
    //     $('.modTambah').html("");
    // });


    function modTambah() {
        // $('#modal_form_tambah').on('show.bs.modal', function(e) {
        //     console.log('modal opened');
        //     // Your code goes here
        // })
        // $('#modal_form_tambah').on('hidden.bs.modal', function(e) {
        //     console.log('modal closed');
        //     // Your code goes here
        // })
        // switchStatus = false;
        // switchStatus = false;
        myModal.show();
        lab = $("#opsiList label:last").data("lab");
        $("#gandaOpsi").hide();
        $(".addOpsi").hide();
        $("#opsiList").hide();
        $(".buttonList").hide();
        // $("#pilihan").removeAttr("checked");




        $("#pilihan").on('change', function() {
            if ($('#pilihan').is(':checked')) {
                // switchStatus = $(this).is(':checked');
                $("#gandaOpsi").show();
                $(".addOpsi").show();
                $(".buttonList").show();
                $("#opsiList").show();
                $("#opsiRow").show();
                $("#newRow").show();
                $(".inputOpsi").attr("required", true);
                $("#pilihan").attr("checked", true);
                $("#rmvOpsi").hide();
            } else {
                // switchStatus = $(this).is(':checked');
                $(".addOpsi1").removeAttr("required");
                $(".inputOpsi").removeAttr("required");
                $("#pilihan").removeAttr("checked");
                $("#gandaOpsi").hide();
                $(".addOpsi").hide();
                $(".buttonList").hide();
                $("#opsiList").hide();
                $("#opsiRow").hide();
                $("#newRow").hide();
            }
        });

    }

    function addOpsi() {
        var html = '';
        var lab = $(".addOpsi label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm addOpsi mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1;
        html += '"> ';
        html += lab + 1;
        html +=
            '.</label><input type="text" class="form-control mb-0 addOpsi1" name="opsi[]" required></div>';
        $('#newRow').append(html);

        if (lab >= 1) {
            $("#rmvOpsi").show();
        } else {
            $("#addOpsi").show();
            $("#queOpsi").show();
        }
    }

    function otherOpsi() {
        var html = '';
        var lab = $(".addOpsi label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1
        html += '"> ';
        html += lab + 1;
        html +=
            '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" value="other"></div>';
        $('#newRow').append(html);
        $("#queOpsi").hide();
        $("#addOpsi").hide();
        $("#rmvOpsi").show();
    }

    function removeOpsi() {
        var largestID = $("#newRow input:last");
        largestID.closest('.input-group-sm').remove();
        var lab = $(".addOpsi label:last").data("lab");

        if (lab <= 1) {
            $("#rmvOpsi").hide();
            $("#addOpsi").show();
            $("#queOpsi").show();
        } else {
            $("#addOpsi").show();
            $("#queOpsi").show();
        }
    }
</script>
