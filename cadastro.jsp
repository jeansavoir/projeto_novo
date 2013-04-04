<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://richfaces.org/a4j" prefix="a4j" %>
<%@ taglib uri="http://richfaces.org/rich" prefix="rich" %>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>

<f:view>
  <rich:panel header="Cadastro de Pessoa">
     <h:form id="formulario1" enctype="multipart/form-data">
      <h:panelGrid columns="2">
      
        <h:outputText value="Imagem" />
        <t:inputFileUpload id="fileupload" 
        value="#{ManagerBean.imagem}"></t:inputFileUpload>
  
         
        <h:outputText value="Nome" />
        <h:inputText value="#{ManagerBean.pessoa.nome}" ></h:inputText>
        
		<h:outputText value="Email" />
        <h:inputText value="#{ManagerBean.pessoa.email}" ></h:inputText>
		
		<h:outputText value="Data" />
        <rich:calendar value="#{ManagerBean.pessoa.data}" >
		<f:datePattern pattern="dd/MM/yyyy"/> 
		</rich:calendar>
		
		<h:commandButton value="Enviar" action="#{ManagerBean.upload}">
        </h:commandButton>
      </h:panelGrid>
     </h:form>
     <h:messages></h:messages>
  </rich:panel>
</f:view>