<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="/deleteTrainer" method="POST">
    <input type="hidden" name="id" value="${trainer.id}" />
    <button type="submit">Delete Trainer</button>
</form>
    