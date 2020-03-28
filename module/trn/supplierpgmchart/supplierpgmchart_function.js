function AddSupplierPgmChartDetail() {
    try {
        var supBalNo,lotno, IssueWt, millWt,CiDetailId,CiId, ItemId, ItemName;
        var SupplierPgmPlanDetailId=0;
        supBalNo = document.getElementById("txt_SupplierBaleNo").value;
        lotno = document.getElementById("txt_MillsLotNo").value;
        ItemId = document.getElementById("txt_ItemId").value;
        ItemName = document.getElementById("txt_ItemName").value;
        IssueWt = (document.getElementById("txt_IssueWt").value == "") ? 0 : document.getElementById("txt_IssueWt").value;
        millWt = (document.getElementById("txt_MillWt").value == "") ? 0 : document.getElementById("txt_MillWt").value;
        CiDetailId = (document.getElementById("txt_CiDetailId").value == "") ? 0 : document.getElementById("txt_CiDetailId").value;
        CiId = (document.getElementById("txt_CiId").value == "") ? 0 : document.getElementById("txt_CiId").value;
        var UomId=0;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        if ((supBalNo == 0) || (supBalNo == '')) {
            alert("Enter BaleNo");
            return false;
        }
        if ((lotno == "") || (lotno == '')){
            alert(" Lot No Is Missing...");
            return false;
        }
        if ((IssueWt == "") || (IssueWt == '')) {
            alert("Issue Wt Is Missing...");
            return false;
        }
        if ((millWt == "") || (millWt == '')){
            alert(" Mill Wt Is Missing....");
            return false;
        }
        if(parseFloat(IssueWt) > parseFloat(millWt)){
            alert("Entered Weight is Greater Than MillWt");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="CiDetailId[' + n + ']" readonly="true" id="CiDetailId' + n + '" value = "' + CiDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="ItemId[' + n + ']" readonly="true" id="ItemId' + n + '" value = "' + ItemId + '" />'
            + '<input class="txt_40" type="hidden" name="SupplierPgmPlanDetailId[' + n + ']" readonly="true" id="SupplierPgmPlanDetailId' + n + '" value = "' + SupplierPgmPlanDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="CiId[' + n + ']" readonly="true" id="CiId' + n + '" value = "' + CiId + '" />'
            + '<input class="txt_40" type="hidden" name="UomId[' + n + ']" readonly="true" id="UomId' + n + '" value = "' + UomId + '" />'
            + '</td>'
            + '<td nowrap class="">' + ItemName + '</td>'
            + '<td nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" class="txt_100 text_align_right" type="text" name="lotno[' + n + ']" id="lotno' + n + '" value="' + lotno + '" /></td>'
            + '<td nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" class="txt_100 text_align_right" type="text" name="baleno[' + n + ']" id="baleno' + n + '" value="' + supBalNo + '" /></td>'
            + '<td hidden nowrap class="text_align_right"><input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateSupplierPgmChartSum()" class="txt_100 text_align_right" type="text" name="MillWt[' + n + ']" id="MillWt' + n + '" value="' + parseFloat(millWt).toFixed(3) + '" /></td>'
            + '<td nowrap class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateSupplierPgmChartSum()" class="txt_100 text_align_right" type="text" name="IssueWt[' + n + ']" id="IssueWt' + n + '" value="' + parseFloat(IssueWt).toFixed(3) + '" /></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+n+'" onchange="CalculateSupplierPgmChartSum()" /></td>'
            + '</tr>').appendTo("#sivTable");
        //+ '<td><input type="button" id="remove-box' + n + '" value="Del-' + n + '"  class="remove-box" /></td>'
        //document.getElementById('txt_item_ItemId').value="";
        //document.getElementById('txt_item_ItemName').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_MillsLotNo').value = "";
        document.getElementById('txt_ItemId').value = "";
        document.getElementById('txt_ItemName').value = "";
        document.getElementById('txt_MillWt').value = "";
        document.getElementById('txt_IssueWt').value = "";
        document.getElementById('txt_CiDetailId').value="";
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_CiId').value="";
        //document.getElementById('txt_baleno').focus();
        CalculateSupplierPgmChartSum();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalculateSupplierPgmChartSum(){
    try{
        var _totBales = 0;
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
                    _totBales += 1;
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    _IssueWt += parseFloat(document.getElementById('IssueWt'+k).value);
                }
            }
        }
        document.getElementById('txt_TotalBales').value=_totBales.toFixed(2);
        document.getElementById('txt_TotalIssueCount').value=_IssueWt.toFixed(3);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}