package com.qa.app.view.userdetail.core;

import javax.faces.event.ValueChangeEvent;

public class UserRegistration {
    private String confirmPassword;

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public UserRegistration() {
        super();
    }

    public void onConfirmPassword(ValueChangeEvent valueChangeEvent) {
    }

    public String onSubmit() {
        // Add event code here...
        return null;
    }
}
