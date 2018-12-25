package com.pusher.client;

public class AuthorizationFailureException extends RuntimeException {
    private static final long serialVersionUID = -7208133561904200801L;

    public AuthorizationFailureException(String str) {
        super(str);
    }

    public AuthorizationFailureException(Exception exception) {
        super(exception);
    }

    public AuthorizationFailureException(String str, Exception exception) {
        super(str, exception);
    }
}
