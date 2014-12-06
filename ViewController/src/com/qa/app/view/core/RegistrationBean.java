package com.qa.app.view.core;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;

public class RegistrationBean {
    public RegistrationBean() {
    }

    public void doRegisterUer(ActionEvent actionEvent) {
        //#{bindings.Commit.execute}
        BindingContext.getCurrent().getCurrentBindingsEntry().getOperationBinding("Commit");
        FacesContext ctx = FacesContext.getCurrentInstance();
        ctx.addMessage("",new FacesMessage("Done"));
        
        
    }
}
