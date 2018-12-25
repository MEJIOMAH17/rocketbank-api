package ru.rocketbank.core.user;

import ru.rocketbank.core.realm.WidgetData;

/* compiled from: WidgetStorage.kt */
public interface WidgetStorage {
    void clear();

    WidgetData read();
}
