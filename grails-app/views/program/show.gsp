
<%@ page import="web.Program" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'program.label', default: 'Program')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-program" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-program" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list program">
			
				<g:if test="${programInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="program.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${programInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.episode}">
				<li class="fieldcontain">
					<span id="episode-label" class="property-label"><g:message code="program.episode.label" default="Episode" /></span>
					
						<span class="property-value" aria-labelledby="episode-label"><g:fieldValue bean="${programInstance}" field="episode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.imdbResults}">
				<li class="fieldcontain">
					<span id="imdbResults-label" class="property-label"><g:message code="program.imdbResults.label" default="Imdb Results" /></span>
					
						<g:each in="${programInstance.imdbResults}" var="i">
						<span class="property-value" aria-labelledby="imdbResults-label"><g:link controller="null" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.imdbSelected}">
				<li class="fieldcontain">
					<span id="imdbSelected-label" class="property-label"><g:message code="program.imdbSelected.label" default="Imdb Selected" /></span>
					
						<span class="property-value" aria-labelledby="imdbSelected-label"><g:fieldValue bean="${programInstance}" field="imdbSelected"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="program.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${programInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.web}">
				<li class="fieldcontain">
					<span id="web-label" class="property-label"><g:message code="program.web.label" default="Web" /></span>
					
						<span class="property-value" aria-labelledby="web-label"><g:fieldValue bean="${programInstance}" field="web"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.wikipediaResults}">
				<li class="fieldcontain">
					<span id="wikipediaResults-label" class="property-label"><g:message code="program.wikipediaResults.label" default="Wikipedia Results" /></span>
					
						<g:each in="${programInstance.wikipediaResults}" var="w">
						<span class="property-value" aria-labelledby="wikipediaResults-label"><g:link controller="null" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.wikipediaSelected}">
				<li class="fieldcontain">
					<span id="wikipediaSelected-label" class="property-label"><g:message code="program.wikipediaSelected.label" default="Wikipedia Selected" /></span>
					
						<span class="property-value" aria-labelledby="wikipediaSelected-label"><g:fieldValue bean="${programInstance}" field="wikipediaSelected"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="program.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${programInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${programInstance?.id}" />
					<g:link class="edit" action="edit" id="${programInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
