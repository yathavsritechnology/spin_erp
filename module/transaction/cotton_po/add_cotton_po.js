function Add_cotton_po() {
    try {
        var sprodid, sprodname, sprodprice, prodUomId, prodsUomId, prodUomName, supBalNo, supWt, millWt, txt_Rate, txt_MillAmount;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        supBalNo = '';
        supWt = (document.getElementById("txt_PoWt").value == "") ? 0 : document.getElementById("txt_PoWt").value;
        millWt = 0;
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
        if (txt_Rate == "") {
            alert("Enter Rate....");
            document.getElementById("txt_Rate").focus();
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="txt_CpoDetailId[' + n + ']" readonly="true" id="txt_CpoDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="prodUomId[' + n + ']" readonly="true" id="prodUomId' + n + '" value = "' + prodUomId + '" />'
            + '</td>'
            + '<td>' + sprodname + '</td>'
            + '<td><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonPo()" class="txt_100 text_align_right" type="text" name="supWt[' + n + ']" id="supWt' + n + '" value="' + parseFloat(supWt).toFixed(3) + '" /></td>'
            + '<td>' + prodUomName + '</td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonPo()" class="txt_60 text_align_right" type="text" name="rates[' + n + ']" id="rates' + n + '" value="' + parseFloat(txt_Rate).toFixed(3) + '" /></td>'
            + '<td class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onkeyup="SumCottonPo()" class="txt_100 text_align_right" type="text" name="millamount[' + n + ']" id="millamount' + n + '" value="' + parseFloat(txt_MillAmount).toFixed(3) + '" readonly /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="SumCottonPo()" /></td>'
            + '</tr>').appendTo("#sivTable");
        document.getElementById('txt_PoWt').value = "";
        document.getElementById('txt_MillAmount').value = "";
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_Rate').focus();
        SumCottonPo();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SumCottonInward(){
    try{
        var _millWt = 0;
        var _totAmount = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_active'+k).checked == true)
                {
                    var ss = (document.getElementById('supWt'+k).value == "") ? 0 : document.getElementById('supWt'+k).value;
                    var rates = (document.getElementById('rates'+k).value == "") ? 0 : document.getElementById('rates'+k).value;
                    var val = parseFloat(ss) * parseFloat(rates);
                    document.getElementById('millamount'+k).value = parseFloat(val).toFixed(2);
                    _millWt += parseFloat(ss);
                    _totAmount += parseFloat(val);
                }
            }
        }
        document.getElementById('txt_TotalSupplierWt').value=_millWt.toFixed(3);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SumCottonPo(){
    try{
        var _millWt = 0;
        var _totAmount = 0;
        var txt_RowCount = (document.getElementById('txt_RowCount').value == "") ? 0 : document.getElementById('txt_RowCount').value;
        if(txt_RowCount > 0){
            for (var k = 1; k <= txt_RowCount; k++){
                if(document.getElementById('chk_active'+k).checked == true)
                {
                    var ss = (document.getElementById('supWt'+k).value == "") ? 0 : document.getElementById('supWt'+k).value;
                    var rates = (document.getElementById('rates'+k).value == "") ? 0 : document.getElementById('rates'+k).value;
                    var val = parseFloat(ss) * parseFloat(rates);
                    document.getElementById('millamount'+k).value = parseFloat(val).toFixed(2);
                    _millWt += parseFloat(ss);
                    _totAmount += parseFloat(val);
                }
            }
        }
        document.getElementById('txt_TotalSupplierWt').value=_millWt.toFixed(3);
        document.getElementById('txt_InwardAmount').value=_totAmount.toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}
