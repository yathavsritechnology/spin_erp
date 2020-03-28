function AddBlendingissueDetail() {
    try {
        var supBalNo,lotno, IssueWt, millWt, BlendingIssueDetailId, YarnReceiptDetailId, BlendingIssueId, YarnReceiptId, ItemId,  ItemName, Bag, BalQty;
        var DeliveryChallanDetailId=0;
        supBalNo = 0;
        lotno = document.getElementById("txt_LotNo").value;
        ItemId = document.getElementById("txt_ItemId").value;
        ItemName = document.getElementById("txt_ItemName").value;
        IssueWt = (document.getElementById("txt_IssueWt").value == "") ? 0 : document.getElementById("txt_IssueWt").value;
        BalQty = (document.getElementById("txt_BalQty").value == "") ? 0 : document.getElementById("txt_BalQty").value;
        Bag = (document.getElementById("txt_Bag").value == "") ? 0 : document.getElementById("txt_Bag").value;
        millWt = 0;
        BlendingIssueDetailId = (document.getElementById("txt_BlendingIssueDetailId").value == "") ? 0 : document.getElementById("txt_BlendingIssueDetailId").value;
        YarnReceiptDetailId = (document.getElementById("txt_YarnReceiptDetailId").value == "") ? 0 : document.getElementById("txt_YarnReceiptDetailId").value;
       // BlendingIssueId = (document.getElementById("txt_BlendingIssueId").value == "") ? 0 : document.getElementById("txt_BlendingIssueId").value;
        YarnReceiptId = (document.getElementById("txt_YarnReceiptId").value == "") ? 0 : document.getElementById("txt_YarnReceiptId").value;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        if ((lotno == "") || (lotno == '')){
            alert(" Lot No Is Missing...");
            return false;
        }
        if ((IssueWt == "") || (IssueWt == '')) {
            alert("Issue Wt Is Missing...");
            return false;
        }
        if(parseFloat(IssueWt) > parseFloat(BalQty)){
            alert("Entered Weight is Greater Than BalQty");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="YarnReceiptDetailId[' + n + ']" readonly="true" id="YarnReceiptDetailId' + n + '" value = "' + YarnReceiptDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="ItemId[' + n + ']" readonly="true" id="ItemId' + n + '" value = "' + ItemId + '" />'
            + '<input class="txt_40" type="hidden" name="BlendingIssueDetailId[' + n + ']" readonly="true" id="BlendingIssueDetailId' + n + '" value = "' + BlendingIssueDetailId + '" />'
            + '<input class="txt_40" type="hidden" name="YarnReceiptId[' + n + ']" readonly="true" id="YarnReceiptId' + n + '" value = "' + YarnReceiptId + '" />'
            + '</td>'
            + '<td nowrap class="">' + ItemName + '</td>'
            + '<td nowrap class="text_align_right"><input readonly onfocus="this.select();"  onchange="CalculateBlendingIsuueSum()" class="txt_100 text_align_right" type="text" name="lotno[' + n + ']" id="lotno' + n + '" value="' + parseFloat(lotno).toFixed(3) + '" /></td>'

            + '<td nowrap class="text_align_right"><input onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="CalculateBlendingIsuueSum()" class="txt_100 text_align_right" type="text" name="IssueWt[' + n + ']" id="IssueWt' + n + '" value="' + parseFloat(IssueWt).toFixed(3) + '" /></td>'
            + '<td  nowrap class="text_align_right"><input readonly onfocus="this.select();" onchange="CalculateBlendingIsuueSum()" class="txt_100 text_align_right" type="text" name="Bag[' + n + ']" id="Bag' + n + '" value="' + parseFloat(Bag).toFixed(3) + '" onkeypress="return numbersonly(event)"/></td>'
            + '<td><input checked type="checkbox" name="chk_active[' + n + ']" id="chk_active'+ n +'" onchange="CalculateBlendingIsuueSum()" /></td>'
            + '</tr>').appendTo("#sivTable");
        //+ '<td><input type="button" id="remove-box' + n + '" value="Del-' + n + '"  class="remove-box" /></td>'
        //document.getElementById('txt_item_ItemId').value="";
        //document.getElementById('txt_item_ItemName').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_LotNo').value = "";
        document.getElementById('txt_ItemId').value = "";
        document.getElementById('txt_ItemName').value = "";

        document.getElementById('txt_IssueWt').value = "";
        document.getElementById('txt_Bag').value = "";
        document.getElementById('txt_YarnReceiptDetailId').value="";
        document.getElementById('txt_RowCount').value = n;
        document.getElementById('txt_YarnReceiptId').value="";
        //document.getElementById('txt_baleno').focus();
        CalculateBlendingIsuueSum();
        return false;
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalculateBlendingIsuueSum(){
    try{
        var _totBales = 0;
        var _Bag = 0;
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
                    _Bag += parseFloat(document.getElementById('Bag'+k).value);
                }
            }
        }
        document.getElementById('txt_TotalNos').value=_totBales.toFixed(2);
        document.getElementById('txt_TotalKgs').value=_IssueWt.toFixed(3);
        document.getElementById('txt_TotalBags').value=_Bag.toFixed(3);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}