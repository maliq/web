<%@ page import="web.Program" %>


<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="program.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${programInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="program.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${programInstance?.description}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'web', 'error')} ">
	<label for="web">
		<g:message code="program.web.label" default="Web" />
		
	</label>
	<g:textField name="web" value="${programInstance?.web}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'year', 'error')} ">
	<label for="year">
		<g:message code="program.year.label" default="Year" />
		
	</label>
	<g:textField name="year" value="${programInstance?.year}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'episode', 'error')} ">
	<label for="episode">
		<g:message code="program.episode.label" default="Episode" />
		
	</label>
	<g:textField name="episode" value="${programInstance?.episode}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'imdbSelected', 'error')} ">
	<label for="imdbResults">
		<g:message code="program.imdbResults.label" default="Imdb Results" />
		
	</label>
	<g:select name="imdbSelected"
          from="${programInstance?.imdbResults}"
          value="${title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'wikipediaSelected', 'error')} ">
	<label for="wikipediaSelected">
		<g:message code="program.wikipediaSelected.label" default="Wikipedia Selected" />
		
	</label>

	<g:select name="wikipediaSelected"
          from="${programInstance?.wikipediaResults}"
          value="${title}" />
</div>



