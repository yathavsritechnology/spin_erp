function Validation_Form(){
    try{
        var cmb_s_FromDepartment = document.getElementById('cmb_s_FromDepartment').value;
        var txt_WorkMasterName = document.getElementById('txt_WorkMasterName').value;
        if(cmb_s_FromDepartment == 0){
            alert("Select Department");
            document.getElementById('cmb_s_FromDepartment').focus();
            return false;
        }
         if(txt_WorkMasterName == ""){
            alert("Task Name Missing...");
             document.getElementById('txt_WorkMasterName').focus();
            return false;
        }
        var txt_RowCount = (document.getElementById('txt_RowCount').value == '') ? 0 : document.getElementById('txt_RowCount').value;
        if(txt_RowCount == 0){
            alert("Department List Missing....");
            return false;
        }
        /*if(txt_RowCount > 0) {
            for (n = 1; n <= txt_RowCount; n++) {
                if(document.getElementById('chk_active'+n).checked==true) {
                    var txt_cone_wt = (document.getElementById('txt_cone_wt' + n).value == '') ? 0 : document.getElementById('txt_cone_wt' + n).value;

                    if(txt_cone_wt == 0){
                        alert("Cone Wt Missing");
                        return false;
                    }
                }
            }
        }*/
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function change_value(deptid, n){
    try{
        var txt_stime = document.getElementById('txt_stime'+deptid+n).value;
        if(txt_stime != ''){
            document.getElementById('chk_wkdays'+deptid+n).checked = true;
        }else{
            document.getElementById('chk_wkdays'+deptid+n).checked = false;
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}

function change_date(deptid, n){
    try{
        var txt_stime = document.getElementById('txt_stime'+deptid+n).value;
        if(txt_stime != ''){
            document.getElementById('chk_maclist'+deptid+n).checked = true;
        }else{
            document.getElementById('chk_maclist'+deptid+n).checked = false;
        }
    }
    catch(e){
        alert(e.name + "\n" + e.message + "\n" + e.lineNumber);
    }
}