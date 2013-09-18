
<%@ page import="web.Program" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'program.label', default: 'Program')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-program" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-program" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

						<g:sortableColumn property="name" title="${message(code: 'program.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'program.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="episode" title="${message(code: 'program.episode.label', default: 'Episode')}" />
					
						<g:sortableColumn property="web" title="${message(code: 'program.web.label', default: 'Web')}" />

						<g:sortableColumn property="imdbSelected" title="${message(code: 'program.imdbSelected.label', default: 'Imdb Selected')}" />
					
						<g:sortableColumn property="wikipediaSelected" title="${message(code: 'program.wikipediaSelected.label', default: 'Wikipedia Selected')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${programInstanceList}" status="i" var="programInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${programInstance.id}">${fieldValue(bean: programInstance, field: "name")}</g:link></td>

						<td>${fieldValue(bean: programInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: programInstance, field: "episode")}</td>

						<td>${fieldValue(bean: programInstance, field: "web")}</td>
					
						<td>${fieldValue(bean: programInstance, field: "imdbSelected")}</td>
					
						<td>${fieldValue(bean: programInstance, field: "wikipediaSelected")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${programInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
