<html>
<head>
<%@ page isELIgnored="false" %>
	<title>Insurance Ltd</title>
	<link>
	<style>
	h1 {
    color: green;
    }
	#loginDiv {
		margin: auto;
    		width: 50%;
	}
	</style>
</head>
<body>

<div id="loginDiv">
	<h1>Register User</h1>
	<form action="register" method="post">
		<table>
			<tr>
				<td><label>FirstName : </label></td>
				<td><input type = "text" name = "fname"></td>
			</tr>
			<tr>
				<td><label>LastName : </label></td>
				<td><input type = "text" name = "lname"></td>
			</tr>
		
			<tr>
				<td><label>Gender : </label></td>
				<td>  <input type="radio" name="gender" value="m"> Male 
  					  <input type="radio" name="gender" value="f"> Female 
  					  <input type="radio" name="gender" value="o"> Other</td>
			</tr>
				<tr>
				<td><label>Age: </label></td>
				<td><input type = "text" name = "age"></td>
			</tr>
				<tr>
				<td><label>Phone : </label></td>
				<td><input type = "text" name = "phone"></td>
			</tr>
			<tr>
				<td><label>Address : </label></td>
				<td><input type = "text" name = "address"></td>
			</tr>
				<tr>
				<td><label>SSN : </label></td>
				<td><input type = "text" name = "ssn"></td>
			</tr>
				<tr>
				<td><label>Drivinglisence_no : </label></td>
				<td><input type = "text" name = "drivinglisenceno"></td>
			</tr>
			
		
			
			<tr>
				<td><input type="submit" value = "Register"></td>
				<td><button type="reset" value="Reset">Reset</button></td>
			</tr>
		</table>
	</form>
  	
</div>

</body>
</html>
