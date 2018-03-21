<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="border: 1px solid black; border-radius: 10px">
	Dane zalogowanego użytkownika: ${sessionScope.userProfile.name} ${sessionScope.userProfile.surename}
</div>