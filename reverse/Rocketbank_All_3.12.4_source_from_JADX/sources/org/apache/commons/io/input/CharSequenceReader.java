package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;

public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public boolean markSupported() {
        return true;
    }

    public CharSequenceReader(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        this.charSequence = charSequence;
    }

    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    public void mark(int i) {
        this.mark = this.idx;
    }

    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }

    public int read(char[] cArr, int i, int i2) {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        if (cArr == null) {
            throw new NullPointerException("Character array is missing");
        }
        if (i2 >= 0 && i >= 0) {
            if (i + i2 <= cArr.length) {
                int i3 = 0;
                int i4 = 0;
                while (i3 < i2) {
                    int read = read();
                    if (read == -1) {
                        return i4;
                    }
                    cArr[i + i3] = (char) read;
                    i4++;
                    i3++;
                }
                return i4;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("Array Size=");
        stringBuilder.append(cArr.length);
        stringBuilder.append(", offset=");
        stringBuilder.append(i);
        stringBuilder.append(", length=");
        stringBuilder.append(i2);
        throw new IndexOutOfBoundsException(stringBuilder.toString());
    }

    public void reset() {
        this.idx = this.mark;
    }

    public long skip(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Number of characters to skip is less than zero: ".concat(String.valueOf(j)));
        } else if (this.idx >= this.charSequence.length()) {
            return -1;
        } else {
            j = (int) Math.min((long) this.charSequence.length(), ((long) this.idx) + j);
            int i = j - this.idx;
            this.idx = j;
            return (long) i;
        }
    }

    public String toString() {
        return this.charSequence.toString();
    }
}
