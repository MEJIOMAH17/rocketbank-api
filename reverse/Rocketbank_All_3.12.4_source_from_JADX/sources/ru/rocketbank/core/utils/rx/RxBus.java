package ru.rocketbank.core.utils.rx;

import rx.Observable;
import rx.subjects.PublishSubject;
import rx.subjects.SerializedSubject;

/* compiled from: RxBus.kt */
public final class RxBus<Type> {
    private final SerializedSubject<Type, Type> bus = new SerializedSubject(PublishSubject.create());

    public final void send(Type type) {
        this.bus.onNext(type);
    }

    public final Observable<Type> toObserverable() {
        return this.bus;
    }

    public final boolean hasObservers() {
        return this.bus.hasObservers();
    }
}
