package ru.rocketbank.core.model.migration;

import ru.rocketbank.core.events.EventHelper.IEvent;

public class UpdateTitleEvent implements IEvent {
    private String title;

    public UpdateTitleEvent(String str) {
        this.title = str;
    }

    public String getTitle() {
        return this.title;
    }
}
