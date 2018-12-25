package ru.rocketbank.core.widgets;

import java.util.List;
import ru.rocketbank.core.manager.AnalyticsManager;

/* compiled from: TagAutoCompleteEditText.kt */
final class TagAutoCompleteEditText$filterTags$2 implements Runnable {
    final /* synthetic */ List $tags;
    final /* synthetic */ TagAutoCompleteEditText this$0;

    TagAutoCompleteEditText$filterTags$2(TagAutoCompleteEditText tagAutoCompleteEditText, List list) {
        this.this$0 = tagAutoCompleteEditText;
        this.$tags = list;
    }

    public final void run() {
        try {
            this.this$0.updateAdapter(this.$tags);
            this.this$0.showDropDown();
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
    }
}
