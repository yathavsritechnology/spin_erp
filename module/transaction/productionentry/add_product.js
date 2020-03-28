function AddProductionEntry() {
    try {
        var sprodid, sprodname, sprodprice, prodUomId, txt_Rate,txt_Qty, txt_Amount,txt_LotNo;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        prodUomId = (document.getElementById("txt_item_UomId").value == "") ? 0 : document.getElementById("txt_item_UomId").value;
        txt_Qty = (document.getElementById("txt_Qty").value == "") ? 0 : document.getElementById("txt_Qty").value;
        txt_Rate = (document.getElementById("txt_Rate").value == "") ? 0 : document.getElementById("txt_Rate").value;
        txt_LotNo = (document.getElementById("txt_LotNo").value == "") ? 0 : document.getElementById("txt_LotNo").value;
        txt_Amount = (document.getElementById("txt_Amount").value == "") ? 0 : document.getElementById("txt_Amount").value;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        if (sprodid == "") {
            alert("Select Item First...");
            return false;
        }
        if (prodUomId == 0) {
            alert("UOM is missing in Item Master for the Selected Item.");
            return false;
        }
        if (txt_Rate == 0) {
            alert("Enter Rate....");
            document.getElementById("txt_Rate").focus();
            return false;
        }
        if (txt_Qty == 0) {
            alert("Enter Qty....");
            document.getElementById("txt_Qty").focus();
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="txt_ProDetailId[' + n + ']" readonly="true" id="txt_ProDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="UomId[' + n + ']" readonly="true" id="UomId' + n + '" value = "' + prodUomId + '" />'
            + '</td>'
            + '<td>' + sprodname + '</td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumProductionEntry()" class="txt_100 text_align_right" type="text" name="qty[' + n + ']" id="qty' + n + '" value="' + parseFloat(txt_Qty).toFixed(3) + '" /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumProductionEntry()" class="txt_100 text_align_right" type="text" name="Rate[' + n + ']" id="Rate' + n + '" value="' + parseFloat(txt_Rate).toFixed(3) + '" /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumProductionEntry()" class="txt_100 text_align_right" type="text" name="Amount[' + n + ']" id="Amount' + n + '" value="' + parseFloat(txt_Amount).toFixed(3) + '" readonly /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" class="txt_100 text_align_right" type="text" name="LotNo[' + n + ']" id="LotNo' + n + '" value="' + parseFloat(txt_LotNo).toFixed(3) + '"  /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="SumProductionEntry()" /></td>'
            + '</tr>').appendTo("#sivTable");
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_Qty').value = "";
        document.getElementById('txt_Rate').value = "";
        document.getElementById('txt_Amount').value = "";
        document.getElementById('txt_LotNo').value = "";
        document.getElementById('txt_Rate').focus();
       SumProductionEntry();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SumProductionEntry(){
    try{

        var txt_Amount = 0;
        var _totQty = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_active'+k).checked == true)
                {
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    var qty = (document.getElementById('qty'+k).value == "") ? 0 : document.getElementById('qty'+k).value;
                    var amount = (document.getElementById('Amount'+k).value == "") ? 0 : document.getElementById('Amount'+k).value;
                    _totQty += parseFloat(qty);
                    txt_Amount += parseFloat(amount);
                }
            }
        }
        document.getElementById('txt_TotalQty').value = _totQty.toFixed(3);
        document.getElementById('txt_GrandTotal').value = parseFloat(txt_Amount).toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}
