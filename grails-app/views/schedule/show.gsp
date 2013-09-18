
<%@ page import="web.Schedule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schedule.label', default: 'Schedule')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-schedule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-schedule" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list schedule">
			
				<g:if test="${scheduleInstance?.chn}">
				<li class="fieldcontain">
					<span id="chn-label" class="property-label"><g:message code="schedule.chn.label" default="Chn" /></span>
					
						<span class="property-value" aria-labelledby="chn-label"><g:fieldValue bean="${scheduleInstance}" field="chn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scheduleInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="schedule.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${scheduleInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scheduleInstance?.ficha}">
				<li class="fieldcontain">
					<span id="ficha-label" class="property-label"><g:message code="schedule.ficha.label" default="Ficha" /></span>
					
						<span class="property-value" aria-labelledby="ficha-label"><g:fieldValue bean="${scheduleInstance}" field="ficha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scheduleInstance?.minificha}">
				<li class="fieldcontain">
					<span id="minificha-label" class="property-label"><g:message code="schedule.minificha.label" default="Minificha" /></span>
					
						<span class="property-value" aria-labelledby="minificha-label"><g:fieldValue bean="${scheduleInstance}" field="minificha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scheduleInstance?.prog}">
				<li class="fieldcontain">
					<span id="prog-label" class="property-label"><g:message code="schedule.prog.label" default="Prog" /></span>
					
						<span class="property-value" aria-labelledby="prog-label"><g:fieldValue bean="${scheduleInstance}" field="prog"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${scheduleInstance?.start}">
				<li class="fieldcontain">
					<span id="start-label" class="property-label"><g:message code="schedule.start.label" default="Start" /></span>
					
						<span class="property-value" aria-labelledby="start-label"><g:formatDate date="${scheduleInstance?.start}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${scheduleInstance?.id}" />
					<g:link class="edit" action="edit" id="${scheduleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
