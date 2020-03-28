function BaleChart_Validation_Form(){
    try{
        var txt_IsLotNo = (document.getElementById('txt_IsLotNo').value == '') ? 0 : document.getElementById('txt_IsLotNo').value;
        var txt_IsBaleNo = (document.getElementById('txt_IsBaleNo').value == '') ? 0 : document.getElementById('txt_IsBaleNo').value;
        var txt_date = document.getElementById("txt_date").value;
        if(txt_date == ""){
            alert("Select Date First....");
            return false;
        }
        var txt_RowCount = (document.getElementById('txt_RowCount').value == '') ? 0 : document.getElementById('txt_RowCount').value;
        if(txt_RowCount == 0){
            alert("Generate the record first....");
            return false;
        }
        if(txt_RowCount > 0){
            for(i=1; i<= txt_RowCount; i++){
                var txt_IsValid = (document.getElementById('txt_IsValid' + i).value == '') ? 0 : document.getElementById('txt_IsValid' + i).value;
                var txt_MillLotNo = (document.getElementById('txt_MillLotNo' + i).value == '') ? 0 : document.getElementById('txt_MillLotNo' + i).value;
                var txt_BaleNo = (document.getElementById('txt_BaleNo' + i).value == '') ? 0 : document.getElementById('txt_BaleNo' + i).value;
                if(txt_IsLotNo == 0 && txt_IsBaleNo == 1) {
                    if ((txt_MillLotNo != 0 || txt_BaleNo != 0) && txt_IsValid == 0) {
                        alert("Invalid Bale and Mill lot no");
                        return false;
                    }
                }
                else{
                    if ((txt_MillLotNo != 0) && txt_IsValid == 0) {
                        alert("Invalid Mill lot no");
                        return false;
                    }
                }
                if(document.getElementById('chk_active'+i).checked == true) {
                    if (txt_IsValid == 0) {
                        alert("Invalid Mill Lot No and Bale No...");
                        document.getElementById('txt_MillLotNo' + i).focus();
                        return false;
                    }
                }
            }
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function ClearDiv(){
    $("div.sortable").html('');
    document.getElementById("txt_RowCount").value=0;
}

function gen_BalesArrChart() {
    var menuid = 0;
    var txt_date = document.getElementById('txt_date').value;
    var txt_hCount = document.getElementById('txt_hCount').value;
    var txt_vCount = document.getElementById('txt_vCount').value;
    var txt_NoOfRows = document.getElementById('txt_NoOfRows').value;
    var txt_BaleChartId = document.getElementById('txt_BaleChartId').value;
    var txt_BaleArrId = document.getElementById('txt_BaleArrId').value;
    var url_path = document.getElementById('url_path').value;
    if(txt_date == ""){
        alert("Select Date");
        return false;
    }
    if(txt_NoOfRows == 0){
        alert("Select Bale Count");
        return false;
    }
    var msgbox = $("div.sortable");
    msgbox.html('<img src="<?= IMG_URL ?>/loading.gif">&nbsp;LOADING.');
    $.ajax({
        type: 'post',
        url: url_path + "ajax.php",
        data: 'GenBale_ChartEntry=1&txt_hCount=' + txt_hCount + '&txt_vCount=' + txt_vCount + '&txt_NoOfRows=' + txt_NoOfRows + '&txt_BaleChartId=' + txt_BaleChartId + '&txt_BaleArrId=' + txt_BaleArrId,
        cache: false,
        success: function (html) {
            msgbox.html(html);
        }
    });
}

function mark_all(){
    var txt_RowCount = document.getElementById("txt_RowCount").value;
    if(document.getElementById("chk_all").checked==true){
        if(txt_RowCount > 0){
            for(i=1;i<= txt_RowCount; i++){
                document.getElementById("chk_active"+i).checked=true;
            }
        }
    }
    else{
        if(txt_RowCount > 0){
            for(i=1;i<= txt_RowCount; i++){
                document.getElementById("chk_active"+i).checked=false;
            }
        }
    }
}

function sel_active(n){
    var txt_IsLotNo = (document.getElementById('txt_IsLotNo').value == '') ? 0 : document.getElementById('txt_IsLotNo').value;
    var txt_IsBaleNo = (document.getElementById('txt_IsBaleNo').value == '') ? 0 : document.getElementById('txt_IsBaleNo').value;
    var txt_MillLotNo = document.getElementById("txt_MillLotNo"+n).value;
    var txt_BaleNo = (document.getElementById("txt_BaleNo"+n).value != "") ? document.getElementById("txt_BaleNo"+n).value : 0;
    var txt_BaleArrId = document.getElementById("txt_BaleArrId").value;
    var url_path = document.getElementById("url_path").value;
    var msgbox = $("div.bale_status"+n);
    msgbox.html('<img src="<?= IMG_URL ?>/loading.gif">&nbsp;LOADING.');
    if(txt_IsLotNo == 1 && txt_IsBaleNo == 0){
        if(txt_MillLotNo != ''){
            $.ajax({
                type: 'post',
                url: url_path+"ajax.php",
                data: 'Validate_LotNo_BaleNo=1&txt_MillLotNo=' + txt_MillLotNo + '&txt_BaleNo=' + txt_BaleNo + '&txt_BaleArrId=' + txt_BaleArrId + '&n=' + n + '&txt_IsLotNo=' + txt_IsLotNo + '&txt_IsBaleNo=' + txt_IsBaleNo,
                cache: false,
                success: function (html) {
                    msgbox.html(html);
                }
            });
        }
        else{
            var c = '';
            c += '<input class="txt_40" type="hidden" id="txt_CiDetailId' + n + '" name="txt_CiDetailId[' + n + ']" value="0" />';
            c += '<input class="txt_40" type="hidden" id="txt_CiId' + n + '" name="txt_CiId[' + n + ']" value="0" />';
            c += '<input class="txt_40" type="hidden" id="txt_SupplierId' + n + '" name="txt_SupplierId[' + n + ']" value="0" />';
            c += '<input class="txt_40" type="hidden" id="txt_SupplierLotNo' + n + '" name="txt_SupplierLotNo[' + n + ']" value="" />';
            c += '<input class="txt_40" type="hidden" id="txt_SupplierWt' + n + '" name="txt_SupplierWt[' + n + ']" value="0" />';
            c += '<input class="txt_40" type="hidden" id="txt_MillWt' + n + '" name="txt_MillWt[' + n + ']" value="0" />';
            c += '<input class="txt_40" type="hidden" id="txt_IsValid' + n + '" name="txt_IsValid[' + n + ']" value="0" />';
            msgbox.html(c);
            document.getElementById("chk_active" + n).checked = false;
        }
    }
    else{
            if(txt_MillLotNo != '' && txt_BaleNo > 0){
                $.ajax({
                    type: 'post',
                    url: url_path+"ajax.php",
                    data: 'Validate_LotNo_BaleNo=1&txt_MillLotNo=' + txt_MillLotNo + '&txt_BaleNo=' + txt_BaleNo + '&txt_BaleArrId=' + txt_BaleArrId + '&n=' + n + '&txt_IsLotNo=' + txt_IsLotNo + '&txt_IsBaleNo=' + txt_IsBaleNo,
                    cache: false,
                    success: function (html) {
                        msgbox.html(html);
                    }
                });
            }
            else{
                var c = '';
                c += '<input class="txt_40" type="hidden" id="txt_CiDetailId' + n + '" name="txt_CiDetailId[' + n + ']" value="0" />';
                c += '<input class="txt_40" type="hidden" id="txt_CiId' + n + '" name="txt_CiId[' + n + ']" value="0" />';
                c += '<input class="txt_40" type="hidden" id="txt_SupplierId' + n + '" name="txt_SupplierId[' + n + ']" value="0" />';
                c += '<input class="txt_40" type="hidden" id="txt_SupplierLotNo' + n + '" name="txt_SupplierLotNo[' + n + ']" value="" />';
                c += '<input class="txt_40" type="hidden" id="txt_SupplierWt' + n + '" name="txt_SupplierWt[' + n + ']" value="0" />';
                c += '<input class="txt_40" type="hidden" id="txt_MillWt' + n + '" name="txt_MillWt[' + n + ']" value="0" />';
                c += '<input class="txt_40" type="hidden" id="txt_IsValid' + n + '" name="txt_IsValid[' + n + ']" value="0" />';
                msgbox.html(c);
                document.getElementById("chk_active" + n).checked = false;
            }
    }
        //document.getElementById("chk_active"+n).checked=true;
}