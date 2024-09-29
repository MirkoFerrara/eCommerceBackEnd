package com.betacom.eCommerce.classes.response;

import org.apache.catalina.connector.Response;

public class ResponseObject<T> extends ResponseBase {
    private T dati;

    public T getDati() {
        return dati;
    }

    public void setDati(T dati) {
        this.dati = dati;
        Response d ;
    }
}