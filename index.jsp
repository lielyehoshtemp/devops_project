<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Devops Project </title>
</head>
<style>
    p {
        font-weight: bold;
    }
</style>
<body>
    <h3>Devops Final Project 2222222222</h3>
    <h2>Login Page</h2>
    <form id="frm1" action="Action_form_process.jsp" method="GET">
        UserName: <input type="text" name="username">
        <br />
        Password: <input type="text" name="password" />
        <br />
        Mail: <input type="text" name="mail" />
        <br /><br />
        <input type="submit" value="Submit" />
        <input type="button" onclick="resetForm()" value="Reset">
    </form>
    <br /><br />
    <h1>Students:</h1><br />
    <p>Liel Yehoshua - 313452583</p>
    <p>Amit Doanias - 206092496</p>
    <script>
        function resetForm() {
            document.getElementById("frm1").reset();
        }
    </script>
</body>

</html>