function JobWorkAddProducts() {
    try {
        var sprodid, sprodname, txt_RetQty, txt_MillAmount;
        var prodUomId =0;
        var prodUomName ="";
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        txt_RetQty = (document.getElementById("txt_RetQty").value == "") ? 0 : document.getElementById("txt_RetQty").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        if (sprodid == "") {
            alert("Select Item First...");
            return false;
        }
        if (txt_RetQty == 0) {
            alert("Enter Return Qty...");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="txt_JobWorkReturnDetailId[' + n + ']" readonly="true" id="txt_JobWorkReturnDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_JobWorkReturnId[' + n + ']" readonly="true" id="txt_JobWorkReturnId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="prodUomId[' + n + ']" readonly="true" id="prodUomId' + n + '" value = "' + prodUomId + '" />'
            + '</td>'
            + '<td>' + sprodname + '</td>'
            + '<td>' + prodUomName + '</td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_100 text_align_right" type="text" name="RetQty[' + n + ']" id="RetQty' + n + '" value="' + parseFloat(txt_RetQty).toFixed(3) + '" /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="SumCottonInward()" /></td>'
            + '</tr>').appendTo("#sivTable");
        //+ '<td><input type="button" id="remove-box' + n + '" value="Del-' + n + '"  class="remove-box" /></td>'
        //document.getElementById('txt_item_ItemId').value="";
        //document.getElementById('txt_item_ItemName').value="";
        //document.getElementById('txt_item_UomId').value="";

        document.getElementById('txt_RetQty').value = "";
        document.getElementById('txt_RowCount').value = n;
        CalculateJobworkSum();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalculateJobworkSum(){
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
                        _RecQty += parseFloat(document.getElementById('RetQty' + k).value);
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