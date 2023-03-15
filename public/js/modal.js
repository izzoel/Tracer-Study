@foreach ($form_alumni_belum_bekerja as $data)
    @php
        if ($data->pilihan == '') {
            $noPilihan = 1;
        } else {
            $noPilihan = 0;
        }
    @endphp
    <script>
        $('#modal_edit_' + {{ $data->no }}).on('shown.bs.modal', function(e) {
            if ({{ $noPilihan }} == 1) {
                $(".buttonListBB" + {{ $data->no }}).hide();
                $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
            } else {
                $("#gandaOpsiEditBB" + {{ $data->no }}).show();
            }

            if ({{ $data->other }} != 0) {
                $("#queOpsiBB" + {{ $data->no }}).hide();
                $("#addOpsiBB" + {{ $data->no }}).hide();
            }

            $('#edit_pilihan_BB' + {{ $data->no }}).on("change", function() {
                if ($(this).is(':checked')) {
                    $("#gandaOpsiEditBB" + {{ $data->no }}).show();
                    $(".editOpsiBB" + {{ $data->no }}).show();
                    $("#opsiListBB" + {{ $data->no }}).show();
                    $(".buttonListBB" + {{ $data->no }}).show();
                    $("#opsiRowBB").show();
                    $("#newRowBB").show();
                    $(".inputOpsiBB").attr("required", true);

                    var html = '';
                    var lab = 0;
                    html += '<div class="input-group input-group-sm mb-1 editOpsiBB' +
                        {{ $data->no }};
                    html += '"><label class="input-group-text" data-edit="';
                    html += lab + 1;
                    html += '" data-lab="';
                    html += lab + 1;
                    html += '"> ';
                    html += lab + 1;
                    html +=
                        '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';
                    if ($('.editOpsiBB' + {{ $data->no }}).length) {
                        $("#addOpsiBB" + {{ $data->no }}).show();
                        $("#queOpsiBB" + {{ $data->no }}).show();
                    } else {
                        $('#editRowBB' + {{ $data->no }}).prepend(html);
                        $("#rmvOpsiBB" + {{ $data->no }}).hide();
                        $("#addOpsiBB" + {{ $data->no }}).show();
                        $("#queOpsiBB" + {{ $data->no }}).show();
                    }
                } else {
                    switchStatus = $(this).is(':checked');
                    $(".inputOpsiBB").removeAttr("required");
                    $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
                    $(".editOpsiBB" + {{ $data->no }}).hide();
                    $("#opsiListBB" + {{ $data->no }}).hide();
                    $(".buttonListBB" + {{ $data->no }}).hide();
                    $("#opsiRowBB").hide();
                    $("#newRowBB").hide();
                    $(".noPilihanBB" + {{ $data->no }}).remove();
                }
            });
        });

        function editOpsiBB{{ $data->no }}() {
            var html = '';
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            html += '"><label class="input-group-text" data-edit="';
            html += lab + 1;
            html += '" data-lab="';
            html += lab + 1;
            html += '"> ';
            html += lab + 1;
            html +=
                '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

            $('#editRowBB' + {{ $data->no }}).append(html);
            $("#rmvOpsiBB" + {{ $data->no }}).show();
        }

        function otherOpsiBB{{ $data->no }}() {
            var html = '';
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            html += '"><label class="input-group-text" data-edit="';
            html += lab + 1;
            html += '" data-lab="';
            html += lab + 1;
            html += '"> ';
            html += lab + 1;
            html +=
                '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled></div><input type="hidden" name="other" value="other"></div>';

            $('#editRowBB' + {{ $data->no }}).append(html);
            $("#addOpsiBB" + {{ $data->no }}).hide();
            $("#queOpsiBB" + {{ $data->no }}).hide();
            $("#rmvOpsiBB" + {{ $data->no }}).show();
        }

        function removeOpsiBB{{ $data->no }}() {
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");
            var largestID = $(".editOpsiBB" + {{ $data->no }} + ":last").remove();

            if (lab <= 2) {
                $("#rmvOpsiBB" + {{ $data->no }}).hide();
                $("#addOpsiBB" + {{ $data->no }}).show();
                $("#queOpsiBB" + {{ $data->no }}).show();
            } else {
                $("#addOpsiBB" + {{ $data->no }}).show();
                $("#queOpsiBB" + {{ $data->no }}).show();
            }
        }
    </script>
@endforeach