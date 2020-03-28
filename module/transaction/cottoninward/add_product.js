function AddProducts() {
    try {
        var sprodid, sprodname, sprodprice, prodUomId, prodsUomId, prodUomName, supBalNo, supWt, millWt, txt_Rate, txt_MillAmount;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        supBalNo = document.getElementById("txt_SupplierBaleNo").value;
        supWt = (document.getElementById("txt_SupplierWt").value == "") ? 0 : document.getElementById("txt_SupplierWt").value;
        millWt = (document.getElementById("txt_MillsWt").value == "") ? 0 : document.getElementById("txt_MillsWt").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        prodUomId = (document.getElementById("txt_item_UomId").value == "") ? 0 : document.getElementById("txt_item_UomId").value;
        prodUomName = (document.getElementById("txt_item_UomName").value == "") ? 0 : document.getElementById("txt_item_UomName").value;
        txt_Rate = (document.getElementById("txt_Rate").value == "") ? 0 : document.getElementById("txt_Rate").value;
        txt_MillAmount = (document.getElementById("txt_MillAmount").value == "") ? 0 : document.getElementById("txt_MillAmount").value;
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
        if (txt_Rate == "") {
            alert("Enter Rate....");
            document.getElementById("txt_Rate").focus();
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="txt_CiDetailId[' + n + ']" readonly="true" id="txt_CiDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="prodUomId[' + n + ']" readonly="true" id="prodUomId' + n + '" value = "' + prodUomId + '" />'
            + '</td>'
            + '<td>' + sprodname + '</td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_100 text_align_right" type="text" name="supBalNo[' + n + ']" id="supBalNo' + n + '" value="' + parseFloat(supBalNo).toFixed(0) + '" /></td>'
            + '<td><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_100 text_align_right" type="text" name="supWt[' + n + ']" id="supWt' + n + '" value="' + parseFloat(supWt).toFixed(3) + '" /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_100 text_align_right" type="text" name="millWt[' + n + ']" id="millWt' + n + '" value="' + parseFloat(millWt).toFixed(3) + '" /></td>'
            + '<td>' + prodUomName + '</td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_60 text_align_right" type="text" name="rates[' + n + ']" id="rates' + n + '" value="' + parseFloat(txt_Rate).toFixed(3) + '" /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonInward()" class="txt_100 text_align_right" type="text" name="millamount[' + n + ']" id="millamount' + n + '" value="' + parseFloat(txt_MillAmount).toFixed(3) + '" readonly /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="SumCottonInward()" /></td>'
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
        var _totAmount = 0;
        var MillsNetWt = 0;
        var MillsInvAmount = 0;
        var SuppNetWt = 0;
        var DiffAmount = 0;
        var DiffWeight = 0;
        var txt_MoistureRegain = document.getElementById("txt_MoistureRegain").value;
        var txt_AverageMoisture = document.getElementById("txt_AverageMoisture").value;
        if(IsFormula == 1) {
            if (txt_MoistureRegain == 0) {
                alert("Enter Moisture Regain %");
                return false;
            }
            if (txt_AverageMoisture == 0) {
                alert("Enter Average Moisture %");
                return false;
            }
        }
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
                    var ss = (document.getElementById('millWt'+k).value == "") ? 0 : document.getElementById('millWt'+k).value;
                    //var supWt = (document.getElementById('supWt'+k).value == "") ? 0 : document.getElementById('supWt'+k).value;
                    var rates = (document.getElementById('rates'+k).value == "") ? 0 : document.getElementById('rates'+k).value;
                    var IsFormula = document.getElementById("txt_IsFormula"+k).value;
                    var nt =0;
                    if(IsFormula == 1 ){
                        if(ss>0){
                            var mr = parseFloat(txt_MoistureRegain) + 100;
                            nt = parseFloat(ss) * parseFloat(mr) / parseFloat(txt_AverageMoisture) /100;
                            document.getElementById('supWt'+k).value = parseFloat(nt).toFixed(3);
                        }
                        else {
                            nt =0;
                        }
                    }
                    else{
                        nt=0;
                    }
                    var val = parseFloat(ss) * parseFloat(rates);
                    document.getElementById('millamount'+k).value = parseFloat(val).toFixed(2);
                    _millWt += parseFloat(ss);
                    _totAmount += parseFloat(val);
                }
            }
        }
        document.getElementById('txt_TotalBales').value=_totBales.toFixed(2);
        document.getElementById('txt_TotalMillsWt').value=_millWt.toFixed(3);
        var TotalMillsTareWt = (document.getElementById("txt_TotalMillsTareWt").value == "") ? 0 : document.getElementById("txt_TotalMillsTareWt").value;
        var BalesRate = 0;
        MillsNetWt = parseFloat(parseFloat(_millWt) - parseFloat(TotalMillsTareWt));
        MillsInvAmount = parseFloat(parseFloat(_totAmount));
        document.getElementById('txt_TotalMillsNetWt').value=MillsNetWt.toFixed(3);
        document.getElementById('txt_InwardAmount').value=parseFloat(_totAmount).toFixed(2);

        var TotalSupplierWt = (document.getElementById("txt_TotalSupplierWt").value == "") ? 0 : document.getElementById("txt_TotalSupplierWt").value;
        var TotalSupplierTareWt = (document.getElementById("txt_TotalSupplierTareWt").value == "") ? 0 : document.getElementById("txt_TotalSupplierTareWt").value;
        SuppNetWt = parseFloat(parseFloat(TotalSupplierWt) - parseFloat(TotalSupplierTareWt));
        document.getElementById('txt_TotalSupplierNetWt').value=SuppNetWt.toFixed(3);

        var SupplierInvoiceAmount = (document.getElementById("txt_SupplierInvoiceAmount").value == "") ? 0 : document.getElementById("txt_SupplierInvoiceAmount").value;
        DiffAmount=parseFloat(parseFloat(SupplierInvoiceAmount) - parseFloat(MillsInvAmount));
        document.getElementById('txt_DiffAmount').value=DiffAmount.toFixed(2);

        DiffWeight=parseFloat(parseFloat(SuppNetWt) - parseFloat(MillsNetWt));
        document.getElementById('txt_DiffWeight').value=DiffWeight.toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}
