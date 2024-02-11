<td class="col pe-0 pt-0">
    <div class="row ms-0">
        <div class="form-check mb-0 ps-0 me-0">
            <input class="form-check-input gandaOpsi19" type="radio" id="191" required="" name="sudah_bekerja1"
                value="Pemerintah" for="191">
            <label for="191" style="float:left;width: 75%;">
                <span class="form-check-label text-dark">Pemerintah</span>
            </label>
        </div>
    </div>
    <!-- Repeat similar structures for other radio buttons -->

    <div class="row input-other">
        <div class="col-auto form-check ms-2 ps-1 me-0 pe-0">
            <input class="form-check-input otherOpsiName19 gandaOpsi19" type="radio" id="other1"
                name="sudah_bekerja1">
        </div>
        <div class="col ms-0 ps-0">
            <div class="input-group input-group-sm mb-1" style="min-width: 100%;width: 3rem">
                <input type="text" class="form-control" data-other="other1" id="otherOpsi19" for="other1">
            </div>
        </div>
    </div>
</td>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('.input-group input[type="text"]').focus(function() {
            // Select the associated radio button when the input is focused
            $('#other1').prop('checked', true).change();
        });
    });
</script>
