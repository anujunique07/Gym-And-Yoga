<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="/editTrainer" method="POST"> <!--  URL matches the servlet mapping -->
    <input type="hidden" name="id" value="${trainer.id}" />
    <input type="text" name="username" value="${trainer.username}" />
    <input type="text" name="email" value="${trainer.email}" />
    <input type="text" name="phone" value="${trainer.phone}" />
    <input type="text" name="experience" value="${trainer.experience}" />
    <input type="text" name="age" value="${trainer.age}" />
    <input type="text" name="certifiedTrainer" value="${trainer.certifiedTrainer}" />
    <button type="submit">Save Changes</button>
</form>

    