package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Filter;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.user.Authorization;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

/* compiled from: TagAutoCompleteEditText.kt */
public class TagAutoCompleteEditText extends AutoCompleteTextView {
    private HashMap _$_findViewCache;
    private Authorization authorization = BaseRocketApplication.getRocketComponent().getAuthorization();
    private RocketAPI rocketApi = BaseRocketApplication.getRocketComponent().getRocketApi();
    private List<String> tags = CollectionsKt__CollectionsKt.emptyList();

    /* compiled from: TagAutoCompleteEditText.kt */
    public final class TagAdapter extends ArrayAdapter<Object> {
        private List<String> items = CollectionsKt__CollectionsKt.emptyList();
        final /* synthetic */ TagAutoCompleteEditText this$0;
        private final Filter valueFilter = ((Filter) new TagAutoCompleteEditText$TagAdapter$valueFilter$1(this));

        public TagAdapter(TagAutoCompleteEditText tagAutoCompleteEditText, Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = tagAutoCompleteEditText;
            super(context, 17367043, new Object[null]);
        }

        public final Filter getFilter() {
            return this.valueFilter;
        }

        public final List<String> getItems() {
            return this.items;
        }

        public final void setItems(List<String> list) {
            Intrinsics.checkParameterIsNotNull(list, "<set-?>");
            this.items = list;
        }

        public final Object getItem(int i) {
            return this.items.isEmpty() ? "" : (String) this.items.get(i);
        }

        public final boolean isEnabled(int i) {
            return this.items.isEmpty() == 0;
        }

        public final int getCount() {
            return this.items.size();
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(17367043, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(view, "LayoutInflater.from(cont…st_item_1, parent, false)");
            }
            String str = (String) this.items.get(i);
            viewGroup = view.findViewById(16908308);
            if (viewGroup == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            ((TextView) viewGroup).setText(str);
            return view;
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final RocketAPI getRocketApi() {
        return this.rocketApi;
    }

    public final void setRocketApi(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "<set-?>");
        this.rocketApi = rocketAPI;
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final void onTagsLoaded(List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "tags");
        Iterable<String> iterable = list;
        Collection arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
        for (String valueOf : iterable) {
            arrayList.add("#".concat(String.valueOf(valueOf)));
        }
        this.tags = (List) arrayList;
    }

    public final void filterTags(String str) {
        if (str != null) {
            if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "#", false, 2, null)) {
                str = StringsKt__StringsKt.substringAfter$default(str, "#", null, 2, null);
                Collection arrayList = new ArrayList();
                for (Object next : this.tags) {
                    if (StringsKt__StringsKt.contains((CharSequence) (String) next, (CharSequence) str, true)) {
                        arrayList.add(next);
                    }
                }
                post((Runnable) new TagAutoCompleteEditText$filterTags$2(this, (List) arrayList));
                return;
            }
        }
        post((Runnable) new TagAutoCompleteEditText$filterTags$1(this));
        updateAdapter(CollectionsKt__CollectionsKt.emptyList());
    }

    public final void updateAdapter(List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "tags");
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.TagAutoCompleteEditText.TagAdapter");
        }
        ((TagAdapter) adapter).setItems(list);
        list = getAdapter();
        if (list == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.TagAutoCompleteEditText.TagAdapter");
        }
        ((TagAdapter) list).notifyDataSetChanged();
    }

    public TagAutoCompleteEditText(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public TagAutoCompleteEditText(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init(attributeSet, context);
    }

    public TagAutoCompleteEditText(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init(attributeSet, context);
    }

    @TargetApi(21)
    public TagAutoCompleteEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init(attributeSet, context);
    }

    private final void init(AttributeSet attributeSet, Context context) {
        setAdapter((ListAdapter) new TagAdapter(this, context));
        attributeSet = this.authorization.getUser();
        Action1 action1 = (Action1) new TagAutoCompleteEditText$init$1(this);
        Function1 function1 = TagAutoCompleteEditText$init$2.INSTANCE;
        if (function1 != null) {
            function1 = new TagAutoCompleteEditText$sam$rx_functions_Action1$0(function1);
        }
        attributeSet.subscribe(action1, (Action1) function1);
    }

    private final void loadTags() {
        Observable observeOn = this.rocketApi.tags().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        Function1 function1 = TagAutoCompleteEditText$loadTags$1.INSTANCE;
        if (function1 != null) {
            function1 = new TagAutoCompleteEditText$sam$rx_functions_Func1$0(function1);
        }
        observeOn = observeOn.map((Func1) function1);
        Action1 tagAutoCompleteEditText$loadTags$2 = new TagAutoCompleteEditText$loadTags$2(this);
        Function1 function12 = TagAutoCompleteEditText$loadTags$3.INSTANCE;
        if (function12 != null) {
            function12 = new TagAutoCompleteEditText$sam$rx_functions_Action1$0(function12);
        }
        observeOn.subscribe(tagAutoCompleteEditText$loadTags$2, (Action1) function12);
    }

    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (charSequence != null) {
            if (charSequence.length() != null) {
                charSequence = null;
                if (charSequence == null) {
                    if (isPerformingCompletion() != null) {
                        filterTags((String) currentWord$default(this, 0, 1, null).component1());
                    }
                }
            }
        }
        charSequence = 1;
        if (charSequence == null) {
            if (isPerformingCompletion() != null) {
                filterTags((String) currentWord$default(this, 0, 1, null).component1());
            }
        }
    }

    public static /* bridge */ /* synthetic */ Pair currentWord$default(TagAutoCompleteEditText tagAutoCompleteEditText, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: currentWord");
        }
        if ((i2 & 1) != 0) {
            i = tagAutoCompleteEditText.getSelectionStart();
        }
        return tagAutoCompleteEditText.currentWord(i);
    }

    public final Pair<String, Integer> currentWord(int i) {
        Editable text = getText();
        Intrinsics.checkExpressionValueIsNotNull(text, ProviderField.TEXT);
        int i2 = 0;
        for (String str : StringsKt__StringsKt.split$default((CharSequence) text, new String[]{" "}, false, 0, 6, null)) {
            int length = str.length() + i2;
            if (i2 <= i) {
                if (length >= i) {
                    return new Pair(str, Integer.valueOf(i2));
                }
            }
            i2 += str.length() + 1;
        }
        return new Pair(null, Integer.valueOf(0));
    }

    protected void replaceText(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, ProviderField.TEXT);
        int selectionStart = getSelectionStart();
        clearComposingText();
        setText(charSequence);
        charSequence = getText();
        Pair currentWord = currentWord(selectionStart);
        String str = (String) currentWord.component1();
        Selection.setSelection((Spannable) charSequence, (((Number) currentWord.component2()).intValue() + (str != null ? str.length() : 0)) + 1);
    }

    protected CharSequence convertSelectionToString(Object obj) {
        int i = 1;
        Pair currentWord$default = currentWord$default(this, 0, 1, null);
        String str = (String) currentWord$default.component1();
        int intValue = ((Number) currentWord$default.component2()).intValue();
        if (str != null) {
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "#", 0, false, 6, null);
            if (indexOf$default < 0) {
                indexOf$default = 0;
            }
            intValue += indexOf$default;
            int length = (str.length() - indexOf$default) + intValue;
            IntRange intRange = new IntRange(0, getText().length());
            int i2 = (intRange.getFirst() > intValue || intValue > intRange.getLast()) ? 0 : 1;
            if (i2 != 0) {
                if (intRange.getFirst() > length || length > intRange.getLast()) {
                    i = 0;
                }
                if (i != 0) {
                    String obj2 = getText().toString();
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(String.valueOf(obj));
                    stringBuilder.append(' ');
                    CharSequence stringBuilder2 = stringBuilder.toString();
                    if (obj2 != null) {
                        return StringsKt__StringsKt.replaceRange((CharSequence) obj2, intValue, length, stringBuilder2).toString();
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                }
            }
        }
        return getText().toString();
    }
}
