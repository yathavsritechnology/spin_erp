function gen_saleslists()
{
    var txt_VoucherId = document.getElementById('txt_VoucherId').value;
    var cmb_s_supplier = document.getElementById('cmb_s_supplier').value;
    var txt_MenuId = document.getElementById('txt_MenuId').value;
    //var txt_IMG_URL = document.getElementById('txt_IMG_URL').value;
    var txt_url_path = document.getElementById('txt_url_path').value;
    var msgbox = $("#Supplier_Detail");
    //msgbox.html('<img src="' + txt_IMG_URL + '/loading.gif">&nbsp;Checking availability.');
    $.ajax({
        type: 'post',
        url: txt_url_path + "ajax.php",
        data: 'get_supplier_list=1&menuid=' + txt_MenuId + '&txt_VoucherId=' + txt_VoucherId + '&cmb_s_supplier=' + cmb_s_supplier,
        cache: false,
        success: function (html) {
            msgbox.html(html);
        }
    });
}

function Adjust_Amount()
{
    var txt_count = document.getElementById('txt_count').value;
    var Bals = document.getElementById('txt_receiptamount').value;
    var txt_AdvanceAmount = document.getElementById('txt_AdvanceAmount').value;
    var txt_receiptamount = parseFloat(Bals) + parseFloat(txt_AdvanceAmount);
    //var txt_receiptamount = parseFloat(Bals);
    var txt_TotalBillAmount = document.getElementById('txt_TotalBillAmount').value;
    var _AdvanceAmount= parseFloat(txt_AdvanceAmount);
    //var BalAmount = 0;
    var totAdv=0;
    var TotalAdjust = 0;
    var TotalBal = 0;
    var BalAmount = txt_receiptamount;
    if((txt_count > 0))
    {
        var i=0;
        for(i=1; i<=txt_count; i++)
        {
            document.getElementById('txt_AdjAmt' + i).value=0;
            document.getElementById('txtBalAmt' + i).value=0;
            var BilAmt = parseFloat(document.getElementById('txt_TotalAmt' + i).value);
            var txtBalAmt = parseFloat(document.getElementById('txtBalAmt' + i).value);
            if(parseFloat(BalAmount) == parseFloat(BilAmt)){
                console.log("Type = 1");
                document.getElementById("chk_autoadj"+i).checked =true;
                document.getElementById("txt_AdvAmount" + i).value = parseFloat(_AdvanceAmount).toFixed(2);
                document.getElementById('txt_AdjAmt' + i).value=parseFloat(BalAmount).toFixed(2);
                document.getElementById('txtBalAmt' + i).value=0;
                document.getElementById('txt_BalanceAmt' + i).value=0;
                TotalBal += parseFloat(BalAmount).toFixed(2);
                TotalAdjust += parseFloat(BalAmount).toFixed(2);
                BalAmount = 0;
            }
            else if((parseFloat(BalAmount) > parseFloat(BilAmt))&& (parseFloat(BalAmount) != 0)){
                console.log("Type = 2");
                document.getElementById("chk_autoadj"+i).checked =true;
                BalAmount = parseFloat(BalAmount) - parseFloat(BilAmt).toFixed(2);
                document.getElementById('txt_AdjAmt' + i).value=parseFloat(BilAmt).toFixed(2);
                document.getElementById('txtBalAmt' + i).value=parseFloat(BalAmount).toFixed(2);
                document.getElementById('txt_BalanceAmt' + i).value=parseFloat(BalAmount).toFixed(2);

                if(parseFloat(_AdvanceAmount) < parseFloat(BilAmt)) {
                    document.getElementById("txt_AdvAmount" + i).value = parseFloat(_AdvanceAmount).toFixed(2);
                    _AdvanceAmount = parseFloat(parseFloat(BilAmt) - parseFloat(_AdvanceAmount));
                    _AdvanceAmount = 0;
                }
                else if(parseFloat(_AdvanceAmount) > parseFloat(BilAmt)) {
                    document.getElementById("txt_AdvAmount" + i).value = parseFloat(BilAmt).toFixed(2);
                    _AdvanceAmount = parseFloat(parseFloat(_AdvanceAmount) - parseFloat(BilAmt));
                }
                else{
                    document.getElementById("txt_AdvAmount" + i).value = parseFloat(_AdvanceAmount).toFixed(2);
                    _AdvanceAmount = 0;
                }
                totAdv += parseFloat(_AdvanceAmount).toFixed(2);
                TotalBal += parseFloat(BalAmount).toFixed(2);
                TotalAdjust += parseFloat(BilAmt).toFixed(2);
            }
            else if((parseFloat(BalAmount) < parseFloat((BilAmt)))&& (parseFloat(BalAmount) != 0))
            {
                console.log("Type = 3");
                document.getElementById("chk_autoadj"+i).checked =true;
                document.getElementById("txt_AdvAmount" + i).value = parseFloat(_AdvanceAmount).toFixed(2);
                document.getElementById('txt_AdjAmt' + i).value=parseFloat(BalAmount).toFixed(2);
                //alert(TotalAdjust + " " + BilAmt + " " + BalAmount);
                TotalAdjust += parseFloat(BalAmount);
                BalAmount = parseFloat(BalAmount) - parseFloat(BilAmt);
                //document.getElementById('txtBalAmt' + i).value=0;
                document.getElementById('txtBalAmt' + i).value=parseFloat(BalAmount).toFixed(2);
                document.getElementById('txt_BalanceAmt' + i).value=parseFloat(BalAmount).toFixed(2);
                TotalBal += parseFloat(BalAmount).toFixed(2);
                totAdv += parseFloat(_AdvanceAmount).toFixed(2);
                BalAmount = 0;
            }
            else {
                console.log("Type = 4");
                document.getElementById("txt_AdvAmount" + i).value =0;
                document.getElementById("chk_autoadj"+i).checked =false;
            }
            //alert(BalAmount + " - " + parseFloat(TotalAdjust).toFixed(2) + " - " + parseFloat(TotalBal).toFixed(2) + " - " + parseFloat(totAdv).toFixed(2) + " - " + parseFloat(_AdvanceAmount).toFixed(2));
        }
    }
    else
    {
        alert("No Record Found");
        return false;
    }
    document.getElementById('txt_TotalAdjusted').value=parseFloat(TotalAdjust).toFixed(2);
    document.getElementById('txt_TotalAdvAmount').value=parseFloat(totAdv).toFixed(2);
    if(parseFloat(txt_receiptamount) > parseFloat(txt_TotalBillAmount)) {
        document.getElementById('txt_TotalBalance').value = (parseFloat(txt_receiptamount) - parseFloat(txt_TotalBillAmount)).toFixed(2);
    }
    else{
        document.getElementById('txt_TotalBalance').value = (parseFloat(txt_TotalBillAmount) - parseFloat(txt_receiptamount)).toFixed(2);
    }
}

function Validation_Form(){
    try{
        var txt_VoucherDate = document.getElementById('txt_VoucherDate').value;
        var cmb_s_supplier = document.getElementById('cmb_s_supplier').value;
        var cmb_paymentmode = document.getElementById('cmb_paymentmode').value;
        var txt_receiptamount = (document.getElementById('txt_receiptamount').value == '') ? 0 : document.getElementById('txt_receiptamount').value;
        var txt_count = (document.getElementById('txt_count').value == '') ? 0 : document.getElementById('txt_count').value;
        if(txt_VoucherDate == ''){
            alert("Select Date");
            return false;
        }
        if(cmb_s_supplier == 0){
            alert("Select Supplier");
            return false;
        }
        if(cmb_paymentmode == 0){
            alert("Select Payment Mode");
            return false;
        }
        if(txt_receiptamount == 0){
            alert("Enter Payment Amount");
            return false;
        }
        if(txt_count == 0){
            alert("Bills Count Missing");
            return false;
        }
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}