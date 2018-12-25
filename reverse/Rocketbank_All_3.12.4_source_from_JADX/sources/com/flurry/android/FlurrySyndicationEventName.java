package com.flurry.android;

public enum FlurrySyndicationEventName {
    REBLOG("Reblog"),
    FAST_REBLOG("FastReblog"),
    SOURCE_LINK("SourceClick"),
    LIKE("Like");
    
    /* renamed from: a */
    private String f30a;

    private FlurrySyndicationEventName(String str) {
        this.f30a = str;
    }

    public final String toString() {
        return this.f30a;
    }
}
