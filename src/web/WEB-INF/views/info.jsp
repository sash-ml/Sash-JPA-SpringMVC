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
    <h3>Advertisements List</h3>

    <form class="form-inline" role="form" action="/search" method="post" accept-charset="utf-8">
        <input type="text" class="form-control" name="pattern" placeholder="Search">
        <input type="submit" class="btn btn-default" value="Search">
    </form>

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
                <td><img height="40" width="40" src="/image/${adv.photo.id}" /></td>
                <td>${adv.name}</td>
                <td>${adv.shortDesc}</td>
                <td>${adv.longDesc}</td>
                <td>${adv.phone}</td>
                <td>${adv.price}</td>
                <td>
                    <a href="/move_to_tray?id=${adv.id}">Move to tray</a>
                    <br>
                    <a href="/edit?id=${adv.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <table class="table table-striped">
        <tr>
            <td>
                <form action="/add_page" method="post">
                    <input type="submit" value="Add new">
                </form>
            </td>
            <td>
                <a href="/tray">View tray</a>
            <td>
                <form  enctype="multipart/form-data" class="form-horizontal" role="form" action="/import_xml" method="post">
                    <table>
                    <tr>
                        <td > <input type="file" name="xmlfile"></td>
                        <td width="150"> <input type="submit" value="Import XML"></td>
                    </tr>
                    </table>
                </form>
            </td>
        </tr>
    </table>

</div>
</body>
</html>