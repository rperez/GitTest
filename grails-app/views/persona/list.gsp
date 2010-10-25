
<%@ page import="git.test.Persona" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>

            <div class="list">
            <table>
                <thead>
                    <tr>
                        <!-- nombre de la columna-->
                        <!--g:sortableColumn property="id" title="${message(code: 'persona.id.label', default: 'Id')}" /-->
                        <g:sortableColumn property="fechaDeNacimiento" title="${message(code: 'persona.fechaDeNacimiento.label', default: 'Fecha De Nacimiento')}" />
                        <g:sortableColumn property="nombre" title="${message(code: 'persona.nombre.label', default: 'Nombre')}" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                    <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        <!-- valores para el id y la liga-->
                        <!--td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "id")}</g:link></td-->
                        <td><g:formatDate date="${personaInstance.fechaDeNacimiento}" /></td>
                        <!-- se mueve la liga al nombre-->
                        <td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "nombre")}</g:link></td>

                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

            <div class="paginateButtons">
                <g:paginate total="${personaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
