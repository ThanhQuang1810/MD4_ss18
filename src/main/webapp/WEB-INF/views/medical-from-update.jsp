<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Medical Form</title>
</head>
<body>
<h1>Medical Form</h1>
<form:form action="/medical/medical-update?id=${medical.id}" method="post" modelAttribute="medical">
    <form:label path="fullName">Full Name:</form:label>
    <form:input path="fullName"/><br/>

    <form:label path="dateOfBirth">Date of Birth:</form:label>
    <form:input path="dateOfBirth" type="date"/><br/>

    <form:label path="gender">Gender:</form:label>
    <form:input path="gender"/><br/>

    <form:label path="address">Address:</form:label>
    <form:input path="address"/><br/>

    <form:label path="phoneNumber">Phone Number:</form:label>
    <form:input path="phoneNumber"/><br/>

    <form:label path="healthIssues">Health Issues:</form:label>
    <form:textarea path="healthIssues"/><br/>

    <button type="submit">Submit</button>
</form:form>

</body>
</html>
