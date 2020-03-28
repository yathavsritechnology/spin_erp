function CalculateYarnReceiptSum(){
    try{
        var _RecQty = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(k > 0) {
                    if (document.getElementById('chk_active' + k).checked == true) {
                        _RecQty += parseFloat(document.getElementById('txt_RecQty' + k).value);
                    }
                }
            }
        }
        document.getElementById('txt_TotalIssueCount').value=_RecQty.toFixed(3);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}