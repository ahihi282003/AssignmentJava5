<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="bg-login">
    <div class="login-form">
        <form action="" method="POST" style="margin-top: 30px;">
            <h1>Danh Sach Hoa Don Chi Tiet</h1>
            <c:if test="${dsOrderDetail.size()==0}">
                <h3>Không có hoa don</h3>
            </c:if>
            <c:if test="${dsOrderDetail.size()!=0}">
                <table class="table table-bordered border-primary">
                    <thead  class="table-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Product</th>
                        <th scope="col">Hoa Don</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="od" items="${dsOrderDetail}">
                        <tr>
                            <td>${od.id}</td>
                            <td>${od.price}</td>
                            <td>${od.quantity}</td>
                            <td>${od.product.name}</td>
                            <td>${od.order.id}</td>
                            <td><a href="/admin/order/hien-thi" class="btn btn-primary">Back</a></td>
                        </tr>

                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </form>

    </div>
</div>