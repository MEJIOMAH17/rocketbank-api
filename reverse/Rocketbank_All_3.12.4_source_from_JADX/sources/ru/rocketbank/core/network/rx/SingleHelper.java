package ru.rocketbank.core.network.rx;

import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.Observable;
import rx.Single;

final class SingleHelper {
    SingleHelper() {
    }

    static CallAdapter<Single<?>> makeSingle(final CallAdapter<Observable<?>> callAdapter) {
        return new CallAdapter<Single<?>>() {
            public final Type responseType() {
                return callAdapter.responseType();
            }

            public final <R> Single<?> adapt(Call<R> call) {
                return ((Observable) callAdapter.adapt(call)).toSingle();
            }
        };
    }
}
