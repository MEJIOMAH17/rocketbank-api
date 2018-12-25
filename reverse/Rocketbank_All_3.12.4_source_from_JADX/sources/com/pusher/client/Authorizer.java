package com.pusher.client;

public interface Authorizer {
    String authorize(String str, String str2) throws AuthorizationFailureException;
}
