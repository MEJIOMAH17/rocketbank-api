package com.jakewharton.rxbinding.widget;

import android.content.Context;
import android.widget.TextView;
import com.jakewharton.rxbinding.internal.Functions;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.pay.samsung.RxSPay;
import rx.Observable;
import rx.functions.Func1;

public final class RxTextView implements Provider<RxSPay> {
    private final Provider<Context> contextProvider;
    private final AndroidModule module;

    public static Observable<Integer> editorActions(TextView textView) {
        String str = "view == null";
        if (textView == null) {
            throw new NullPointerException(str);
        }
        Func1 func1 = Functions.FUNC1_ALWAYS_TRUE;
        String str2 = "view == null";
        if (textView == null) {
            throw new NullPointerException(str2);
        }
        str2 = "handled == null";
        if (func1 != null) {
            return Observable.create(new TextViewEditorActionOnSubscribe(textView, func1));
        }
        throw new NullPointerException(str2);
    }

    public static Observable<CharSequence> textChanges(TextView textView) {
        String str = "view == null";
        if (textView != null) {
            return Observable.create(new TextViewTextOnSubscribe(textView));
        }
        throw new NullPointerException(str);
    }

    public static Observable<TextViewTextChangeEvent> textChangeEvents(TextView textView) {
        String str = "view == null";
        if (textView != null) {
            return Observable.create(new TextViewTextChangeEventOnSubscribe(textView));
        }
        throw new NullPointerException(str);
    }

    public static Observable<TextViewAfterTextChangeEvent> afterTextChangeEvents(TextView textView) {
        String str = "view == null";
        if (textView != null) {
            return Observable.create(new TextViewAfterTextChangeEventOnSubscribe(textView));
        }
        throw new NullPointerException(str);
    }

    public RxTextView(AndroidModule androidModule, Provider<Context> provider) {
        this.module = androidModule;
        this.contextProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return AndroidModule.provideSPay((Context) this.contextProvider.get());
    }
}
