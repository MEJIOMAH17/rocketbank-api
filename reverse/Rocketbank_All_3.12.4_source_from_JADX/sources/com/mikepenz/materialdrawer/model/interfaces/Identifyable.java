package com.mikepenz.materialdrawer.model.interfaces;

public interface Identifyable<T> {
    int getIdentifier();

    T withIdentifier(int i);
}
