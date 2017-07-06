<html>
<head>
<%@ page isELIgnored="false"%>
<title>Registration Confirmation</title>
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
		<h1>Registration Confirmation</h1>

		<table>
			<tr>
				<td><label>Id : </label></td>
				<td>${profile.id}</td>
			</tr>
		
			<tr>
				<td><label>FirstName : </label></td>
				<td>${profile.fname}</td>
			</tr>
			<tr>
				<td><label>LastName : </label></td>
				<td>${profile.lname}</td>
			</tr>
			<tr>
				<td><label>Gender : </label></td>
				<td>${profile.gender}</td>
			</tr>
			<tr>
				<td><label>Age : </label></td>
				<td>${profile.age}</td>
			</tr>
			<tr>
				<td><label>Phone : </label></td>
				<td>${profile.phone}</td>
			</tr>
			<tr>
				<td><label>Address: </label></td>
				<td>${profile.address}</td>
			</tr>
			<tr>
				<td><label>SSN : </label></td>
				<td>${profile.ssn}</td>
			</tr>
			<tr>
				<td><label>DrivingLisenceNo : </label></td>
				<td>${profile.drivinglisenceno}</td>
			</tr>
			
			
			</table>
	</div>
	
		<form action="AddVehicle" method="post">
	<input type="text" value='${profile.id}' name="profileId">
		<table>
			<tr>
				<td><label> Make</label></td>
				<td><input type = "text" name = "make"></td>
			</tr>
			<tr>
				<td><label>Model</label></td>
				<td><input type = "text" name = "model"></td>
			</tr>
			<tr>
				<td><label>Year</label></td>
				<td><input type = "text" name = "year"></td>
			</tr>
			<tr>
				<td><label>VIN NO:</label></td>
				<td><input type = "text" name = "vinnumber"></td>
			</tr>
				<tr>
				<td><label>LisencePlateNo:</label></td>
				<td><input type = "text" name = "lisenceplatenumber"></td>
			</tr>
			<tr>
				<td><input type="submit" value = "Add"></td>
				<td><input type = "button" value = "Cancel"></td>
			</tr>
			
		</table>
		
	</form>
  	

</body>
</html>
