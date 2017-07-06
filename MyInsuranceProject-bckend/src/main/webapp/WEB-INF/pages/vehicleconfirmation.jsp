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
		<h1>UserInformation with Vehicle</h1>

		<table>
			<tr>
				<td><label>User Personal Information </label></td>
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
			
			
			<table>
				<tr>
					<td><label>Make: </label></td>
					<td>${vprofile.make}</td>
				</tr>
				<tr>
					<td><label>Model: </label></td>
					<td>${vprofile.model}</td>
				</tr>
				<tr>
					<td><label>Year: </label></td>
					<td>${vprofile.year}</td>
				</tr>
				<tr>
					<td><label>Vin No: </label></td>
					<td>${vprofile.vinnumber}</td>
				</tr>
				<tr>
					<td><label>LisencePlateNo: </label></td>
					<td>${vprofile.lisenceplatenumber}</td>
				</tr>
				
			
			</table>
			<tr>
					<a href="AddVehicleDetail">Add another Vehicle</a>
			</tr>
	</div>
	

</body>
</html>
