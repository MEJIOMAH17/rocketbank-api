package kotlin.io;

import java.io.BufferedInputStream;
import java.util.NoSuchElementException;
import kotlin.collections.ByteIterator;

/* compiled from: IOStreams.kt */
public final class ByteStreamsKt$iterator$1 extends ByteIterator {
    private boolean finished;
    private int nextByte = -1;
    private boolean nextPrepared;
    final /* synthetic */ BufferedInputStream receiver$0;

    ByteStreamsKt$iterator$1(BufferedInputStream bufferedInputStream) {
        this.receiver$0 = bufferedInputStream;
    }

    public final int getNextByte() {
        return this.nextByte;
    }

    public final void setNextByte(int i) {
        this.nextByte = i;
    }

    public final boolean getNextPrepared() {
        return this.nextPrepared;
    }

    public final void setNextPrepared(boolean z) {
        this.nextPrepared = z;
    }

    public final boolean getFinished() {
        return this.finished;
    }

    public final void setFinished(boolean z) {
        this.finished = z;
    }

    private final void prepareNext() {
        if (!this.nextPrepared && !this.finished) {
            this.nextByte = this.receiver$0.read();
            boolean z = true;
            this.nextPrepared = true;
            if (this.nextByte != -1) {
                z = false;
            }
            this.finished = z;
        }
    }

    public final boolean hasNext() {
        prepareNext();
        return !this.finished;
    }

    public final byte nextByte() {
        prepareNext();
        if (this.finished) {
            throw new NoSuchElementException("Input stream is over.");
        }
        byte b = (byte) this.nextByte;
        this.nextPrepared = false;
        return b;
    }
}
