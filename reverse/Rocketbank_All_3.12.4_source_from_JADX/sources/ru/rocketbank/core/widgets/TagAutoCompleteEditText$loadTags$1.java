package ru.rocketbank.core.widgets;

import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty1;
import ru.rocketbank.core.network.model.TagsResponse;

/* compiled from: TagAutoCompleteEditText.kt */
final class TagAutoCompleteEditText$loadTags$1 extends PropertyReference1 {
    public static final KProperty1 INSTANCE = new TagAutoCompleteEditText$loadTags$1();

    TagAutoCompleteEditText$loadTags$1() {
    }

    public final String getName() {
        return "tags";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(TagsResponse.class);
    }

    public final String getSignature() {
        return "getTags()Ljava/util/List;";
    }

    public final Object get(Object obj) {
        return ((TagsResponse) obj).getTags();
    }
}
