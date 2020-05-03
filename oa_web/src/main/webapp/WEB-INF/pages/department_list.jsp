<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>

<jsp:include page="top.jsp"/>
<%@page import="cn.edu.njit.oa.global.Contant" %>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 部门列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <a class="fa fa-refresh btn btn-default light"></a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                            <tr class="">
                                <th class="text-center hidden-xs">Select</th>
                                <th class="hidden-xs">部门编号</th>
                                <th class="hidden-xs">部门名称</th>
                                <th class="hidden-xs">地址</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list}" var="depart">
                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>${depart.id}</td>
                                    <td>${depart.name}</td>
                                    <td>${depart.address}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${sessionScope.employee.post==Contant.POST_GM}">
                                                <a class="btn btn-primary active btn-sm" href="/department/toUpdate/${depart.id}">
                                                    <span class="glyphicon glyphicon-edit"></span> 编辑
                                                </a>
                                                <a class="btn btn-danger active btn-sm" href="/department/remove/${depart.id}">
                                                    <span class="glyphicon glyphicon-trash"></span> 删除
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="glyphicon glyphicon-exclamation-sign"></span> 无权限操作
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>