using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skyblock_website.Pages
{
    public partial class Signup : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlMsg = "";
        public string yrBorn = "";
        public string cityStr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //------ יצירת מחרוזת לשנת לידה ------
            int year = DateTime.Now.Year;       //  השנה הנוכחית
            int from = year - 50;
            int to = year - 7;

            //--- הצגת כל השנים בתחום ---
            for (int y = from; y < to; y++)
            {
                if (y == year - 16)     // ברירת מחדל - הצג את שנת הלידה של בני 16
                    yrBorn += $"<option value = '{y}' selected>{y}</option>";
                else
                    yrBorn += "<option value = '" + y + "'>" + y + "</option>";
            }

            //--- יצירת מחרוזת ליישוב מגורים ---
            string[] cities = { "חדרה", "חיפה", "ירושלים", "מודיעין", "נתניה", "ראשון-לציון", "תל-אביב", "צפון", "מרכז", "דרום", "" };
            for (int i = 0; i < cities.Length; i++)
            {
                if (cities[i] == "מודיעין")
                    cityStr += $"<option value = '{cities[i]}' selected>{cities[i]}</option>";
                else
                    cityStr += $"<option value = '{cities[i]}'>{cities[i]}</option>";
            }

            if (Request.Form["submit"] != null)
            {
                //------ אחזור פרטים מהטופס -------
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];

                string gender = Request.Form["gender"];
                string prefix = Request.Form["prefix"];

                string phone = Request.Form["phone"];
                string city = Request.Form["city"];


                string yearBorn = Request.Form["yearBorn"];       //  שנת לידה כמחרוזת
                int yBorn = int.Parse(yearBorn);                  //  המרת שנת לידה למספר

                string pw = Request.Form["pw"];             //  סיסמה          

                string hobby = Request.Form["hobby"];
                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                if (hobby != null)
                {
                    hobby = Request.Form["hobby"].ToString();    //  אוסף החוגים שסומנו
                    //--- בדיקה: האם מחרוזת התחביבים מכילה את הערכים 1 - 4 ---
                    if (hobby.Contains('1')) hob1 = 'T';
                    if (hobby.Contains('2')) hob2 = 'T';
                    if (hobby.Contains('3')) hob3 = 'T';
                    if (hobby.Contains('4')) hob4 = 'T';
                }

                /*
                                st += "<tr><th colspan='2'>הפרטים שהתקבלו</th></tr>";

                                st += "<tr><td>user name:  </td><td>" + uName + "</td></tr>";
                                st += "<tr><td>first name: </td><td>" + fName + "</td></tr>";
                                st += "<tr><td>last name:  </td><td>" + lName + "</td></tr>";
                                st += "<tr><td>email:      </td><td>" + email + "</td></tr>";
                                st += "<tr><td>yearBorn:   </td><td>" + yBorn + "</td></tr>";
                                st += "<tr><td>gender:     </td><td>" + gender + "</td></tr>";
                                st += "<tr><td>city:     </td><td>" + city + "</td></tr>";
                                st += "<tr><td>phone:      </td><td>" + prefix + "-" + phone + "</td></tr>";


                                st += "<tr><td>hobbies: </td><td>";
                                if (hob1 == 'T')
                                    st += "computers, ";
                                if (hob2 == 'T')
                                    st += "Music, ";
                                if (hob3 == 'T')
                                    st += "Movies, ";
                                if (hob4 == 'T')
                                    st += "TV, ";
                                if (hob5 == 'T')
                                    st += "Horses";
                                st += "</td></tr>";

                                st += "<tr><td>PassWord:  </td><td>" + pw + "</td></tr>";
                */

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                //--- בדיקה האם שם המשתמש תפוס ---
                string sqlSelect = $"select * from {tableName} where uName = '{uName}'";
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg = "שם המשתמש תפוס, נסה שוב עם שם אחר";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"insert into {tableName} ";
                    sqlInsert += $"values ('{uName}', '{fName}', '{lName}', '{email}', '{pw}', ";
                    sqlInsert += $"'{gender}', '{city}', {yBorn}, '{prefix}', '{phone}',  ";
                    sqlInsert += $"'{hob1}', '{hob2}', '{hob3}', '{hob4}')";
                    sqlMsg = sqlInsert;

                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "הרשומה התווספה בהצלה";
                }
            }
        }
    }
}