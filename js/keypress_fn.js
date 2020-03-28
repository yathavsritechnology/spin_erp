/*
onkeypress="return numbersonly(event)"
onkeypress="return phonenumber(event)"
onkeypress="return currency(event)"
*/

function numbersonly(e)
{
	var key = e.which || e.keyCode;
	if (!e.shiftKey && !e.altKey && !e.ctrlKey && 
	 // numbers   
		 key >= 48 && key <= 57 ||
	 // Backspace and Tab and Enter
		key == 8 || key == 9 || key == 13 ||
	//	. and F2
		key == 46 || key == 113 ||
	 // Home and End
		key == 35 || key == 36 ||
	 // left and right arrows
		key == 37 || key == 39)
		 return true;

	 return false;
}

function phonenumber(e)
{
	var key = e.which || e.keyCode;
	
	if (!e.shiftKey && !e.altKey && !e.ctrlKey && 
	//numbers   
	 key >= 48 && key <= 57 ||
	
	//Backspace and Tab and Enter
	key == 8 || key == 9 || key == 13 ||
	
	//Space key
	key == 32 ||
	
	//Home and End
	key == 35 || key == 36)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function currency(e)
{
	var key = e.which || e.keyCode;
	
	if (!e.shiftKey && !e.altKey && !e.ctrlKey && 
	//numbers   
	 key >= 48 && key <= 57 ||
	
	//Backspace and Tab and Enter
	key == 8 || key == 9 || key == 13 ||
	
	//.
	key == 46)
	{
		return true;
	}
	else
	{
		return false;
	}
}



function alphanumeric_only(e)
{
    var key = e.which || e.keyCode;
	if ((key == 32) || (key >= 47 && key <= 57) || (key >= 65 && key <= 90) || (key >= 97 && key <= 122))
	{
        return true;
    }
    else
	{
        alert("Sorry You can not insert Special Character");
        return false;
    }
    return true;
}