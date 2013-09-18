<%@ page import="web.Schedule" %>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'start', 'error')} ">
	<label for="start">
		<g:message code="schedule.start.label" default="Start" />

	</label>
	<g:datePicker name="start" precision="day" value="${scheduleInstance?.start}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'duration', 'error')} ">
	<label for="duration">
		<g:message code="schedule.duration.label" default="Duration" />

	</label>
	<g:field type="number" name="duration" value="${scheduleInstance.duration}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'ficha', 'error')} ">
	<label for="ficha">
		<g:message code="schedule.ficha.label" default="Ficha" />

	</label>
	<g:textField name="ficha" value="${scheduleInstance?.ficha}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'minificha', 'error')} ">
	<label for="minificha">
		<g:message code="schedule.minificha.label" default="Minificha" />

	</label>
	<g:textField name="minificha" value="${scheduleInstance?.minificha}" />
</div>
<fieldset class="embedded"><legend><g:message code="schedule.prog.label" default="Prog" /></legend>
<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'prog.cod', 'error')} ">
	<label for="prog.cod">
		<g:message code="schedule.prog.cod.label" default="Cod" />

	</label>
	<g:textField name="prog.cod" value="${scheduleInstance?.prog?.cod}" />
</div>


<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'prog.name', 'error')} ">
	<label for="prog.name">
		<g:message code="schedule.prog.name.label" default="Name" />

	</label>
	<g:textField name="prog.name" value="${scheduleInstance?.prog?.name}" />
</div>

</fieldset>
<fieldset class="embedded"><legend><g:message code="schedule.chn.label" default="Chn" /></legend>
<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'chn.cod', 'error')} ">
	<label for="chn.cod">
		<g:message code="schedule.chn.cod.label" default="Cod" />

	</label>
	<g:textField name="chn.cod" value="${scheduleInstance?.chn?.cod}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'chn.name', 'error')} ">
	<label for="chn.name">
		<g:message code="schedule.chn.name.label" default="Name" />

	</label>
	<g:textField name="chn.name" value="${scheduleInstance?.chn?.name}" />
</div>

</fieldset>


