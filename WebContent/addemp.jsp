<jsp:include page="header.jsp"/>
<body>
<script>

function formValidate()
{

	var empName=document.getElementById("empName").value;
	if(empName.length<4 || empName.length>15)
		{
		
		document.getElementById("error-msg-name").innerHtml="Name should be of 4 - 15 characters..";
		return false;
		}
	return true;
}

</script>
<style>
body{
background-image: url("http://getwallpapers.com/wallpaper/full/b/c/5/444425.jpg");
background-size: cover;
}
</style>

  <h3 class="center-align"><font color="white"> Add Employee</h3></font>
	
  <div class="container" style="border:2px;padding:5%">
    <form class="col s12" action="Register" method="post" onsubmit="return formValidate()">
      <div class="row">
        <div class="input-field col s12">
          <input placeholder="Enter your name" name="empName" type="text" class="validate" id="empName">
          <label for="first_name">Name</label>
          <span>
        	<h4 id="error-msg-name"></h4>
          </span>
        </div>
       </div>
     
      <div class="row">
        <div class="input-field col s12">
          <input placeholder="DD/MM/YYYY" name="dob" type="text" class="validate">
          <label for="password">DOB</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input placeholder="Enter Basic Salary" name="basicSal" type="number" class="validate">
          <label for="email">Salary</label>
        </div>
      </div>
      <input class="waves-effect waves-light btn" type="submit"></input>
    </form>
  </div>
</body>
<jsp:include page="footer.jsp"/>