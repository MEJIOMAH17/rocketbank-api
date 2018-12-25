package ru.rocketbank.core.widgets;

/* compiled from: TagAutoCompleteEditText.kt */
final class TagAutoCompleteEditText$filterTags$1 implements Runnable {
    final /* synthetic */ TagAutoCompleteEditText this$0;

    TagAutoCompleteEditText$filterTags$1(TagAutoCompleteEditText tagAutoCompleteEditText) {
        this.this$0 = tagAutoCompleteEditText;
    }

    public final void run() {
        this.this$0.dismissDropDown();
    }
}
