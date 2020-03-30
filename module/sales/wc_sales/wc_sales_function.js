function AddWasteCottonSalesProducts() {
    try{
        var txt_Comp_StateId = (document.getElementById("txt_Comp_StateId").value == "") ? 0 : document.getElementById("txt_Comp_StateId").value;
        var txt_Comp_CountryId = (document.getElementById("txt_Comp_CountryId").value == "") ? 0 : document.getElementById("txt_Comp_CountryId").value;
        var txt_C_StateId = (document.getElementById("txt_C_StateId").value == "") ? 0 : document.getElementById("txt_C_StateId").value;
        var txt_C_CountryId = (document.getElementById("txt_C_CountryId").value == "") ? 0 : document.getElementById("txt_C_CountryId").value;
        if(ValidateCompanyDetail() == 0){
            alert("Company Detail Missing");
            return false;
        }
        else if(ValidateCustomerDetail() == 0){
            alert("Customer Detail Missing");
            return false;
        }
        else if((txt_Comp_CountryId == txt_C_CountryId) && (txt_Comp_StateId == txt_C_StateId)){
            WasteCottonSalesSgstCalc();
        }
        else{
            WasteCottonSalesIgstCalc();
        }
        //calculateWasteCottonSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function WasteCottonSalesSgstCalc(){
    try{
        var sprodid, sprodname, sprodprice, sprodqty, sprodvalue, prodbUomId, prodUomName, prodsUomId, txt_Discount, sValue, sprodcqty;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        sprodqty = (document.getElementById("prodqty").value == "") ? 0 : document.getElementById("prodqty").value;
        sValue = (document.getElementById("txt_item_sValue").value == "") ? 0 : document.getElementById("txt_item_sValue").value;
        sprodcqty = (document.getElementById("prodcqty").value == "") ? 0 : document.getElementById("prodcqty").value;
        sprodprice = (document.getElementById("prodprice").value == "") ? 0 : document.getElementById("prodprice").value;
        prodbUomId = (document.getElementById("txt_item_UomId").value == "") ? 0 : document.getElementById("txt_item_UomId").value;
        prodUomName = document.getElementById("txt_item_UomName").value;
        prodsUomId = document.getElementById("cmb_a_sUom").value;
        var txt_item_TaxId = (document.getElementById("txt_item_TaxId").value == "") ? 0 : document.getElementById("txt_item_TaxId").value;
        var txt_item_Sgst = (document.getElementById("txt_item_Sgst").value == "") ? 0 : document.getElementById("txt_item_Sgst").value;
        var txt_item_Cgst = (document.getElementById("txt_item_Cgst").value == "") ? 0 : document.getElementById("txt_item_Cgst").value;
        var txt_item_Igst = (document.getElementById("txt_item_Igst").value == "") ? 0 : document.getElementById("txt_item_Igst").value;
        var txt_item_IsTaxable = (document.getElementById("txt_item_IsTaxable").value == "") ? 0 : document.getElementById("txt_item_IsTaxable").value;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        /*var n = $('.appear').length;*/
        if(sprodid == "")
        {
            alert("Select Item First...");
            return false;
        }
        if(sprodprice == 0)
        {
            alert("Item Price is missing...");
            document.getElementById("prodprice").focus();
            return false;
        }
        if(sprodcqty == 0){
            alert("Conversion Calculation Missing");
            document.getElementById("prodqty").focus();
            return false;
        }
        if(sprodqty == 0)
        {
            alert("Enter Qty");
            document.getElementById("prodqty").focus();
            return false;
        }
        if(prodbUomId == 0)
        {
            alert("UOM is missing in Item Master for the Selected Item.");
            return false;
        }
        if((txt_item_IsTaxable == 1) && (txt_item_TaxId == 0)){
            alert("Tax detail is missing for Taxable Item " + sprodname);
            return false;
        }
        sprodvalue = parseFloat(sprodcqty) * parseFloat(sprodprice);
        sprodvalue = sprodvalue.toFixed(2);
        var SgstValue = 0;
        var CgstValue = 0;
        var IgstValue = 0;
        var TotalTax=0;
        var LineTotalAmount=0;
        if((txt_item_IsTaxable == 1) && (txt_item_TaxId > 0)){
            SgstValue = (sprodvalue * txt_item_Sgst / 100);
            CgstValue = (sprodvalue * txt_item_Cgst / 100);
            IgstValue = 0;
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(sprodvalue) + parseFloat(TotalTax)).toFixed(2);
        }
        else if((txt_item_IsTaxable == 0) && (txt_item_TaxId == 0)){
            SgstValue = 0;
            CgstValue = 0;
            IgstValue = 0;
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(sprodvalue) + parseFloat(TotalTax)).toFixed(2);
        }
        else{
            alert("Tax detail is missing for this item...");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td class="td_nowrap">' + n
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="txt_SalesDetailId[' + n + ']" readonly="true" id="txt_SalesDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_PoId[' + n + ']" readonly="true" id="txt_PoId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="prodsUomId[' + n + ']" readonly="true" id="prodsUomId' + n + '" value = "' + prodsUomId + '" />'
            + '<input class="txt_40" type="hidden" name="prodbUomId[' + n + ']" readonly="true" id="prodbUomId' + n + '" value = "' + prodbUomId + '" />'
            + '<input class="txt_40" type="hidden" name="item_TaxId[' + n + ']" readonly="true" id="item_TaxId' + n + '" value = "' + txt_item_TaxId + '" />'
            + '<input class="txt_40" type="hidden" name="item_Sgst[' + n + ']" readonly="true" id="item_Sgst' + n + '" value = "' + txt_item_Sgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Cgst[' + n + ']" readonly="true" id="item_Cgst' + n + '" value = "' + txt_item_Cgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Igst[' + n + ']" readonly="true" id="item_Igst' + n + '" value = "' + txt_item_Igst + '" />'
            + '<input class="txt_40" type="hidden" name="item_IsTaxable[' + n + ']" readonly="true" id="item_IsTaxable' + n + '" value = "' + txt_item_IsTaxable + '" />'
            + '<input class="txt_40" type="hidden" name="SgstValue[' + n + ']" readonly="true" id="SgstValue' + n + '" value = "' + SgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="CgstValue[' + n + ']" readonly="true" id="CgstValue' + n + '" value = "' + CgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="IgstValue[' + n + ']" readonly="true" id="IgstValue' + n + '" value = "' + IgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="TotalTax[' + n + ']" readonly="true" id="TotalTax' + n + '" value = "' + TotalTax + '" />'
            + '<input class="txt_40" type="hidden" name="LineTotalAmount[' + n + ']" readonly="true" id="LineTotalAmount' + n + '" value = "' + LineTotalAmount + '" />'
            + '<input class="txt_40" type="hidden" name="txt_item_sValue[' + n + ']" readonly="true" id="txt_item_sValue' + n + '" value = "' + sValue + '" />'
            + '</td>'
            + '<td class="td_nowrap">' + sprodname + '<input type="hidden" value="' + sprodname + '" id="prodname' + n + '" /></td>'
            + '<td class="td_nowrap">' + prodUomName + '</td>'
            + '<td class="td_nowrap"><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_100 prodprice text_align_right" type="text" name="prodprice[' + n + ']" id="prodprice' + n + '" value="' + sprodprice + '" /></td>'
            + '<td class="td_nowrap">'
            + '<input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_40 prodqty text_align_right" type="text" name="sprodqty[' + n + ']" id="sprodqty' + n + '" value="' + sprodqty + '" /><br />'
            + '<input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="calc_lineItem(' + n + ')" class="txt_100 prodqty text_align_right" type="text" name="txt_prodqty[' + n + ']" id="txt_prodqty' + n + '" value="' + parseFloat(sprodcqty).toFixed(3) + '" />'
            + '</td>'
            + '<td class="text_align_right td_nowrap"><input class="txt_100 text_align_right prodvalue" type="text" name="prodvalue[' + n + ']" id="prodvalue' + n + '" value="' + sprodvalue + '" readonly="true" /></td>'
            + '<td nowrap class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Sgst' + n + '">' + txt_item_Sgst + ' %</span></span><br /><span id="span_SgstValue' + n + '">' + parseFloat(SgstValue).toFixed(2) + '</td>'
            + '<td nowrap class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Cgst' + n + '">' + txt_item_Cgst + ' %</span></span><br /><span id="span_CgstValue' + n + '">' + parseFloat(CgstValue).toFixed(2) + '</td>'
            + '<td nowrap class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Igst' + n + '">' + txt_item_Igst + ' %</span></span><br /><span id="span_IgstValue' + n + '">' + parseFloat(IgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right td_nowrap"><span id="span_item_TotalTax' + n + '">' + parseFloat(TotalTax).toFixed(2) + '</span></td>'
            + '<td class="text_align_right td_nowrap"><span id="span_item_LineTotalAmount' + n + '">' + parseFloat(LineTotalAmount).toFixed(2) + '</span></td>'
            + '<td class="td_nowrap"><input checked onchange="calculateWasteCottonSalesSum()" type="checkbox" name="chk_seleitem[' + n + ']" id="chk_seleitem' + n + '" /></td>'
            + '</tr>').appendTo("#sivTable");

        /*document.getElementById('txt_item_ItemId').value="";
        document.getElementById('txt_item_ItemName').value="";*/
        document.getElementById('prodprice').value="";
        document.getElementById('prodqty').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_RowCount').value= n;
        $("#cmb_a_item").chosen();
        $('#cmb_a_item').trigger('chosen:open');
        $('#cmb_a_item').trigger('chosen:activate');
        calculateWasteCottonSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function WasteCottonSalesIgstCalc(){
    try{
        var sprodid, sprodname, sprodprice, sprodqty, sprodvalue, prodbUomId, prodUomName, prodsUomId, sValue, sprodcqty;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        sprodqty = (document.getElementById("prodqty").value == "") ? 0 : document.getElementById("prodqty").value;
        sprodprice = (document.getElementById("prodprice").value == "") ? 0 : document.getElementById("prodprice").value;
        prodbUomId = (document.getElementById("txt_item_UomId").value == "") ? 0 : document.getElementById("txt_item_UomId").value;
        prodUomName = document.getElementById("txt_item_UomName").value;
        sValue = (document.getElementById("txt_item_sValue").value == "") ? 0 : document.getElementById("txt_item_sValue").value;
        sprodcqty = (document.getElementById("prodcqty").value == "") ? 0 : document.getElementById("prodcqty").value;
        prodsUomId = document.getElementById("cmb_a_sUom").value;
        var txt_item_TaxId = (document.getElementById("txt_item_TaxId").value == "") ? 0 : document.getElementById("txt_item_TaxId").value;
        var txt_item_Sgst = (document.getElementById("txt_item_Sgst").value == "") ? 0 : document.getElementById("txt_item_Sgst").value;
        var txt_item_Cgst = (document.getElementById("txt_item_Cgst").value == "") ? 0 : document.getElementById("txt_item_Cgst").value;
        var txt_item_Igst = (document.getElementById("txt_item_Igst").value == "") ? 0 : document.getElementById("txt_item_Igst").value;
        var txt_item_IsTaxable = (document.getElementById("txt_item_IsTaxable").value == "") ? 0 : document.getElementById("txt_item_IsTaxable").value;
        var n = document.getElementById('txt_RowCount').value;
        n = parseFloat(n) + 1;
        /*var n = $('.appear').length;*/
        if(sprodid == "")
        {
            alert("Select Item First...");
            return false;
        }
        if(sprodprice == 0)
        {
            alert("Item Price is missing...");
            document.getElementById("prodprice").focus();
            return false;
        }
        if(sprodqty == 0) {
            alert("Enter Qty");
            document.getElementById("prodqty").focus();
            return false;
        }
        if(sprodcqty == 0){
            alert("Conversion Calculation Missing");
            document.getElementById("prodqty").focus();
            return false;
        }
        if((txt_item_IsTaxable == 1) && (txt_item_TaxId == 0)){
            alert("Tax detail is missing for Taxable Item " + sprodname);
            return false;
        }
        sprodvalue = parseFloat(sprodcqty) * parseFloat(sprodprice);
        sprodvalue = sprodvalue.toFixed(2);
        var SgstValue = 0;
        var CgstValue = 0;
        var IgstValue = 0;
        var TotalTax=0;
        var LineTotalAmount=0;
        if((txt_item_IsTaxable == 1) && (txt_item_TaxId > 0)){
            SgstValue = 0;
            CgstValue = 0;
            IgstValue = (sprodvalue * txt_item_Igst / 100);
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(sprodvalue) + parseFloat(TotalTax)).toFixed(2);
        }
        else if((txt_item_IsTaxable == 0) && (txt_item_TaxId == 0)){
            SgstValue = 0;
            CgstValue = 0;
            IgstValue = 0;
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(sprodvalue) + parseFloat(TotalTax)).toFixed(2);
        }
        else{
            alert("Tax detail is missing for this item...");
            return false;
        }
        $('<tr class="appear" id="subcount' + n + '">'
            + '<td class="td_nowrap">' + n
            + '<input class="txt_40" type="hidden" name="slno[' + n + ']" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[' + n + ']" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="txt_SalesDetailId[' + n + ']" readonly="true" id="txt_SalesDetailId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_PoId[' + n + ']" readonly="true" id="txt_PoId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="prodsUomId[' + n + ']" readonly="true" id="prodsUomId' + n + '" value = "' + prodsUomId + '" />'
            + '<input class="txt_40" type="hidden" name="prodbUomId[' + n + ']" readonly="true" id="prodbUomId' + n + '" value = "' + prodbUomId + '" />'
            + '<input class="txt_40" type="hidden" name="item_TaxId[' + n + ']" readonly="true" id="item_TaxId' + n + '" value = "' + txt_item_TaxId + '" />'
            + '<input class="txt_40" type="hidden" name="item_Sgst[' + n + ']" readonly="true" id="item_Sgst' + n + '" value = "' + txt_item_Sgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Cgst[' + n + ']" readonly="true" id="item_Cgst' + n + '" value = "' + txt_item_Cgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Igst[' + n + ']" readonly="true" id="item_Igst' + n + '" value = "' + txt_item_Igst + '" />'
            + '<input class="txt_40" type="hidden" name="item_IsTaxable[' + n + ']" readonly="true" id="item_IsTaxable' + n + '" value = "' + txt_item_IsTaxable + '" />'
            + '<input class="txt_40" type="hidden" name="SgstValue[' + n + ']" readonly="true" id="SgstValue' + n + '" value = "' + SgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="CgstValue[' + n + ']" readonly="true" id="CgstValue' + n + '" value = "' + CgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="IgstValue[' + n + ']" readonly="true" id="IgstValue' + n + '" value = "' + IgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="TotalTax[' + n + ']" readonly="true" id="TotalTax' + n + '" value = "' + TotalTax + '" />'
            + '<input class="txt_40" type="hidden" name="LineTotalAmount[' + n + ']" readonly="true" id="LineTotalAmount' + n + '" value = "' + LineTotalAmount + '" />'
            + '<input class="txt_40" type="hidden" name="txt_item_sValue[' + n + ']" readonly="true" id="txt_item_sValue' + n + '" value = "' + sValue + '" />'
            + '</td>'
            + '<td class="td_nowrap">' + sprodname + '<input type="hidden" value="' + sprodname + '" id="prodname' + n + '" /></td>'
            + '<td class="td_nowrap">' + prodUomName + '</td>'
            + '<td class="td_nowrap"><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_40 prodprice text_align_right" type="text" name="prodprice[' + n + ']" id="prodprice' + n + '" value="' + sprodprice + '" /></td>'
            + '<td class="td_nowrap">'
                + '<input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_40 prodqty text_align_right" type="text" name="sprodqty[' + n + ']" id="sprodqty' + n + '" value="' + sprodqty + '" /><br />'
                + '<input readonly onfocus="this.select();" onkeypress="return numbersonly(event)" onchange="calc_lineItem(' + n + ')" class="txt_100 prodqty text_align_right" type="text" name="txt_prodqty[' + n + ']" id="txt_prodqty' + n + '" value="' + parseFloat(sprodcqty).toFixed(3) + '" />'
            + '</td>'
            + '<td class="text_align_right td_nowrap"><input class="txt_100 text_align_right prodvalue" type="text" name="prodvalue[' + n + ']" id="prodvalue' + n + '" value="' + sprodvalue + '" readonly="true" /></td>'
            + '<td class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Sgst' + n + '">' + txt_item_Sgst + ' %</span></span><br /><span id="span_SgstValue' + n + '">' + parseFloat(SgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Cgst' + n + '">' + txt_item_Cgst + ' %</span></span><br /><span id="span_CgstValue' + n + '">' + parseFloat(CgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right td_nowrap"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Igst' + n + '">' + txt_item_Igst + ' %</span></span><br /><span id="span_IgstValue' + n + '">' + parseFloat(IgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right td_nowrap"><span id="span_item_TotalTax' + n + '">' + parseFloat(TotalTax).toFixed(2) + '</span></td>'
            + '<td class="text_align_right td_nowrap"><span id="span_item_LineTotalAmount' + n + '">' + parseFloat(LineTotalAmount).toFixed(2) + '</span></td>'
            + '<td class="td_nowrap"><input checked onchange="calculateWasteCottonSalesSum()" type="checkbox" name="chk_seleitem[' + n + ']" id="chk_seleitem' + n + '" /></td>'
            + '</tr>').appendTo("#sivTable");

        /*document.getElementById('txt_item_ItemId').value="";
        document.getElementById('txt_item_ItemName').value="";*/
        document.getElementById('prodprice').value="";
        document.getElementById('prodqty').value="";
        //document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_RowCount').value= n;
        $("#cmb_a_item").chosen();
        $('#cmb_a_item').trigger('chosen:open');
        $('#cmb_a_item').trigger('chosen:activate');
        calculateWasteCottonSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function calculateWasteCottonSalesSum()
{
    try{
        var chk_IsCessTaxCalc=0;
        var chk_IsTcsCalc=0;
        var stot = 0;
        var stot_amt = 0;
        var tot_sgst = 0;
        var tot_cgst = 0;
        var tot_igst = 0;
        var tot_tax = 0;
        var sqty = 0;
        var sprodqty = 0;
        var IsAutoRoundOff = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0)
        {
            for (var i = 1; i < rowCount; i++)
            {
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_seleitem'+k).checked == true)
                {
                    var pQty = (document.getElementById('txt_prodqty'+k).value == "") ? 0 : document.getElementById('txt_prodqty'+k).value;
                    var spQty = (document.getElementById('sprodqty'+k).value == "") ? 0 : document.getElementById('sprodqty'+k).value;
                    var LineTotalAmount = (document.getElementById('LineTotalAmount'+k).value == "") ? 0 : document.getElementById('LineTotalAmount'+k).value;
                    var prodvalue = (document.getElementById('prodvalue'+k).value == "") ? 0 : document.getElementById('prodvalue'+k).value;
                    var SgstValue = (document.getElementById('SgstValue'+k).value == "") ? 0 : document.getElementById('SgstValue'+k).value;
                    var CgstValue = (document.getElementById('CgstValue'+k).value == "") ? 0 : document.getElementById('CgstValue'+k).value;
                    var IgstValue = (document.getElementById('IgstValue'+k).value == "") ? 0 : document.getElementById('IgstValue'+k).value;
                    sqty += parseFloat(pQty);
                    sprodqty += parseFloat(spQty);
                    stot += parseFloat(prodvalue);
                    tot_sgst += parseFloat(SgstValue);
                    tot_cgst += parseFloat(CgstValue);
                    tot_igst += parseFloat(IgstValue);
                    stot_amt += parseFloat(LineTotalAmount);
                    var lTotTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue));
                    tot_tax += parseFloat(lTotTax);
                    //stot += parseFloat(document.getElementById('prodvalue'+k).value);
                    document.getElementById('TotalTax'+k).value=lTotTax.toFixed(2);
                }
            }
        }
        if(document.getElementById("chk_IsCessTaxCalc").checked == true){
            chk_IsCessTaxCalc = 1;
        }
        if(document.getElementById("chk_IsTcsCalc").checked == true){
            chk_IsTcsCalc = 1;
        }
        document.getElementById('billtotal').value=parseFloat(stot).toFixed(2);
        document.getElementById('totqty').value=sqty.toFixed(2);
        document.getElementById('TotalsQty').value=sprodqty.toFixed(2);
        document.getElementById('txt_CgstAmount').value = parseFloat(tot_cgst).toFixed(2);
        document.getElementById('txt_SgstAmount').value = parseFloat(tot_sgst).toFixed(2);
        document.getElementById('txt_IgstAmount').value = parseFloat(tot_igst).toFixed(2);
        var txt_piRoundOff = (document.getElementById('txt_piRoundOff').value == "") ? 0 : document.getElementById('txt_piRoundOff').value;
        var txt_CessPer = (document.getElementById('txt_CessPer').value == "") ? 0 : document.getElementById('txt_CessPer').value;
        var txt_CessTotal = 0;
        if(chk_IsCessTaxCalc == 1){
            txt_CessTotal = parseFloat(parseFloat(stot) * parseFloat(txt_CessPer) / 100);
        }
        document.getElementById('txt_CessTotal').value=parseFloat(txt_CessTotal).toFixed(2);
        var TaxTotal = parseFloat(tot_sgst) + parseFloat(tot_cgst) + parseFloat(tot_igst);
        var ss = parseFloat(stot) + parseFloat(TaxTotal);
        var Total1 = parseFloat(parseFloat(ss) + parseFloat(txt_CessTotal)).toFixed(2);
        document.getElementById('txt_Total1').value= parseFloat(Total1).toFixed(2);

        var txt_TcsPer = (document.getElementById('txt_TcsPer').value == "") ? 0 : document.getElementById('txt_TcsPer').value;
        var txt_TcsTotal = 0;
        if(chk_IsTcsCalc == 1){
            txt_TcsTotal = parseFloat(parseFloat(Total1) * parseFloat(txt_TcsPer) / 100);
        }
        document.getElementById('txt_TcsTotal').value=txt_TcsTotal.toFixed(2);
        document.getElementById('txt_TaxAmount').value=parseFloat(tot_tax).toFixed(2);
        var NetAmount = parseFloat(parseFloat(txt_TcsTotal) + parseFloat(Total1));
        document.getElementById('txt_NetAmount').value=parseFloat(NetAmount).toFixed(2);
        var RndOff = 0;
        var tts = 0;
        if(IsAutoRoundOff == 1){
            RndOff = Math.round(NetAmount);
            tts = parseFloat(RndOff) - parseFloat(NetAmount);
        }
        else{
            tts = parseFloat(txt_piRoundOff);
            RndOff = parseFloat(txt_piRoundOff) + parseFloat(NetAmount);
        }
        document.getElementById('txt_piRoundOff').value=parseFloat(tts).toFixed(2);
        document.getElementById('txt_GrandTotal').value=parseFloat(RndOff).toFixed(2);

    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalcLineTotal(n)
{
    try{
        var txt_C_StateId = (document.getElementById("txt_Comp_StateId").value == "") ? 0 : document.getElementById("txt_Comp_StateId").value;
        var txt_C_CountryId = (document.getElementById("txt_Comp_CountryId").value == "") ? 0 : document.getElementById("txt_Comp_CountryId").value;
        var txt_S_StateId = (document.getElementById("txt_C_StateId").value == "") ? 0 : document.getElementById("txt_C_StateId").value;
        var txt_S_CountryId = (document.getElementById("txt_C_CountryId").value == "") ? 0 : document.getElementById("txt_C_CountryId").value;
        var prodprice = (document.getElementById('prodprice'+n).value == "") ? 0 : document.getElementById('prodprice'+n).value;
        var prodqty = (document.getElementById('txt_prodqty'+n).value == "") ? 0 : document.getElementById('txt_prodqty'+n).value;
        var sprodqty = (document.getElementById('sprodqty'+n).value == "") ? 0 : document.getElementById('sprodqty'+n).value;
        var sValue = (document.getElementById('txt_item_sValue'+n).value == "") ? 0 : document.getElementById('txt_item_sValue'+n).value;
        var qq = parseFloat(parseFloat(sprodqty) * parseFloat(sValue));
        document.getElementById("txt_prodqty"+n).value = parseFloat(qq).toFixed(3);
        var ss = parseFloat(prodprice) * parseFloat(qq);
        var item_TaxId = (document.getElementById('item_TaxId'+n).value == "") ? 0 : document.getElementById('item_TaxId'+n).value;
        var item_Sgst = (document.getElementById('item_Sgst'+n).value == "") ? 0 : document.getElementById('item_Sgst'+n).value;
        var item_Cgst = (document.getElementById('item_Cgst'+n).value == "") ? 0 : document.getElementById('item_Cgst'+n).value;
        var item_Igst = (document.getElementById('item_Igst'+n).value == "") ? 0 : document.getElementById('item_Igst'+n).value;
        var item_IsTaxable = (document.getElementById('item_IsTaxable'+n).value == "") ? 0 : document.getElementById('item_IsTaxable'+n).value;
        var SgstValue = 0;
        var CgstValue = 0;
        var IgstValue = 0;
        var TotalTax=0;
        var LineTotalAmount=0;
        if((item_IsTaxable == 1) && (item_TaxId > 0)){
            if((txt_C_CountryId == txt_S_CountryId) && (txt_C_StateId == txt_S_StateId)) {
                SgstValue = (ss * item_Sgst / 100);
                CgstValue = (ss * item_Cgst / 100);
                IgstValue = 0;
            }
            else{
                SgstValue = 0;
                CgstValue = 0;
                IgstValue = (ss * item_Igst / 100);
            }
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(ss) + parseFloat(TotalTax)).toFixed(2);
        }
        else if((item_IsTaxable == 0) && (item_TaxId == 0)){
            SgstValue = 0;
            CgstValue = 0;
            IgstValue = 0;
            TotalTax = parseFloat(parseFloat(SgstValue) + parseFloat(CgstValue) + parseFloat(IgstValue)).toFixed(2);
            LineTotalAmount = parseFloat(parseFloat(sprodvalue) + parseFloat(TotalTax)).toFixed(2);
        }
        else{
            alert("Tax detail is missing for this item...");
            return false;
        }
        document.getElementById('prodvalue'+n).value = parseFloat(ss).toFixed(2);
        document.getElementById('SgstValue'+n).value = parseFloat(SgstValue).toFixed(2);
        document.getElementById('CgstValue'+n).value = parseFloat(CgstValue).toFixed(2);
        document.getElementById('IgstValue'+n).value = parseFloat(IgstValue).toFixed(2);
        document.getElementById('TotalTax'+n).value = parseFloat(TotalTax).toFixed(2);
        document.getElementById('LineTotalAmount'+n).value = parseFloat(LineTotalAmount).toFixed(2);
        //$("#span_SgstValue"+n).innerHTML('');
        $("#span_SgstValue"+n).html(parseFloat(SgstValue).toFixed(2));
        $("#span_CgstValue"+n).html(parseFloat(CgstValue).toFixed(2));
        $("#span_IgstValue"+n).html(parseFloat(IgstValue).toFixed(2));
        $("#span_item_TotalTax"+n).html(parseFloat(TotalTax).toFixed(2));
        $("#span_item_LineTotalAmount"+n).html(parseFloat(LineTotalAmount).toFixed(2));
        calculateWasteCottonSalesSum();
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}


function Validation_Form(){
    try{
        var cmb_s_customer = document.getElementById('cmb_s_customer').value;
        var txt_BillDate = document.getElementById('dp1').value;
        var totqty = document.getElementById('totqty').value;
        var billtotal = document.getElementById('billtotal').value;
        var chk_IsCessTaxCalc = 0;
        var chk_IsTcsCalc = 0;
        if(cmb_s_customer == 0){
            alert("Select Customer....");
            return false;
        }
        if(txt_BillDate == ''){
            alert("Select Date....");
            return false;
        }
        if(totqty == 0){
            alert("Total Qty Missing....");
            return false;
        }
        if(billtotal == 0){
            alert("Total Amount Missing....");
            return false;
        }
        if(document.getElementById("chk_IsCessTaxCalc").checked == true){
            chk_IsCessTaxCalc = 1;
        }
        if(document.getElementById("chk_IsTcsCalc").checked == true){
            chk_IsTcsCalc = 1;
        }
        if(chk_IsCessTaxCalc == 1){
            var txt_CessPer = (document.getElementById('txt_CessPer').value == "") ? 0 : document.getElementById('txt_CessPer').value;
            if(txt_CessPer == 0){
                alert("Cess % value missing");
                return false;
            }
        }
        if(chk_IsTcsCalc == 1){
            var txt_TcsPer = (document.getElementById('txt_TcsPer').value == "") ? 0 : document.getElementById('txt_TcsPer').value;
            if(txt_TcsPer == 0){
                alert("TCS % value missing");
                return false;
            }
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function calc_SaleOrder_cQty(){
    try{
        var prodprice = (document.getElementById("prodprice").value == "") ? 0 : document.getElementById("prodprice").value;
        var prodqty = (document.getElementById("prodqty").value == "") ? 0 : document.getElementById("prodqty").value;
        var txt_item_pValue = (document.getElementById("txt_item_pValue").value == "") ? 0 : document.getElementById("txt_item_pValue").value;
        var txt_item_sValue = (document.getElementById("txt_item_sValue").value == "") ? 0 : document.getElementById("txt_item_sValue").value;
        var txt_item_IsNoQtyCalc = 0;
        /*var ss = parseFloat(txt_item_pValue) / parseFloat(txt_item_sValue);
        var qq = parseFloat(prodqty) * parseFloat(ss);
        document.getElementById("prodcqty").value = parseFloat(qq).toFixed(3);*/
        if(txt_item_IsNoQtyCalc == 1)
        {
            var qq = parseFloat(parseFloat(prodqty) * parseFloat(prodprice)).toFixed(3);
            document.getElementById("prodcqty").value = parseFloat(qq).toFixed(3);
            document.getElementById("prodTotal").value = parseFloat(qq).toFixed(3);
        }
        else
        {
            var qq = parseFloat(parseFloat(prodqty) * parseFloat(txt_item_sValue)).toFixed(3);
            document.getElementById("prodcqty").value = parseFloat(qq).toFixed(3);
            CalcSaleOrderTotal()
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalcSaleOrderTotal(){
    try{
        var prodprice = (document.getElementById("prodprice").value == "") ? 0 : document.getElementById("prodprice").value;
        var prodcqty = (document.getElementById("prodcqty").value == "") ? 0 : document.getElementById("prodcqty").value;

        var su = parseFloat(parseFloat(prodcqty) * parseFloat(prodprice)).toFixed(2);
        document.getElementById("prodTotal").value = parseFloat(su).toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}