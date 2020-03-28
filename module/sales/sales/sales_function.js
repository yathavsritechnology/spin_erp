function AddSalesProducts() {
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
            SalesSgstCalc()
        }
        else{
            SalesIgstCalc();
        }
        //calculateSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SalesSgstCalc(){
    try{
        var sprodid, sprodname, sprodprice, sprodqty, sprodvalue, prodbUomId, prodUomName, prodsUomId, txt_Discount;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        sprodqty = (document.getElementById("prodqty").value == "") ? 0 : document.getElementById("prodqty").value;
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
        sprodvalue = parseFloat(sprodqty) * parseFloat(sprodprice);
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
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="slno[]" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[]" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="txt_PodId[]" readonly="true" id="txt_PodId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_PoId[]" readonly="true" id="txt_PoId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="prodsUomId[]" readonly="true" id="prodsUomId' + n + '" value = "' + prodsUomId + '" />'
            + '<input class="txt_40" type="hidden" name="prodbUomId[]" readonly="true" id="prodbUomId' + n + '" value = "' + prodbUomId + '" />'
            + '<input class="txt_40" type="hidden" name="item_TaxId[]" readonly="true" id="item_TaxId' + n + '" value = "' + txt_item_TaxId + '" />'
            + '<input class="txt_40" type="hidden" name="item_Sgst[]" readonly="true" id="item_Sgst' + n + '" value = "' + txt_item_Sgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Cgst[]" readonly="true" id="item_Cgst' + n + '" value = "' + txt_item_Cgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Igst[]" readonly="true" id="item_Igst' + n + '" value = "' + txt_item_Igst + '" />'
            + '<input class="txt_40" type="hidden" name="item_IsTaxable[]" readonly="true" id="item_IsTaxable' + n + '" value = "' + txt_item_IsTaxable + '" />'
            + '<input class="txt_40" type="hidden" name="SgstValue[]" readonly="true" id="SgstValue' + n + '" value = "' + SgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="CgstValue[]" readonly="true" id="CgstValue' + n + '" value = "' + CgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="IgstValue[]" readonly="true" id="IgstValue' + n + '" value = "' + IgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="TotalTax[]" readonly="true" id="TotalTax' + n + '" value = "' + TotalTax + '" />'
            + '<input class="txt_40" type="hidden" name="LineTotalAmount[]" readonly="true" id="LineTotalAmount' + n + '" value = "' + LineTotalAmount + '" />'
            + '</td>'
            + '<td>' + sprodname + '<input type="hidden" value="' + sprodname + '" id="prodname' + n + '" /></td>'
            + '<td>' + prodUomName + '</td>'
            + '<td><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_100 text_align_right" type="text" name="txt_Rate[]" id="txt_Rate' + n + '" value="' + sprodprice + '" /></td>'
            + '<td><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_100 text_align_right" type="text" name="txt_iQty[]" id="txt_iQty' + n + '" value="' + sprodqty + '" /></td>'
            + '<td class="text_align_right"><input class="txt_100 text_align_right prodvalue" type="text" name="prodvalue[]" id="prodvalue' + n + '" value="' + sprodvalue + '" readonly="true" /></td>'
            + '<td nowrap class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Sgst' + n + '">' + txt_item_Sgst + ' %</span></span><br /><span id="span_SgstValue' + n + '">' + parseFloat(SgstValue).toFixed(2) + '</td>'
            + '<td nowrap class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Cgst' + n + '">' + txt_item_Cgst + ' %</span></span><br /><span id="span_CgstValue' + n + '">' + parseFloat(CgstValue).toFixed(2) + '</td>'
            + '<td nowrap class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Igst' + n + '">' + txt_item_Igst + ' %</span></span><br /><span id="span_IgstValue' + n + '">' + parseFloat(IgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right"><span id="span_item_TotalTax' + n + '">' + parseFloat(TotalTax).toFixed(2) + '</span></td>'
            + '<td class="text_align_right"><span id="span_item_LineTotalAmount' + n + '">' + parseFloat(LineTotalAmount).toFixed(2) + '</span></td>'
            + '<td><input checked onchange="calculateSalesSum()" type="checkbox" id="chk_seleitem' + n + '" /></td>'
            + '</tr>').appendTo("#sivTable");

        document.getElementById('txt_item_ItemId').value="";
        document.getElementById('txt_item_ItemName').value="";
        document.getElementById('prodprice').value="";
        document.getElementById('prodqty').value="";
        document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_RowCount').value= n;
        $("#cmb_a_item").chosen();
        $('#cmb_a_item').trigger('chosen:open');
        $('#cmb_a_item').trigger('chosen:activate');
        calculateSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function SalesIgstCalc(){
    try{
        var sprodid, sprodname, sprodprice, sprodqty, sprodvalue, prodbUomId, prodUomName, prodsUomId;
        sprodid = (document.getElementById("txt_item_ItemId").value == "") ? 0 : document.getElementById("txt_item_ItemId").value;
        sprodname = document.getElementById("txt_item_ItemName").value;
        sprodqty = (document.getElementById("prodqty").value == "") ? 0 : document.getElementById("prodqty").value;
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
        if(sprodqty == 0) {
            alert("Enter Qty");
            document.getElementById("prodqty").focus();
            return false;
        }
        if((txt_item_IsTaxable == 1) && (txt_item_TaxId == 0)){
            alert("Tax detail is missing for Taxable Item " + sprodname);
            return false;
        }
        sprodvalue = parseFloat(sprodqty) * parseFloat(sprodprice);
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
            + '<td>' + n
            + '<input class="txt_40" type="hidden" name="slno[]" readonly="true" id="slno' + n + '" value = "' + n + '" />'
            + '<input class="txt_40" type="hidden" name="prodid[]" readonly="true" id="prodid' + n + '" value = "' + sprodid + '" />'
            + '<input class="txt_40" type="hidden" name="txt_PodId[]" readonly="true" id="txt_PodId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="txt_PoId[]" readonly="true" id="txt_PoId' + n + '" value = "0" />'
            + '<input class="txt_40" type="hidden" name="prodsUomId[]" readonly="true" id="prodsUomId' + n + '" value = "' + prodsUomId + '" />'
            + '<input class="txt_40" type="hidden" name="prodbUomId[]" readonly="true" id="prodbUomId' + n + '" value = "' + prodbUomId + '" />'
            + '<input class="txt_40" type="hidden" name="item_TaxId[]" readonly="true" id="item_TaxId' + n + '" value = "' + txt_item_TaxId + '" />'
            + '<input class="txt_40" type="hidden" name="item_Sgst[]" readonly="true" id="item_Sgst' + n + '" value = "' + txt_item_Sgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Cgst[]" readonly="true" id="item_Cgst' + n + '" value = "' + txt_item_Cgst + '" />'
            + '<input class="txt_40" type="hidden" name="item_Igst[]" readonly="true" id="item_Igst' + n + '" value = "' + txt_item_Igst + '" />'
            + '<input class="txt_40" type="hidden" name="item_IsTaxable[]" readonly="true" id="item_IsTaxable' + n + '" value = "' + txt_item_IsTaxable + '" />'
            + '<input class="txt_40" type="hidden" name="SgstValue[]" readonly="true" id="SgstValue' + n + '" value = "' + SgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="CgstValue[]" readonly="true" id="CgstValue' + n + '" value = "' + CgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="IgstValue[]" readonly="true" id="IgstValue' + n + '" value = "' + IgstValue + '" />'
            + '<input class="txt_40" type="hidden" name="TotalTax[]" readonly="true" id="TotalTax' + n + '" value = "' + TotalTax + '" />'
            + '<input class="txt_40" type="hidden" name="LineTotalAmount[]" readonly="true" id="LineTotalAmount' + n + '" value = "' + LineTotalAmount + '" />'
            + '</td>'
            + '<td>' + sprodname + '<input type="hidden" value="' + sprodname + '" id="prodname' + n + '" /></td>'
            + '<td>' + prodUomName + '</td>'
            + '<td><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_100 text_align_right" type="text" name="txt_Rate[]" id="txt_Rate' + n + '" value="' + sprodprice + '" /></td>'
            + '<td><input onfocus="this.select();" onchange="CalcLineTotal(' + n + ')" class="txt_100 text_align_right" type="text" name="txt_iQty[]" id="txt_iQty' + n + '" value="' + sprodqty + '" /></td>'
            + '<td class="text_align_right"><input class="txt_100 text_align_right prodvalue" type="text" name="prodvalue[]" id="prodvalue' + n + '" value="' + sprodvalue + '" readonly="true" /></td>'
            + '<td class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Sgst' + n + '">' + txt_item_Sgst + ' %</span></span><br /><span id="span_SgstValue' + n + '">' + parseFloat(SgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Cgst' + n + '">' + txt_item_Cgst + ' %</span></span><br /><span id="span_CgstValue' + n + '">' + parseFloat(CgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right"><span class="fontsize08 textcolor_deeppink"><span id="span_item_Igst' + n + '">' + txt_item_Igst + ' %</span></span><br /><span id="span_IgstValue' + n + '">' + parseFloat(IgstValue).toFixed(2) + '</td>'
            + '<td class="text_align_right"><span id="span_item_TotalTax' + n + '">' + parseFloat(TotalTax).toFixed(2) + '</span></td>'
            + '<td class="text_align_right"><span id="span_item_LineTotalAmount' + n + '">' + parseFloat(LineTotalAmount).toFixed(2) + '</span></td>'
            + '<td><input checked onchange="calculateSalesSum()" type="checkbox" id="chk_seleitem' + n + '" /></td>'
            + '</tr>').appendTo("#sivTable");

        document.getElementById('txt_item_ItemId').value="";
        document.getElementById('txt_item_ItemName').value="";
        document.getElementById('prodprice').value="";
        document.getElementById('prodqty').value="";
        document.getElementById('txt_item_UomId').value="";
        document.getElementById('txt_RowCount').value= n;
        $("#cmb_a_item").chosen();
        $('#cmb_a_item').trigger('chosen:open');
        $('#cmb_a_item').trigger('chosen:activate');
        calculateSalesSum();
        return false;
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function calculateSalesSum()
{
    try{
        var stot = 0;
        var stot_amt = 0;
        var tot_sgst = 0;
        var tot_cgst = 0;
        var tot_igst = 0;
        var sqty = 0;
        var n = $("#sivTable tr.appear").size();
        var table = document.getElementById('sivTable');
        var rowCount = table.rows.length;
        if(rowCount > 0)
        {
            for (var i = 1; i < rowCount; i++)
            {
                var row = table.rows[i];
                var k = row.id.replace( /[^\d.]/g, '');
                if(document.getElementById('chk_active'+k).checked == true)
                {
                    var pQty = document.getElementById('txt_isQty'+k).value;
                    //var pQty = (document.getElementById('sprodqty'+k).value == "") ? 0 : document.getElementById('sprodqty'+k).value;
                    var LineTotalAmount = (document.getElementById('LineTotalAmount'+k).value == "") ? 0 : document.getElementById('LineTotalAmount'+k).value;
                    var prodvalue = (document.getElementById('prodvalue'+k).value == "") ? 0 : document.getElementById('prodvalue'+k).value;
                    var SgstValue = (document.getElementById('SgstValue'+k).value == "") ? 0 : document.getElementById('SgstValue'+k).value;
                    var CgstValue = (document.getElementById('CgstValue'+k).value == "") ? 0 : document.getElementById('CgstValue'+k).value;
                    var IgstValue = (document.getElementById('IgstValue'+k).value == "") ? 0 : document.getElementById('IgstValue'+k).value;
                    sqty += parseFloat(pQty);
                    stot += parseFloat(prodvalue);
                    tot_sgst += parseFloat(SgstValue);
                    tot_cgst += parseFloat(CgstValue);
                    tot_igst += parseFloat(IgstValue);
                    stot_amt += parseFloat(LineTotalAmount);
                    //stot += parseFloat(document.getElementById('prodvalue'+k).value);
                }
            }
        }
        document.getElementById('billtotal').value=parseFloat(stot).toFixed(2);
        document.getElementById('totqty').value=sqty.toFixed(2);
        document.getElementById('txt_CgstAmount').value = parseFloat(tot_cgst).toFixed(2);
        document.getElementById('txt_SgstAmount').value = parseFloat(tot_sgst).toFixed(2);
        document.getElementById('txt_IgstAmount').value = parseFloat(tot_igst).toFixed(2);
        var txt_TaxAmount = (document.getElementById('txt_TaxAmount').value == "") ? 0 : document.getElementById('txt_TaxAmount').value;
        var txt_NetAmount = (document.getElementById('txt_NetAmount').value == "") ? 0 : document.getElementById('txt_NetAmount').value;
        var txt_piRoundOff = (document.getElementById('txt_piRoundOff').value == "") ? 0 : document.getElementById('txt_piRoundOff').value;
        var TaxTotal = parseFloat(tot_sgst) + parseFloat(tot_cgst) + parseFloat(tot_igst);
        var ss = parseFloat(stot) + parseFloat(TaxTotal);
        document.getElementById('txt_TaxAmount').value=TaxTotal.toFixed(2);
        document.getElementById('txt_NetAmount').value=ss.toFixed(2);
        var RndOff = Math.round(ss);
        var tts = parseFloat(RndOff) - parseFloat(ss);
        //var q = parseFloat(txt_piRoundOff) + parseFloat(ss);
        //document.getElementById('txt_GrandTotal').value=parseFloat(q).toFixed(2);
        document.getElementById('txt_piRoundOff').value=parseFloat(tts).toFixed(2);
        document.getElementById('txt_GrandTotal').value=parseFloat(RndOff).toFixed(2);

    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function CalcSalesLineTotal(n)
{
    try{
        var txt_C_StateId = (document.getElementById("txt_Comp_StateId").value == "") ? 0 : document.getElementById("txt_Comp_StateId").value;
        var txt_C_CountryId = (document.getElementById("txt_Comp_CountryId").value == "") ? 0 : document.getElementById("txt_Comp_CountryId").value;
        var txt_S_StateId = (document.getElementById("txt_C_StateId").value == "") ? 0 : document.getElementById("txt_C_StateId").value;
        var txt_S_CountryId = (document.getElementById("txt_C_CountryId").value == "") ? 0 : document.getElementById("txt_C_CountryId").value;
        var txt_Rate = (document.getElementById('txt_Rate'+n).value == "") ? 0 : document.getElementById('txt_Rate'+n).value;
        //var prodqty = (document.getElementById('prodqty'+n).value == "") ? 0 : document.getElementById('prodqty'+n).value;
        var prodqty = (document.getElementById('txt_isQty'+n).value == "") ? 0 : document.getElementById('txt_isQty'+n).value;
        var ss = parseFloat(txt_Rate) * parseFloat(prodqty);
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
            LineTotalAmount = parseFloat(parseFloat(ss) + parseFloat(TotalTax)).toFixed(2);
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
        calculateSalesSum();
    }
    catch(e)
    {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}
