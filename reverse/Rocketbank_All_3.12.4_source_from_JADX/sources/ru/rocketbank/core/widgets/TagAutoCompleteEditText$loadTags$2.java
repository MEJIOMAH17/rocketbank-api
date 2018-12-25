package ru.rocketbank.core.widgets;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: TagAutoCompleteEditText.kt */
final class TagAutoCompleteEditText$loadTags$2<T> implements Action1<List<? extends String>> {
    final /* synthetic */ TagAutoCompleteEditText this$0;

    TagAutoCompleteEditText$loadTags$2(TagAutoCompleteEditText tagAutoCompleteEditText) {
        this.this$0 = tagAutoCompleteEditText;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        List list = (List) obj;
        TagAutoCompleteEditText tagAutoCompleteEditText = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(list, "tags");
        tagAutoCompleteEditText.onTagsLoaded(list);
    }
}
