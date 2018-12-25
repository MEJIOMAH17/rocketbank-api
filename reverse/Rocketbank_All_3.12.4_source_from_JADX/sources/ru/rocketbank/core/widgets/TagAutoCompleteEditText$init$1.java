package ru.rocketbank.core.widgets;

import ru.rocketbank.core.model.UserModel;
import rx.functions.Action1;

/* compiled from: TagAutoCompleteEditText.kt */
final class TagAutoCompleteEditText$init$1<T> implements Action1<UserModel> {
    final /* synthetic */ TagAutoCompleteEditText this$0;

    TagAutoCompleteEditText$init$1(TagAutoCompleteEditText tagAutoCompleteEditText) {
        this.this$0 = tagAutoCompleteEditText;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        this.this$0.loadTags();
    }
}
