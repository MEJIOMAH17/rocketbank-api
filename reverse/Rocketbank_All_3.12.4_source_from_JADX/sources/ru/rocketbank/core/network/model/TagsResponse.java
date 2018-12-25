package ru.rocketbank.core.network.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TagsResponse.kt */
public final class TagsResponse {
    private final List<String> tags;

    public static /* bridge */ /* synthetic */ TagsResponse copy$default(TagsResponse tagsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tagsResponse.tags;
        }
        return tagsResponse.copy(list);
    }

    public final List<String> component1() {
        return this.tags;
    }

    public final TagsResponse copy(List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "tags");
        return new TagsResponse(list);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TagsResponse) {
                if (Intrinsics.areEqual(this.tags, ((TagsResponse) obj).tags)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        List list = this.tags;
        return list != null ? list.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TagsResponse(tags=");
        stringBuilder.append(this.tags);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TagsResponse(List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "tags");
        this.tags = list;
    }

    public final List<String> getTags() {
        return this.tags;
    }
}
