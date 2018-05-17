

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${list}" var="element">
                        <tr>
                            <td>
                                    ${element}
                            </td>
                            <td class="text-right">
                                <a href="http://localhost:8080/brisanjeO?imePriimek=${element}"><button class="btn btn-primary">Izbriši osebo</button></a>
                            </td>
                        </tr>
                    </c:forEach>
</body>
</html>