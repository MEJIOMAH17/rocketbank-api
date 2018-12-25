package kotlin.text;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: _Strings.kt */
public final class StringsKt___StringsKt$groupingBy$1 implements OnLoadCompleteListener<Character, K> {
    final /* synthetic */ Function1 $keySelector;
    final /* synthetic */ CharSequence receiver$0;

    public StringsKt___StringsKt$groupingBy$1(CharSequence charSequence, Function1 function1) {
        this.receiver$0 = charSequence;
        this.$keySelector = function1;
    }

    public final Iterator<Character> sourceIterator() {
        return StringsKt__StringsKt.iterator(this.receiver$0);
    }

    public final K keyOf(char c) {
        return this.$keySelector.invoke(Character.valueOf(c));
    }
}
