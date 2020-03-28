function AddBlendingPgmchartDetail() {
    try {
        var LotNo, IssueWt, PgmQty,BlendingPgmPlanDetailId,BlendingPgmPlanId,YarnReceiptDetailId,YarnReceiptId, ItemId, ItemName,BalQty,PgmBag;
        var SupplierPgmPlanDetailId=0;
        LotNo = document.getElementById("txt_LotNo").value;
        ItemId = document.getElementById("txt_ItemId").value;
        ItemName = document.getElementById("txt_ItemName").value;
        PgmQty = (document.getElementById("txt_IssueWt").value == "") ? 0 : document.getElementById("txt_IssueWt").value;
        BalQty = (document.getElementById("txt_BalQty").value == "") ? 0 : document.getElementById("txt_BalQty").value;
        PgmBag = (document.getElementById("txt_Bag").value == "") ? 0 : document.getElementById("txt_Bag").value;
        YarnReceiptDetailId = 0;
        BlendingPgmPlanDetailId = (document.getElementById("txt_BlendingPgmPlanDetailId").value == "") ? 0 : document.getElementById("txt_BlendingPgmPlanDetailId").value;
        millWt = 0;
        YarnReceiptId = 0;
        //BlendingPgmPlanId = (document.getElementById("txt_BlendingPgmPlanId").value == "") ? 0 : document.getElementById("txt_BlendingPgmPlanId").value;
        var UomId=0;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;

        if ((LotNo == "") || (LotNo == '')){
            alert(" Lot No Is Missing...");
            return false;
        }
        if ((PgmQty == "") || (PgmQty == '')) {
            alert("Pgm Qty Is Missing...");
            return false;
        }
        if ((PgmBag == "") || (PgmBag == '')){
            alert(" Pgm Bag Is Missing....");
            return false;
        }
        if(parseFloat(PgmQty) > parseFloat(BalQty)){
            alert("Entered Weight is Greater Than BalQty");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="YarnReceiptDetailId[' + n + ']" readonly="true" id="YarnReceiptDetailId' + n + '" value = "' + YarnReceiptDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="ItemId[' + n + ']" readonly="true" id="ItemId' + n + '" value = "' + ItemId + '" />'
            + '<input class="txt_40" type="hidden" name="BlendingPgmPlanDetailId[' + n + ']" readonly="true" id="BlendingPgmPlanDetailId' + n + '" value = "' + BlendingPgmPlanDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="BlendingPgmPlanId[' + n + ']" readonly="true" id="BlendingPgmPlanId' + n + '" value = "' + BlendingPgmPlanId + '" />'
            + '<input class="txt_40" type="hidden" name="YarnReceiptId[' + n + ']" readonly="true" id="YarnReceiptId' + n + '" value = "' + YarnReceiptId + '" />'
            + '<input class="txt_40" type="hidden" name="UomId[' + n + ']" readonly="true" id="UomId' + n + '" value = "' + UomId + '" />'
            + '</td>'
            + '<td nowrap class="">' + ItemName + '</td>'
            + '<td nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateBlendingPgmChartSum()" class="txt_100 text_align_right" type="text" name="LotNo[' + n + ']" id="LotNo' + n + '" value="' + parseFloat(LotNo).toFixed(3) + '" /></td>'
            + '<td nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateBlendingPgmChartSum()" class="txt_100 text_align_right" type="text" name="PgmQty[' + n + ']" id="PgmQty' + n + '" value="' + parseFloat(PgmQty).toFixed(3) + '" /></td>'
            + '<td  nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateBlendingPgmChartSum()" class="txt_100 text_align_right" type="text" name="PgmBag[' + n + ']" id="PgmBag' + n + '" value="' + parseFloat(PgmBag).toFixed(3) + '" /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="CalculateBlendingPgmChartSum()" /></td>'
            + '</tr>').appendTo("#sivTable");
        //+ '<td><input type="button" id="remove-box' + n + '" value="Del-' + n + '"  class="remove-box" /></td>'
        //document.getElementById('txt_item_ItemId').value="";
        //document.getElementById('txt_item_ItemName').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_LotNo').value = "";
        document.getElementById('txt_ItemId').value = "";
        document.getElementById('txt_ItemName').value = "";
        document.getElementById('txt_YarnReceiptDetailId').value="";
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_YarnReceiptId').value="";
        //document.getElementById('txt_baleno').focus();
        CalculateBlendingPgmChartSum();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalculateBlendingPgmChartSum(){
    try{
        var _totno =0;
        var _totbag = 0;
        var _IssueWt = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0){
            for (var i = 1; i < rowCount; i++){
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_active'+k).checked == true)

                {
                    _totno += 1;
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    _IssueWt += parseFloat(document.getElementById('PgmQty'+k).value);
                    _totbag += parseFloat(document.getElementById('PgmBag'+k).value);

                }
            }
        }

        document.getElementById('txt_TotalQty').value=_IssueWt.toFixed(2);
        document.getElementById('txt_TotalBags').value=_totbag.toFixed(3);

    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}