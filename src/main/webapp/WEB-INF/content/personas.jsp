<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Formulario Personas</title>


    </head>
    <body>

        <h1>Formulario Personas (TAGS)</h1>
        <s:form>
            <s:textfield label="Nombre" name="persona.nombre"/>
            <s:textfield label="Calle" name="persona.domicilio.calle"/>
            <s:textfield label="No.Calle" name="persona.domicilio.numeroCalle"/>
            <s:textfield label="Pais" name="persona.domicilio.pais"/>
            <s:submit value="Enviar"/>
        </s:form>



        <h2> Valores proporcionados</h2>
        <s:iterator value="personas" var="persona" status="estado">

            nombre: <s:property value="nombre"/> <br/>
            calle: <s:property value="domicilio.calle"/> <br/>
            No.Calle: <s:property value="domicilio.numeroCalle"/> <br/>
            Pais: <s:property value="domicilio.pais"/> <br/>
           
            
             <s:if test="persona.nombre != null">

            <s:if test="persona.nombre == 'admin'">
                El usuario es administrador

                <s:else>

                    El usuario no es administrador

                </s:else>   
            </s:if>

        </s:if>
      
              </s:iterator>
       
    </body>
</html>
