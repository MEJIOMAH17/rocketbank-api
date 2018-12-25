package okhttp3;

import java.io.IOException;
import javax.annotation.Nullable;

public interface Interceptor {

    public interface Chain {
        int connectTimeoutMillis();

        @Nullable
        Connection connection();

        Response proceed(Request request) throws IOException;

        int readTimeoutMillis();

        Request request();

        int writeTimeoutMillis();
    }

    Response intercept(Chain chain) throws IOException;
}
