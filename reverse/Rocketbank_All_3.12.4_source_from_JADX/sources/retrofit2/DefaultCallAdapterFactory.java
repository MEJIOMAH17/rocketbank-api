package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.CallAdapter.Factory;

final class DefaultCallAdapterFactory extends Factory {
    static final Factory INSTANCE = new DefaultCallAdapterFactory();

    DefaultCallAdapterFactory() {
    }

    public final CallAdapter<?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (Factory.getRawType(type) != Call.class) {
            return null;
        }
        type = Utils.getCallResponseType(type);
        return new CallAdapter<Call<?>>() {
            public <R> Call<R> adapt(Call<R> call) {
                return call;
            }

            public Type responseType() {
                return type;
            }
        };
    }
}
