function calculateMixingissueSum(){
    try{
        var _totBales=0;
        var _IssueWt=0;
        var _Amt=0;
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
                     _IssueWt += parseFloat(document.getElementById('txt_IssueWt'+k).value);
                     _Amt += parseFloat(document.getElementById('Amt'+k).value);
                 }
             }
         }
         document.getElementById('txt_TotalBales').value=parseFloat(_totBales).toFixed(2);
         document.getElementById('txt_TotalIssueWt').value=parseFloat(_IssueWt).toFixed(3);
         document.getElementById('txt_TotalAmount').value=parseFloat(_Amt).toFixed(2);
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}