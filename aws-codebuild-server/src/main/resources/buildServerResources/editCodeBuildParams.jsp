<%--
  ~ Copyright 2000-2016 JetBrains s.r.o.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>

<%@include file="paramsConstants.jspf"%>
<jsp:include page="editAWSCommonParams.jsp"/>

<l:settingsGroup title="AWS CodeBuild settings">
    <tr>
        <th><label for="${project_name_param}">${project_name_label}: <l:star/></label></th>
        <td><props:textProperty name="${project_name_param}" className="longField" maxlength="256"/>
            <span class="error" id="error_${project_name_param}"></span>
        </td>
    </tr>
    <tr>
        <th><label for="${source_version_param}">${source_version_label}:</label></th>
        <td><props:textProperty name="${source_version_param}" className="longField" maxlength="256"/>
            <span class="smallNote">To build a specific version, type the related version ID (if the source code is in Amazon S3) or commit ID.</span>
            <span class="smallNote">Leave blank to build the latest version.</span>
            <span class="error" id="error_${source_version_param}"></span>
        </td>
    </tr>
    <tr class="advancedSetting">
        <th><label for="${timeout_minutes_param}">${timeout_minutes_label}:</label></th>
        <td><props:textProperty name="${timeout_minutes_param}" className="longField" maxlength="256"/>
            <span class="smallNote">This build timeout must be 5 to 480 minutes. Leave blank to use the default value (60 minutes).</span>
            <span class="error" id="error_${timeout_minutes_param}"></span>
        </td>
    </tr>
    <tr class="advancedSetting">
        <th><label for="${wait_param}">${wait_label}:</label></th>
        <td><props:selectProperty name="${wait_param}" className="longField" enableFilter="true">
            <props:option value="${wait_none}">${wait_none_label}</props:option>
            <props:option value="${wait_build}">${wait_build_label}</props:option>
            <props:option value="${wait_step}">${wait_step_label}</props:option>
        </props:selectProperty></td>
    </tr>
</l:settingsGroup>