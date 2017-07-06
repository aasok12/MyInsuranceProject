<html>
<head>
<%@ page isELIgnored="false" %>
	<title>Add Vehicle Detail</title>
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
	${msg}
	<h1> Vehicle Detail Form</h1>
	<form action="AddVehicle" method="post">
	<input  value='${profile.id}' name="profileId">
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
  	
</div>

</body>
</html>
