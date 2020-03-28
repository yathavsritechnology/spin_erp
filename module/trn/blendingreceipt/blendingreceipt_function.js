function CalculateBlendingReceiptSum(){
    try{
        var _ReceiptBag = 0;
        var _ReceiptQty = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(k > 0) {
                    if (document.getElementById('chk_active' + k).checked == true) {
                        _ReceiptQty += parseFloat(document.getElementById('txt_Qty' + k).value);
                        _ReceiptBag += parseFloat(document.getElementById('txt_ReceiptBag' + k).value);
                    }
                }
            }
        }
        document.getElementById('txt_TotalQty').value=_ReceiptQty.toFixed(3);
        document.getElementById('txt_TotalBags').value=_ReceiptBag.toFixed(3);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}