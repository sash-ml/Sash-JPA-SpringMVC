<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC JPA</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h3>Advertisements Tray List</h3>

    <form action="/process_checked" method="post">
    <table class="table table-striped">
        <thead>
        <tr>
            <td><b>Photo</b></td>
            <td><b>Name</b></td>
            <td><b>Short Desc</b></td>
            <td><b>Long Desc</b></td>
            <td><b>Phone</b></td>
            <td><b>Price</b></td>
            <td><b>Action</b></td>
        </tr>
        </thead>
        <c:forEach items="${advs}" var="adv">
            <tr>
                <td><input type=checkbox name="selectrow[]" value="${adv.id}"></td>
                <td><img height="40" width="40" src="/image/${adv.photo.id}" /></td>
                <td>${adv.name}</td>
                <td>${adv.shortDesc}</td>
                <td>${adv.longDesc}</td>
                <td>${adv.phone}</td>
                <td>${adv.price}</td>
                <td>
                    <a href="/delete?id=${adv.id}">Delete</a>
                    <br>
                    <a href="/restore?id=${adv.id}">Restore</a>
                </td>
            </tr>
        </c:forEach>
    </table>
        <input type="submit" name="submit" class="button2-credit" value="delete" title="Del checked"/>
        <input type="submit" name="submit" class="button2-credit" value="restore" title="Restore checked"/>
    </form>

    <a href="/home">Go home</a>
</div>
</body>
</html>