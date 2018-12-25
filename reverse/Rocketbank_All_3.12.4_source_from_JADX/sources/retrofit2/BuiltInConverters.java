package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter.Factory;
import retrofit2.http.Streaming;

final class BuiltInConverters extends Factory {

    static final class BufferingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final BufferingResponseBodyConverter INSTANCE = new BufferingResponseBodyConverter();

        BufferingResponseBodyConverter() {
        }

        public final ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                ResponseBody buffer = Utils.buffer(responseBody);
                return buffer;
            } finally {
                responseBody.close();
            }
        }
    }

    static final class RequestBodyConverter implements Converter<RequestBody, RequestBody> {
        static final RequestBodyConverter INSTANCE = new RequestBodyConverter();

        public final RequestBody convert(RequestBody requestBody) throws IOException {
            return requestBody;
        }

        RequestBodyConverter() {
        }
    }

    static final class StreamingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final StreamingResponseBodyConverter INSTANCE = new StreamingResponseBodyConverter();

        public final ResponseBody convert(ResponseBody responseBody) throws IOException {
            return responseBody;
        }

        StreamingResponseBodyConverter() {
        }
    }

    static final class StringConverter implements Converter<String, String> {
        static final StringConverter INSTANCE = new StringConverter();

        public final String convert(String str) throws IOException {
            return str;
        }

        StringConverter() {
        }
    }

    static final class ToStringConverter implements Converter<Object, String> {
        static final ToStringConverter INSTANCE = new ToStringConverter();

        ToStringConverter() {
        }

        public final String convert(Object obj) {
            return obj.toString();
        }
    }

    static final class VoidResponseBodyConverter implements Converter<ResponseBody, Void> {
        static final VoidResponseBodyConverter INSTANCE = new VoidResponseBodyConverter();

        VoidResponseBodyConverter() {
        }

        public final Void convert(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    BuiltInConverters() {
    }

    public final Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type != ResponseBody.class) {
            return type == Void.class ? VoidResponseBodyConverter.INSTANCE : null;
        } else {
            if (Utils.isAnnotationPresent(annotationArr, Streaming.class) != null) {
                return StreamingResponseBodyConverter.INSTANCE;
            }
            return BufferingResponseBodyConverter.INSTANCE;
        }
    }

    public final Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return RequestBody.class.isAssignableFrom(Utils.getRawType(type)) != null ? RequestBodyConverter.INSTANCE : null;
    }

    public final Converter<?, String> stringConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return type == String.class ? StringConverter.INSTANCE : null;
    }
}
