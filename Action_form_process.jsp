<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
   p {
      font-weight: bold;
   }

   button {
      display: inline-block;
      margin: 1%;
      font-size: 24px;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      outline: none;
      color: #fff;
      background-color: #4CAF50;
      border: none;
      border-radius: 15px;
      box-shadow: 0 9px #999;
   }

   button:hover {
      background-color: #3e8e41
   }

   button:active {
      background-color: #3e8e41;
      box-shadow: 0 5px #666;
      transform: translateY(4px);
   }

   img {
      width: 70%;
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
         <button onclick="projectFilesRowClicked()">Show The JSP files</button>
         <div id="projectFiles" style="display:none">
            <p>Pictures of the project files</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/Picture1.jpg">
         </div>
      </li>
      <li>
         <button onclick="githubRepoRowClicked()">Show The github repository</button>
         <div id="githubRepo" style="display:none">
            <p>Pictures Of the project repository on github</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/github_project.png">
         </div>
      </li>
      <li>
         <button onclick="tomcatURLRowClicked()">Show the app running on tomcat</button>
         <div id="tomcatURL" style="display:none">
            <p>Picture Of the Tomcat URL in the browser</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/AppOnTomcatURL.png">
         </div>
      </li>
      <li>
         <button onclick="SiteMonitoring">Show the SiteMonitoring results</button>
         <div id="SiteMonitoring" style="display:none">
            <p>Picture of the SiteMonitoring results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/SiteMonitoringCheck.png">
         </div>
      </li>
      <li>
         <button onclick="PingByJenkinsRowClicked()">Show the Ping monitor via jenkins process</button>
         <div id="PingByJenkins" style="display:none">
            <p>Picture of the Ping command via jenkins results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins1.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins2.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/PingByJenkins3.png">
            <button onclick="document.getElementById('PingByJenkins').style.display='none'">Close Ping-Monitor by
               Jenkins process</button>
         </div>
      </li>
      <li>
         <button onclick="seleniumTaskRowClicked()">Show Selenium Task Process
            images</button>
         <div id="seleniumTask" style="display:none">
            <p>Picture of the Selenium process results</p>
            <img src="https://storage.googleapis.com/liel-bucket/devops/SeleniumTasks.png">
            <img src="https://storage.googleapis.com/liel-bucket/devops/SeleniumResults.png">
         </div>
      </li>
      <li>
         <button onclick="loadTestTaskRowClicked()">Show Load Test Task Process
            images</button>
         <div id="loadTestTask" style="display:none">
            <a
               href="https://storage.googleapis.com/liel-bucket/devops/Results(run%20%236%20of%20Final_Project_Load_Test).pdf">
               PDF of the results
            </a>
            <p>Picture of the load test process results</p>
            <a href="https://storage.googleapis.com/liel-bucket/devops/LoadTestBeforeRunning.png">
               <img src="https://storage.googleapis.com/liel-bucket/devops/LoadTestBeforeRunning.png">
            </a>
            <a href="https://storage.googleapis.com/liel-bucket/devops/LoadTestResults.png">
               <img src="https://storage.googleapis.com/liel-bucket/devops/LoadTestResults.png">
            </a>
            <a href="https://storage.googleapis.com/liel-bucket/devops/LoadTestWhileTesting.png">
               <img src="https://storage.googleapis.com/liel-bucket/devops/LoadTestWhileTesting.png">
            </a>
         </div>
      </li>
      <li>
         <button onclick="jenkinsJobsRowClicked()">Show the Jenkins jobs</button>
         <div id="jenkinsJobs" style="display:none">
            <p>Jenkins Jobs</p>
            <a href="https://storage.googleapis.com/liel-bucket/devops/JenkinsJobs.png">
               <img src="https://storage.googleapis.com/liel-bucket/devops/JenkinsJobs.png">
            </a>
         </div>
      </li>
   </ul>
   </div>

   <script>
      var jenkinsJobsRowFlag = false;
      var loadTestTaskRowFlag = false;
      var seleniumTaskRowFlag = false;
      var PingByJenkinsRowFlag = false;
      var SiteMonitoringRowFlag = false;
      var tomcatURLRowFlag = false;
      var githubRepoRowFlag = false;
      var projectFilesRowFlag = false;


      function seleniumTaskRowClicked() {
         if (seleniumTaskRowFlag) {
            seleniumTaskRowFlag = false;
            HideRow('seleniumTask');
         } else {
            seleniumTaskRowFlag = true;
            displayRow('seleniumTask');
         }
      }

      function PingByJenkinsRowClicked() {
         if (PingByJenkinsRowFlag) {
            PingByJenkinsRowFlag = false;
            HideRow('PingByJenkins');
         } else {
            PingByJenkinsRowFlag = true;
            displayRow('PingByJenkins');
         }
      }

      function SiteMonitoringRowClicked() {
         if (SiteMonitoringRowFlag) {
            SiteMonitoringRowFlag = false;
            HideRow('SiteMonitoring');
         } else {
            SiteMonitoringRowFlag = true;
            displayRow('SiteMonitoring');
         }
      }

      function githubRepoRowClicked() {
         if (githubRepoRowFlag) {
            githubRepoRowFlag = false;
            HideRow('githubRepo');
         } else {
            githubRepoRowFlag = true;
            displayRow('githubRepo');
         }
      }

      function tomcatURLRowClicked() {
         if (tomcatURLRowFlag) {
            tomcatURLRowFlag = false;
            HideRow('tomcatURL');
         } else {
            tomcatURLRowFlag = true;
            displayRow('tomcatURL');
         }
      }

      function projectFilesRowClicked() {
         if (projectFilesRowFlag) {
            projectFilesRowFlag = false;
            HideRow('projectFiles');
         } else {
            projectFilesRowFlag = true;
            displayRow('projectFiles');
         }
      }

      function loadTestTaskRowClicked() {
         if (loadTestTaskRowFlag) {
            loadTestTaskRowFlag = false;
            HideRow('loadTestTask');
         } else {
            loadTestTaskRowFlag = true;
            displayRow('loadTestTask');
         }
      }

      function jenkinsJobsRowClicked() {
         if (jenkinsJobsRowFlag) {
            jenkinsJobsRowFlag = false;
            HideRow('jenkinsJobs');
         } else {
            jenkinsJobsRowFlag = true;
            displayRow('jenkinsJobs');
         }
      }

      function displayRow(objID) {
         document.getElementById(objID).style.display = 'block';
      }

      function HideRow(objID) {
         document.getElementById(objID).style.display = 'none';
      }
   </script>

</body>

</html>