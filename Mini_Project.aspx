<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mini_project.aspx.cs" Inherits="WebApplication1.Mini_project" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Marks Calculator</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 6px;
            color: #555555;
            font-weight: 600;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .result-box {
            margin-top: 25px;
            padding: 15px;
            background-color: #e9ecef;
            border-left: 5px solid #007bff;
            border-radius: 4px;
            font-size: 15px;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Student Result Portal</h2>
            
            <div class="form-group">
                <label>First Name:</label>
                <asp:TextBox ID="txtName1" runat="server" placeholder="Enter first name"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Last Name:</label>
                <asp:TextBox ID="txtName2" runat="server" placeholder="Enter last name"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Subject 1 Marks:</label>
                <asp:TextBox ID="txtSub1" runat="server" placeholder="Enter marks out of 100"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Subject 2 Marks:</label>
                <asp:TextBox ID="txtSub2" runat="server" placeholder="Enter marks out of 100"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Subject 3 Marks:</label>
                <asp:TextBox ID="txtSub3" runat="server" placeholder="Enter marks out of 100"></asp:TextBox>
            </div>

            <div class="btn-container">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate Result" CssClass="btn" OnClick="btnCalculate_Click" />
            </div>

            <div class="result-box">
                <asp:Label ID="lblResult" runat="server" Text="Result will appear here..."></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>