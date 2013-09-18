
<%@ page import="web.Schedule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schedule.label', default: 'Schedule')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-schedule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-schedule" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="schedule.chn.label" default="Chn" /></th>
					
						<g:sortableColumn property="duration" title="${message(code: 'schedule.duration.label', default: 'Duration')}" />
					
						<g:sortableColumn property="ficha" title="${message(code: 'schedule.ficha.label', default: 'Ficha')}" />
					
						<g:sortableColumn property="minificha" title="${message(code: 'schedule.minificha.label', default: 'Minificha')}" />
					
						<th><g:message code="schedule.prog.label" default="Prog" /></th>
					
						<g:sortableColumn property="start" title="${message(code: 'schedule.start.label', default: 'Start')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${scheduleInstanceList}" status="i" var="scheduleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${scheduleInstance.id}"><g:formatDate date="${scheduleInstance.start}" /></g:link></td>
					
						<td>${fieldValue(bean: scheduleInstance, field: "duration")}</td>
					
						<td>${fieldValue(bean: scheduleInstance, field: "ficha")}</td>
					
						<td>${fieldValue(bean: scheduleInstance, field: "minificha")}</td>
					
						<td>${fieldValue(bean: scheduleInstance, field: "prog")}</td>

						<td>${fieldValue(bean: scheduleInstance, field: "chn")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${scheduleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
