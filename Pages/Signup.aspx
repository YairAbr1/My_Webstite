<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Skyblock_website.Pages.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table { 
            margin: 0px auto;       /*  מירכוז טבלה */
            border: 0px;            /*  הטופס ירשם במבנה טבלה אך קווי הטבלה לא יוצגו */
        }
        input { text-align: center; }
        h2 { direction: ltr; text-align: center; }
        body{
            color:white;
        }
    </style>

    <script>
        function chkForm() {

            var uName = document.getElementById("uName").value;
            if (uName.length < 2) {
                document.getElementById("mUName").value = "Username doesn't exist or is too short";
                document.getElementById("mUName").style.display = "inline";

                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            //first name is too short or doesn't exist
            var fName = document.getElementById("fName").value;
            if (fName.length < 2) {
                document.getElementById("mFName").value = "First name doesn't exist or is too short ";
                document.getElementById("mFName").style.display = "inline";

                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            //--- שם משפחה קצר מדי או לא קיים ---
            var lName = document.getElementById("lName").value;
            if (lName.length < 2) {
                document.getElementById("mLName").value = "Family name doesn't exist or is too short ";
                document.getElementById("mLName").style.display = "inline";

                return false;
            }
            else
                document.getElementById("mLName").style.display = "none";

            //--- בדיקת תקינות לכתובת דוא'ל ---
            var email = document.getElementById("email").value;
            var size = email.length;
            var atSign = email.indexOf('@');
            var dotSign = email.indexOf('.', atSign);

            var msg = "";
            if (size < 6)
                msg = "כתובת דוא'ל קצרה מדי או לא קיימת ";
            else if (atSign == -1)
                msg = "סימן @ לא קיים בכתובת";
            else if (atSign != email.lastIndexOf('@'))
                msg = "אסור יותר מ- @ אחד בכתובת דוא'ל ";
            else if (atSign < 2 || email.lastIndexOf('@') == size - 1)
                msg = "סימן ה-@ אינו יכול להיות במקום ראשון או אחרון ";
            else if (email.indexOf('.') == 0 || email.lastIndexOf('.') == size - 1)
                msg = "נקודה לא יכולה להיות תו ראשון או אחרון בכתובת ";
            else if (dotSign - atSign <= 1)
                msg = "נקודה חייבת להיות לפחות 2 תווים אחרי סימן ה-@";


            else if (!isQuot(email))
                msg = "כתובת דוא'ל לא יכולה להכיל גרש או גרשיים";
            else if (!isValidString(email))
                msg = "כתובת דוא'ל לא יכולה להכיל תווים אסורים";
            else if (!isHebreu(email))
                msg = "כתובת דוא'ל לא יכולה להכיל עברית";

            if (msg != "") {
                document.getElementById("mEmail").value = msg;
                document.getElementById("mEmail").style.display = "inline";

                return false;
            }
            else { document.getElementById("mEmail").style.display = "none"; }

            //--- בדיקה עבור סיסמא --
            var pw = document.getElementById("pw").value;
            var pw1 = document.getElementById("pw1").value;
            // alert("pw = " + pw + "\n pw1 = " + pw1);

            if (pw.length < 6) {
                msg = " Password need to be 6 - 19 characters long ";

                document.getElementById("mPw").value = msg;
                document.getElementById("mPw").style.display = "inline";

                return false;
            }
            else if (pw.length > 19) {
                msg = " Password need to be 6 - 19 characters long ";

                document.getElementById("mPw").value = msg;
                document.getElementById("mPw").style.display = "inline";

                return false;
            }
            else { document.getElementById("mPw").style.display = "none"; }


            //--- בדיקה האם הסיסמא שווה לסיסמת האימות ---
            if (pw != pw1) {
                msg = " Passwords doesn't match ";

                document.getElementById("mPw1").value = msg;
                document.getElementById("mPw1").style.display = "inline";

                return false;
            }
            else {
                document.getElementById("mPw1").style.display = "none";
            }
            //--- בדיקת מספר טלפון --- 
            var phone = document.getElementById("phone").value;

            if (phone.length != 7 || isNaN(phone)) {
                msg = " מספר הטלפון חייב להיות בן 7 ספרות ";

                document.getElementById("mPhone").value = msg;
                document.getElementById("mPhone").style.display = "inline";
                msg = "";

                return false;
            }
            else { document.getElementById("mPhone").style.display = "none"; }

            var city = document.getElementById("city").value;
            msg = "";
            if (city.length < 2) {
                document.getElementById("mCity").value = "City doesn't exist or is too short";
                document.getElementById("mCity").style.display = "inline";

                return false;
            }
            else
                document.getElementById("mCity").style.display = "none";
            if (!isHebreu(city)) {
                msg = " city can't have hebrew ";
            }

            if (msg != "") {
                document.getElementById("mCity").value = msg;
                document.getElementById("mCity").style.display = "inline";

                return false;
            }
            else {
                document.getElementById("mCity").style.display = "none";
            }
            
    /*
                //---   בדיקת שנת לידה ---
                //--- שנת לידה חייבת להיות מספר ---
                var yearBorn = document.getElementById("yearBorn").value;
                if (isNaN(yearBorn) || yearBorn < 1980)         //  isNaN = is Not a Number
                {
                    msg = "שנת לידה חייבת להכיל מספר שלם, 4 ספרתי גדול מ- 1900";
    
                    document.getElementById("mYearBorn").value = msg;
                    document.getElementById("mYearBorn").style.display = "inline";
                    msg = "";
                    return false;
                }
                else
                    document.getElementById("mYearBorn").style.display = "none";
    */
     //--- בדיקה עבור עיר ---
            

    

            
            return true;
        }
        

//--- אם מכיל גרש או גרשיים - לא תקין ---            
        function isQuot(mail) {
            var quot = '\"', quot1 = "\'";
            if (mail.indexOf(quot) != -1 || mail.indexOf(quot1) != -1) {
                
                return false;
            }
    return true;
}

//--- מכיל תווים אסורים ---
function isValidString(mail) {
    var badChr = "$%^&*()-! []{}<>?";
    var len = badChr.length;

    var i = 0, pos, ch;
    while (i < len) {
        ch = badChr.charAt(i);
        pos = mail.indexOf(ch);
        if (pos != -1) {
            alert("הטופס לא");
            return false;
        }
        i++;
    }
    return true;
}

//--- מכיל תווים אסורים ---
        
function isHebreu(mail) {
    var badChr = "אבגדהוזחטיכךלמםנןסעפףצץקרשת";
    var len = badChr.length;

    var i = 0, pos, ch;
    while (i < len) {
        ch = badChr.charAt(i);
        pos = mail.indexOf(ch);
        if (pos != -1) {
            
            return false;
        }
        i++;
    }
    
            return true;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="menu">
        <h4 style="color: #ffffff";>Hello Guest</h4>
        <a href="About.aspx">About</a>
        <a style="margin-right:20px" href="Home.aspx">Home</a>
        <a  href="Login.aspx">Login</a>
        <a style="color:orange" href="#">Signup</a>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Signup form</h1>

    <form method="post" runat="server" onsubmit="return chkForm();" >
        <table>
            <tr>
                <td>Username</td>
                <td>
                    <input type="text" id="uName" name="uName" />
                </td>
                <td>
                    <input type = "text" id = "mUName" size = "30"
                           style = "display: none; background-color: Silver; font-weight:bold;"
                                    disabled  = "disabled" />
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>
                    <input type="text" id="fName" name="fName" />
                </td>
                <td>
                    <input type = "text" id = "mFName" size = "30"
                           style = "display: none; background-color: Silver; font-weight:bold;"
                                    disabled  = "disabled" />
                </td>
            </tr>
            <tr>
                <td>Family Name</td>
                <td>
                    <input type="text" id="lName" name="lName" />
                </td>
                <td>
                    <input type = "text" id = "mLName" size = "30"
                           style = "display: none; background-color: Silver; font-weight:bold;"
                                    disabled  = "disabled" />
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <input type="text" id="email" name="email" />
                </td>
                <td>
                    <input type = "text" id = "mEmail" size = "30"
                           style = "display: none; background-color: Silver; font-weight:bold;"
                                    disabled  = "disabled" />
                </td>
            </tr>
            <tr>
				<td> Password: </td>    
				<td> <input type="password" name="pw" id="pw" size="10" 
						maxlength="19" /> 
				</td>
                <td><input type="text" id="mPw" size="30" 
                        style="display: none; background-color: silver; color: red; font-weight:bold;" 
                        disabled="disabled" /> </td>
			</tr>

			<tr>
				<td> Repeat Password: </td> 
				<td> <input type="password" name="pw1" id="pw1" size="10" 
							maxlength="19" /> 
				</td>
                <td><input type="text" id="mPw1" size="30" 
                        style="display: none; background-color: silver; color: red; font-weight:bold;" 
                        disabled="disabled" /> </td>
			</tr>
            <tr> 
				<td> Gender: </td>
				<td><input type="radio" name="gender" value ="male"   checked /> male
                   	<input type="radio" name="gender" value ="female"  /> female  
				</td>
                <td></td>
			</tr>
			<tr>
				<td> Year Born: </td>
				<td> 
                    <select name = "yearBorn">
                    <%= yrBorn %>
                    </select>                           
                </td>
                <td>                    
                </td>
			</tr>
			<tr>					
				<td> Phone: </td>

				<td><select name="prefix" id="prefix">
						<option value=02 > 02</option>
						<option value=03> 03</option>
						<option value=04> 04</option> 
						<option value=08> 08</option>
						<option value=09> 09</option>
						<option value=050> 050</option>
						<option value=052 selected> 052</option> 
						<option value=054> 054</option>					
						<option value=057> 057</option> 
						<option value=077> 077</option>
					</select> 
                    -
                    <input type="text" name="phone" id="phone" size="7" maxlength="7" />                          
					                       
				</td>
				<td><input type="text" id="mPhone" 
                        style="display:none; background-color:Black; color: White; font-weight:bold;" 
                        disabled="disabled" /> 
                </td>					
			</tr>

            <tr>					
				<td> City: </td>
				<td> 
					<input type="text" id="city" name="city" />      
				</td>
				<td>
                    <input type = "text" id = "mCity" size = "30"
                           style = "display: none; background-color: Silver; font-weight:bold;"
                                    disabled  = "disabled" />
                </td>					
			</tr>

            <tr>
                <td> Hobbies</td>
                    <td>
                        <table style = "width: 550px;">
                            <tr>                   
                            <td class ="cbHob"><input type = "checkbox" name = "hobby" value = "1" checked = "checked" />
                            Computers   </td>		

                            <td class ="cbHob"><input type="checkbox" name="hobby" value="2" />   
                            Music   </td>		
		                
	                        <td class ="cbHob"><input type="checkbox" name="hobby" value="3" />		
		                    Movies   </td>		
		                
	                        <td class ="cbHob"><input type="checkbox" name="hobby" value="4" />
		                    Gym       </td>			                
	                    </tr>
                        </table>
                </td>
                <td></td>
            </tr>

                  
			

            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="  Submit  " />   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type = "reset"  value = "  Reset  " />
                </td>
            </tr>
        </table>
    </form>

    <br />

    <h2><%= sqlMsg %></h2>

    <table style ="margin: 0 auto; direction: ltr;" border ="1" > 
        <%= st %>
    </table>

    <h3><%= msg %></h3>


</asp:Content>
