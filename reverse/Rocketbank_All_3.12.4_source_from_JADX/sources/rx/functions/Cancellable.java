package rx.functions;

import rx.annotations.Experimental;

@Experimental
public interface Cancellable {
    void cancel() throws Exception;
}
