function SumProductionEntry_New() {
    try {
        var TotBags = 0;
        var TotCones = 0;
        var TotWt = 0;
        var txt_RowCount = document.getElementById('txt_RowCount').value;
        if (txt_RowCount > 0) {
            for (var i = 1; i <= txt_RowCount; i++) {
                if (document.getElementById('chk_active' + i).checked == true) {
                    TotBags += 1;
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    var BagNo = (document.getElementById('BagNo' + i).value == "") ? 0 : document.getElementById('BagNo' + i).value;
                    var NoOfCones = (document.getElementById('NoOfCones' + i).value == "") ? 0 : document.getElementById('NoOfCones' + i).value;
                    var GrossWt = (document.getElementById('GrossWt' + i).value == "") ? 0 : document.getElementById('GrossWt' + i).value;
                    var NetWt = (document.getElementById('NetWt' + i).value == "") ? 0 : document.getElementById('NetWt' + i).value;
                    var LotNo = document.getElementById('LotNo' + i).value;
                    if(BagNo == 0){
                        alert("Bag No Missing");
                        return false;
                    }
                    if(NoOfCones == 0){
                        alert("No Of Cones in Bag Missing");
                        return false;
                    }
                    /*if(NetWt == 0){
                        alert("Net Weight Missing");
                        return false;
                    }*/
                    if(LotNo == ''){
                        alert("Lot No Missing");
                        return false;
                    }
                    TotCones += parseFloat(NoOfCones);
                    TotWt += parseFloat(NetWt);
                }
            }
        }
        document.getElementById('txt_TotalBags').value = parseFloat(TotBags).toFixed(0);
        document.getElementById('txt_TotalCones').value = parseFloat(TotCones).toFixed(0);
        document.getElementById('txt_TotalWt').value = parseFloat(TotWt).toFixed(3);
    }
    catch (e) {
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function Validation_ProductionNew_Form(){
    try{
        var txt_entryno = document.getElementById('txt_entryno').value;
        var txt_ProDate = document.getElementById('txt_ProDate').value;
        var txt_TotalBags = (document.getElementById('txt_TotalBags').value == "") ? 0 : document.getElementById('txt_TotalBags').value;
        var txt_TotalCones = (document.getElementById('txt_TotalCones').value == "") ? 0 : document.getElementById('txt_TotalCones').value;
        var txt_TotalWt = (document.getElementById('txt_TotalWt').value == "") ? 0 : document.getElementById('txt_TotalWt').value;
        var txt_RowCount = document.getElementById('txt_RowCount').value;
        if(txt_entryno == ''){
            alert("Production No Missing");
            return false;
        }
        if(txt_ProDate == ''){
            alert("Select Date....");
            return false;
        }
        if(txt_TotalBags == 0){
            alert("Total Bags Missing....");
            return false;
        }
        if(txt_TotalCones == 0){
            alert("Total Cones Missing....");
            return false;
        }
        if(txt_TotalWt == 0){
            alert("Total Weight Missing....");
            return false;
        }
        if(txt_RowCount == 0){
            alert("Atleast add single item...")
            return false;
        }
        if (txt_RowCount > 0) {
            for (var i = 1; i <= txt_RowCount; i++) {
                if (document.getElementById('chk_active' + i).checked == true) {
                    //_supWt += parseFloat(document.getElementById('supWt'+k).value);
                    var BagNo = (document.getElementById('BagNo' + i).value == "") ? 0 : document.getElementById('BagNo' + i).value;
                    var NoOfCones = (document.getElementById('NoOfCones' + i).value == "") ? 0 : document.getElementById('NoOfCones' + i).value;
                    var GrossWt = (document.getElementById('GrossWt' + i).value == "") ? 0 : document.getElementById('GrossWt' + i).value;
                    var NetWt = (document.getElementById('NetWt' + i).value == "") ? 0 : document.getElementById('NetWt' + i).value;
                    var LotNo = document.getElementById('LotNo' + i).value;
                    if(BagNo == 0){
                        alert("Bag No Missing");
                        return false;
                    }
                    if(NoOfCones == 0){
                        alert("No Of Cones in Bag Missing");
                        return false;
                    }
                    if(NetWt == 0){
                        alert("Net Weight Missing");
                        return false;
                    }
                    if(LotNo == ''){
                        alert("Lot No Missing");
                        return false;
                    }
                }
            }
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}