package kotlin.io;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: ReadWrite.kt */
public final class LinesSequence$iterator$1 implements Iterator<String>, KMappedMarker {
    private boolean done;
    private String nextValue;
    final /* synthetic */ LinesSequence this$0;

    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    LinesSequence$iterator$1(LinesSequence linesSequence) {
        this.this$0 = linesSequence;
    }

    public final boolean hasNext() {
        if (this.nextValue == null && !this.done) {
            this.nextValue = this.this$0.reader.readLine();
            if (this.nextValue == null) {
                this.done = true;
            }
        }
        if (this.nextValue != null) {
            return true;
        }
        return false;
    }

    public final String next() {
        if (hasNext()) {
            String str = this.nextValue;
            this.nextValue = null;
            if (str == null) {
                Intrinsics.throwNpe();
            }
            return str;
        }
        throw new NoSuchElementException();
    }
}
