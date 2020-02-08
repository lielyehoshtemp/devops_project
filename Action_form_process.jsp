<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
   p {
      font-weight: bold;
   }
</style>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
</head>

<body>

   <h1>Form Processing</h1>

   <p><b>Welcome User:</b>
      <%= request.getParameter("username")%>
   </p>
   <p><b>Your Password is:</b>
      <%= request.getParameter("password")%>
   </p>
   <p><b>The Final Project tasks:</b></p>

   <ul>
      <li>
         <button onclick="document.getElementById('task1').style.display='block'">Show Task 1 screen images</button>
         <div id="task1" style="display:none">
            <p>Pictures Of the project files</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/Picture1.jpg">
            <button onclick="document.getElementById('task1').style.display='none'">Close Task 1 images</button>
         </div>
      </li>
      <li>
         <button onclick="document.getElementById('task2').style.display='block'">Show Task 2 screen images</button>
         <div id="task2" style="display:none">
            <p>Pictures Of the project repository on github</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/github_project.png">
            <button onclick="document.getElementById('task2').style.display='none'">Close Task 2 images</button>
         </div>
      </li>
      <li>
         <button onclick="document.getElementById('task3').style.display='block'">Show Task 3 images</button>
         <div id="task3" style="display:none">
            <p>Picture Of the Tomcat URL in the browser</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/AppOnTomcatURL.png">
            <button onclick="document.getElementById('task3').style.display='none'">Close Task 3 images</button>
         </div>
      </li>
      <li>
         <button onclick="document.getElementById('task4').style.display='block'">Show Task 4 images</button>
         <div id="task4" style="display:none">
            <p>Picture of the SiteMonitoring results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/SiteMonitoringCheck.png">
            <p>Picture of the Ping command via jenkins results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins1.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins2.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins3.png">
            <button onclick="document.getElementById('task4').style.display='none'">Close Task 4 images</button>
         </div>
      </li>
      <li>
         <button onclick="document.getElementById('task5').style.display='block'">Show Task 5 images</button>
         <div id="task5" style="display:none">
            <p>Picture of the Selenium process results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/SeleniumTasks.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/SeleniumResults.png">
            <button onclick="document.getElementById('task5').style.display='none'">Close Task 5 images</button>
         </div>
      </li>
   </ul>
   </div>

</body>

</html>