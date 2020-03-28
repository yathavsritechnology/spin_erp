function AddProducts() {
    try {
        var sprodid, sprodname, sprodprice, prodUomId, prodsUomId, prodUomName, supBalNo, supWt, millWt;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        supBalNo = document.getElementById("txt_SupplierBaleNo").value;
        supWt = (document.getElementById("txt_SupplierWt").value == "") ? 0 : document.getElementById("txt_SupplierWt").value;
        millWt = (document.getElementById("txt_MillsWt").value == "") ? 0 : document.getElementById("txt_MillsWt").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        prodUomId = (document.getElementById("txt_item_UomId").value == "") ? 0 : document.getElementById("txt_item_UomId").value;
        prodUomName = (document.getElementById("txt_item_UomName").value == "") ? 0 : document.getElementById("txt_item_UomName").value;
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
        if (supBalNo == "") {
            alert("Supplier bale no missing....");
            document.getElementById("txt_SupplierBaleNo").focus();
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="txt_CiDetailId[]" readonly="true" id="txt_CiDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_CiId[]" readonly="true" id="txt_CiId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="slno[]" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[]" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="prodUomId[]" readonly="true" id="prodUomId' + n + '" value = "' + prodUomId + '" />'
            + '</td>'
            + '<td>' + sprodname + '</td>'
            + '<td><input onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="SumCottonInward()" class="txt_100 text_align_right" type="text" name="supBalNo[]" id="supBalNo' + n + '" value="' + parseFloat(supBalNo).toFixed(0) + '" /></td>'
            + '<td hidden><input onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="SumCottonInward()" class="txt_100 text_align_right" type="text" name="supWt[]" id="supWt' + n + '" value="' + parseFloat(supWt).toFixed(3) + '" /></td>'
            + '<td><input onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="SumCottonInward()" class="txt_100 text_align_right" type="text" name="millWt[]" id="millWt' + n + '" value="' + parseFloat(millWt).toFixed(3) + '" /></td>'
            + '<td>' + prodUomName + '</td>'
            + '<td><input checked type="checkbox" name="chk_active[]" id="chk_active'+n+'" onchange="SumCottonInward()" /></td>'
            + '</tr>').appendTo("#sivTable");
        //+ '<td><input type="button" id="remove-box' + n + '" value="Del-' + n + '"  class="remove-box" /></td>'
        //document.getElementById('txt_item_ItemId').value="";
        //document.getElementById('txt_item_ItemName').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_SupplierBaleNo').value = "";
        document.getElementById('txt_SupplierWt').value = "";
        document.getElementById('txt_MillsWt').value = "";
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_SupplierBaleNo').focus();
        SumCottonInward();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SumCottonInward(){
    try{
        var _supWt = 0;
        var _millWt = 0;
        var _totBales = 0;
        var MillsNetWt = 0;
        var MillsInvAmount = 0;
        var SuppNetWt = 0;
        var DiffAmount = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_active'+k).checked == true)
                {
                    _totBales += 1;
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    _millWt += parseFloat(document.getElementById('millWt'+k).value);
                }
            }
        }
        document.getElementById('txt_TotalBales').value=_totBales.toFixed(2);
        document.getElementById('txt_TotalMillsWt').value=_millWt.toFixed(3);
        var TotalMillsTareWt = (document.getElementById("txt_TotalMillsTareWt").value == "") ? 0 : document.getElementById("txt_TotalMillsTareWt").value;
        var BalesRate = (document.getElementById("txt_BalesRate").value == "") ? 0 : document.getElementById("txt_BalesRate").value;
        MillsNetWt = parseFloat(parseFloat(_millWt) - parseFloat(TotalMillsTareWt));
        MillsInvAmount = parseFloat(parseFloat(MillsNetWt) * parseFloat(BalesRate));
        document.getElementById('txt_TotalMillsNetWt').value=MillsNetWt.toFixed(3);
        document.getElementById('txt_InwardAmount').value=MillsInvAmount.toFixed(2);

        var TotalSupplierWt = (document.getElementById("txt_TotalSupplierWt").value == "") ? 0 : document.getElementById("txt_TotalSupplierWt").value;
        var TotalSupplierTareWt = (document.getElementById("txt_TotalSupplierTareWt").value == "") ? 0 : document.getElementById("txt_TotalSupplierTareWt").value;
        SuppNetWt = parseFloat(parseFloat(TotalSupplierWt) - parseFloat(TotalSupplierTareWt));
        document.getElementById('txt_TotalSupplierNetWt').value=SuppNetWt.toFixed(3);

        var SupplierInvoiceAmount = (document.getElementById("txt_SupplierInvoiceAmount").value == "") ? 0 : document.getElementById("txt_SupplierInvoiceAmount").value;
        DiffAmount=parseFloat(parseFloat(SupplierInvoiceAmount) - parseFloat(MillsInvAmount));
        document.getElementById('txt_DiffAmount').value=DiffAmount.toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}
