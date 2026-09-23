using System;

namespace WebApplication1
{
    public partial class Mini_project : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic agar zaroorat ho toh
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                // Input values lena
                string firstName = txtName1.Text.Trim();
                string lastName = txtName2.Text.Trim();

                // Marks ko double ya int me convert karna
                double sub1 = Convert.ToDouble(txtSub1.Text);
                double sub2 = Convert.ToDouble(txtSub2.Text);
                double sub3 = Convert.ToDouble(txtSub3.Text);

                // Calculation
                double totalMarks = sub1 + sub2 + sub3;
                double percentage = totalMarks / 3.0;

                // Pass/Fail logic (Example: 40% se zyada par Pass)
                string status = (percentage >= 40) ? "Pass" : "Fail";

                // Result display karna
                lblResult.Text = $"<b>Student:</b> {firstName} {lastName}<br/>" +
                                 $"<b>Total Marks:</b> {totalMarks} / 300<br/>" +
                                 $"<b>Percentage:</b> {percentage:F2}%<br/>" +
                                 $"<b>Status:</b> {status}";
            }
            catch (Exception)
            {
                lblResult.Text = "Kripya sabhi fields me valid numbers enter karein!";
            }
        }
        
