package com.google.gson.stream;

import com.facebook.internal.ServerProtocol;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import kotlin.text.Typography;
import org.apache.commons.io.ByteOrderMark;

public class JsonReader implements Closeable {
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private final char[] buffer = new char[1024];
    private final Reader in;
    private boolean lenient = false;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    private int[] pathIndices;
    private String[] pathNames;
    int peeked = 0;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int pos = 0;
    private int[] stack = new int[32];
    private int stackSize = 0;

    /* renamed from: com.google.gson.stream.JsonReader$1 */
    static class C12591 extends JsonReaderInternalAccess {
        C12591() {
        }

        public final void promoteNameToValue(JsonReader jsonReader) throws IOException {
            if (jsonReader instanceof JsonTreeReader) {
                ((JsonTreeReader) jsonReader).promoteNameToValue();
                return;
            }
            int i = jsonReader.peeked;
            if (i == 0) {
                i = jsonReader.doPeek();
            }
            if (i == 13) {
                jsonReader.peeked = 9;
            } else if (i == 12) {
                jsonReader.peeked = 8;
            } else if (i == 14) {
                jsonReader.peeked = 10;
            } else {
                StringBuilder stringBuilder = new StringBuilder("Expected a name but was ");
                stringBuilder.append(jsonReader.peek());
                stringBuilder.append(jsonReader.locationString());
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
    }

    static {
        JsonReaderInternalAccess.INSTANCE = new C12591();
    }

    public JsonReader(Reader reader) {
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public void beginArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected BEGIN_ARRAY but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void endArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 4) {
            this.stackSize--;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected END_ARRAY but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void beginObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected BEGIN_OBJECT but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void endObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 2) {
            this.stackSize--;
            this.pathNames[this.stackSize] = null;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected END_OBJECT but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public boolean hasNext() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public JsonToken peek() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    final int doPeek() throws IOException {
        int nextNonWhitespace;
        StringBuilder stringBuilder;
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            nextNonWhitespace = nextNonWhitespace(true);
            if (nextNonWhitespace != 44) {
                if (nextNonWhitespace != 59) {
                    if (nextNonWhitespace != 93) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Unterminated array");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    }
                    this.peeked = 4;
                    return 4;
                } else if (!this.lenient) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                    stringBuilder.append(locationString());
                    throw new MalformedJsonException(stringBuilder.toString());
                }
            }
        } else {
            int nextNonWhitespace2;
            if (i != 3) {
                if (i != 5) {
                    if (i == 4) {
                        this.stack[this.stackSize - 1] = 5;
                        nextNonWhitespace = nextNonWhitespace(true);
                        if (nextNonWhitespace != 58) {
                            if (nextNonWhitespace != 61) {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Expected ':'");
                                stringBuilder.append(locationString());
                                throw new MalformedJsonException(stringBuilder.toString());
                            } else if (!this.lenient) {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                                stringBuilder.append(locationString());
                                throw new MalformedJsonException(stringBuilder.toString());
                            } else if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == Typography.greater) {
                                this.pos++;
                            }
                        }
                    } else if (i == 6) {
                        if (this.lenient) {
                            consumeNonExecutePrefix();
                        }
                        this.stack[this.stackSize - 1] = 7;
                    } else if (i == 7) {
                        if (nextNonWhitespace(false) == -1) {
                            this.peeked = 17;
                            return 17;
                        } else if (this.lenient) {
                            this.pos--;
                        } else {
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                            stringBuilder.append(locationString());
                            throw new MalformedJsonException(stringBuilder.toString());
                        }
                    } else if (i == 8) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                }
            }
            this.stack[this.stackSize - 1] = 4;
            if (i == 5) {
                nextNonWhitespace2 = nextNonWhitespace(true);
                if (nextNonWhitespace2 != 44) {
                    if (nextNonWhitespace2 != 59) {
                        if (nextNonWhitespace2 != 125) {
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Unterminated object");
                            stringBuilder.append(locationString());
                            throw new MalformedJsonException(stringBuilder.toString());
                        }
                        this.peeked = 2;
                        return 2;
                    } else if (!this.lenient) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    }
                }
            }
            nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 == 34) {
                this.peeked = 13;
                return 13;
            } else if (nextNonWhitespace2 != 39) {
                if (nextNonWhitespace2 != 125) {
                    if (this.lenient) {
                        this.pos--;
                        if (isLiteral((char) nextNonWhitespace2)) {
                            this.peeked = 14;
                            return 14;
                        }
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Expected name");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    }
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                    stringBuilder.append(locationString());
                    throw new MalformedJsonException(stringBuilder.toString());
                } else if (i != 5) {
                    this.peeked = 2;
                    return 2;
                } else {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Expected name");
                    stringBuilder.append(locationString());
                    throw new MalformedJsonException(stringBuilder.toString());
                }
            } else if (this.lenient) {
                this.peeked = 12;
                return 12;
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                stringBuilder.append(locationString());
                throw new MalformedJsonException(stringBuilder.toString());
            }
        }
        nextNonWhitespace = nextNonWhitespace(true);
        if (nextNonWhitespace == 34) {
            this.peeked = 9;
            return 9;
        } else if (nextNonWhitespace != 39) {
            if (!(nextNonWhitespace == 44 || nextNonWhitespace == 59)) {
                if (nextNonWhitespace == 91) {
                    this.peeked = 3;
                    return 3;
                } else if (nextNonWhitespace != 93) {
                    if (nextNonWhitespace != 123) {
                        this.pos--;
                        i = peekKeyword();
                        if (i != 0) {
                            return i;
                        }
                        i = peekNumber();
                        if (i != 0) {
                            return i;
                        }
                        if (!isLiteral(this.buffer[this.pos])) {
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Expected value");
                            stringBuilder.append(locationString());
                            throw new MalformedJsonException(stringBuilder.toString());
                        } else if (this.lenient) {
                            this.peeked = 10;
                            return 10;
                        } else {
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                            stringBuilder.append(locationString());
                            throw new MalformedJsonException(stringBuilder.toString());
                        }
                    }
                    this.peeked = 1;
                    return 1;
                } else if (i == 1) {
                    this.peeked = 4;
                    return 4;
                }
            }
            if (i != 1) {
                if (i != 2) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Unexpected value");
                    stringBuilder.append(locationString());
                    throw new MalformedJsonException(stringBuilder.toString());
                }
            }
            if (this.lenient) {
                this.pos--;
                this.peeked = 7;
                return 7;
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
            stringBuilder.append(locationString());
            throw new MalformedJsonException(stringBuilder.toString());
        } else if (this.lenient) {
            this.peeked = 8;
            return 8;
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
            stringBuilder.append(locationString());
            throw new MalformedJsonException(stringBuilder.toString());
        }
    }

    private int peekKeyword() throws IOException {
        String str;
        String str2;
        int i;
        int length;
        int i2;
        char c;
        char c2 = this.buffer[this.pos];
        if (c2 != 't') {
            if (c2 != 'T') {
                if (c2 != 'f') {
                    if (c2 != 'F') {
                        if (c2 != 'n') {
                            if (c2 != 'N') {
                                return 0;
                            }
                        }
                        str = "null";
                        str2 = "NULL";
                        i = 7;
                        length = str.length();
                        i2 = 1;
                        while (i2 < length) {
                            if (this.pos + i2 < this.limit && !fillBuffer(i2 + 1)) {
                                return 0;
                            }
                            c = this.buffer[this.pos + i2];
                            if (c != str.charAt(i2) && c != r2.charAt(i2)) {
                                return 0;
                            }
                            i2++;
                        }
                        if ((this.pos + length >= this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
                            return 0;
                        }
                        this.pos += length;
                        this.peeked = i;
                        return i;
                    }
                }
                str = "false";
                str2 = "FALSE";
                i = 6;
                length = str.length();
                i2 = 1;
                while (i2 < length) {
                    if (this.pos + i2 < this.limit) {
                    }
                    c = this.buffer[this.pos + i2];
                    if (c != str.charAt(i2)) {
                    }
                    i2++;
                }
                if (this.pos + length >= this.limit) {
                }
                return 0;
            }
        }
        str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
        str2 = "TRUE";
        i = 5;
        length = str.length();
        i2 = 1;
        while (i2 < length) {
            if (this.pos + i2 < this.limit) {
            }
            c = this.buffer[this.pos + i2];
            if (c != str.charAt(i2)) {
            }
            i2++;
        }
        if (this.pos + length >= this.limit) {
        }
        return 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int peekNumber() throws java.io.IOException {
        /*
        r21 = this;
        r0 = r21;
        r1 = r0.buffer;
        r2 = r0.pos;
        r3 = r0.limit;
        r6 = 1;
        r7 = 0;
        r8 = r3;
        r10 = r6;
        r3 = r7;
        r9 = r3;
        r13 = r9;
        r11 = 0;
    L_0x0011:
        r14 = r2 + r3;
        r15 = 2;
        if (r14 != r8) goto L_0x0027;
    L_0x0016:
        r2 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        if (r3 != r2) goto L_0x001b;
    L_0x001a:
        return r7;
    L_0x001b:
        r2 = r3 + 1;
        r2 = r0.fillBuffer(r2);
        if (r2 == 0) goto L_0x0096;
    L_0x0023:
        r2 = r0.pos;
        r8 = r0.limit;
    L_0x0027:
        r14 = r2 + r3;
        r14 = r1[r14];
        r7 = 43;
        r4 = 3;
        r5 = 5;
        if (r14 == r7) goto L_0x00ec;
    L_0x0031:
        r7 = 69;
        if (r14 == r7) goto L_0x00e0;
    L_0x0035:
        r7 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r14 == r7) goto L_0x00e0;
    L_0x0039:
        switch(r14) {
            case 45: goto L_0x00d3;
            case 46: goto L_0x00cc;
            default: goto L_0x003c;
        };
    L_0x003c:
        r7 = 48;
        if (r14 < r7) goto L_0x008e;
    L_0x0040:
        r7 = 57;
        if (r14 <= r7) goto L_0x0045;
    L_0x0044:
        goto L_0x008e;
    L_0x0045:
        if (r9 == r6) goto L_0x0083;
    L_0x0047:
        if (r9 != 0) goto L_0x004a;
    L_0x0049:
        goto L_0x0083;
    L_0x004a:
        if (r9 != r15) goto L_0x0076;
    L_0x004c:
        r18 = 0;
        r4 = (r11 > r18 ? 1 : (r11 == r18 ? 0 : -1));
        if (r4 != 0) goto L_0x0054;
    L_0x0052:
        r4 = 0;
        return r4;
    L_0x0054:
        r4 = 10;
        r4 = r4 * r11;
        r14 = r14 + -48;
        r14 = (long) r14;
        r16 = r4 - r14;
        r4 = -922337203685477580; // 0xf333333333333334 float:4.1723254E-8 double:-8.390303882365713E246;
        r7 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1));
        if (r7 > 0) goto L_0x0070;
    L_0x0065:
        r7 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1));
        if (r7 != 0) goto L_0x006e;
    L_0x0069:
        r4 = (r16 > r11 ? 1 : (r16 == r11 ? 0 : -1));
        if (r4 >= 0) goto L_0x006e;
    L_0x006d:
        goto L_0x0070;
    L_0x006e:
        r4 = 0;
        goto L_0x0071;
    L_0x0070:
        r4 = r6;
    L_0x0071:
        r4 = r4 & r10;
        r10 = r4;
        r11 = r16;
        goto L_0x0089;
    L_0x0076:
        if (r9 != r4) goto L_0x007b;
    L_0x0078:
        r7 = 0;
        r9 = 4;
        goto L_0x008a;
    L_0x007b:
        if (r9 == r5) goto L_0x0080;
    L_0x007d:
        r4 = 6;
        if (r9 != r4) goto L_0x0089;
    L_0x0080:
        r7 = 0;
        r9 = 7;
        goto L_0x008a;
    L_0x0083:
        r14 = r14 + -48;
        r4 = -r14;
        r4 = (long) r4;
        r11 = r4;
        r9 = r15;
    L_0x0089:
        r7 = 0;
    L_0x008a:
        r18 = 0;
        goto L_0x00f3;
    L_0x008e:
        r1 = r0.isLiteral(r14);
        if (r1 == 0) goto L_0x0096;
    L_0x0094:
        r1 = 0;
        return r1;
    L_0x0096:
        if (r9 != r15) goto L_0x00ba;
    L_0x0098:
        if (r10 == 0) goto L_0x00ba;
    L_0x009a:
        r1 = -9223372036854775808;
        r4 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1));
        if (r4 != 0) goto L_0x00a2;
    L_0x00a0:
        if (r13 == 0) goto L_0x00ba;
    L_0x00a2:
        r18 = 0;
        r1 = (r11 > r18 ? 1 : (r11 == r18 ? 0 : -1));
        if (r1 != 0) goto L_0x00aa;
    L_0x00a8:
        if (r13 != 0) goto L_0x00ba;
    L_0x00aa:
        if (r13 == 0) goto L_0x00ad;
    L_0x00ac:
        goto L_0x00ae;
    L_0x00ad:
        r11 = -r11;
    L_0x00ae:
        r0.peekedLong = r11;
        r1 = r0.pos;
        r1 = r1 + r3;
        r0.pos = r1;
        r1 = 15;
        r0.peeked = r1;
        return r1;
    L_0x00ba:
        if (r9 == r15) goto L_0x00c5;
    L_0x00bc:
        r1 = 4;
        if (r9 == r1) goto L_0x00c5;
    L_0x00bf:
        r1 = 7;
        if (r9 != r1) goto L_0x00c3;
    L_0x00c2:
        goto L_0x00c5;
    L_0x00c3:
        r7 = 0;
        return r7;
    L_0x00c5:
        r0.peekedNumberLength = r3;
        r1 = 16;
        r0.peeked = r1;
        return r1;
    L_0x00cc:
        r7 = 0;
        r18 = 0;
        if (r9 != r15) goto L_0x00d2;
    L_0x00d1:
        goto L_0x00f2;
    L_0x00d2:
        return r7;
    L_0x00d3:
        r4 = 6;
        r7 = 0;
        r18 = 0;
        if (r9 != 0) goto L_0x00dc;
    L_0x00d9:
        r9 = r6;
        r13 = r9;
        goto L_0x00f3;
    L_0x00dc:
        if (r9 != r5) goto L_0x00df;
    L_0x00de:
        goto L_0x00f2;
    L_0x00df:
        return r7;
    L_0x00e0:
        r7 = 0;
        r18 = 0;
        if (r9 == r15) goto L_0x00ea;
    L_0x00e5:
        r4 = 4;
        if (r9 != r4) goto L_0x00e9;
    L_0x00e8:
        goto L_0x00ea;
    L_0x00e9:
        return r7;
    L_0x00ea:
        r9 = r5;
        goto L_0x00f3;
    L_0x00ec:
        r4 = 6;
        r7 = 0;
        r18 = 0;
        if (r9 != r5) goto L_0x00f7;
    L_0x00f2:
        r9 = r4;
    L_0x00f3:
        r3 = r3 + 1;
        goto L_0x0011;
    L_0x00f7:
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    public String nextName() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 12) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 13) {
            nextUnquotedValue = nextQuotedValue(Typography.quote);
        } else {
            StringBuilder stringBuilder = new StringBuilder("Expected a name but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextUnquotedValue;
        return nextUnquotedValue;
    }

    public String nextString() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 8) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 9) {
            nextUnquotedValue = nextQuotedValue(Typography.quote);
        } else if (i == 11) {
            nextUnquotedValue = this.peekedString;
            this.peekedString = null;
        } else if (i == 15) {
            nextUnquotedValue = Long.toString(this.peekedLong);
        } else if (i == 16) {
            nextUnquotedValue = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            StringBuilder stringBuilder = new StringBuilder("Expected a string but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return nextUnquotedValue;
    }

    public boolean nextBoolean() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        int[] iArr;
        int i2;
        if (i == 5) {
            this.peeked = 0;
            iArr = this.pathIndices;
            i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.peeked = 0;
            iArr = this.pathIndices;
            i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return false;
        } else {
            StringBuilder stringBuilder = new StringBuilder("Expected a boolean but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public void nextNull() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected null but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public double nextDouble() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return (double) this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (i != 8) {
                if (i != 9) {
                    if (i == 10) {
                        this.peekedString = nextUnquotedValue();
                    } else if (i != 11) {
                        StringBuilder stringBuilder = new StringBuilder("Expected a double but was ");
                        stringBuilder.append(peek());
                        stringBuilder.append(locationString());
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                }
            }
            this.peekedString = nextQuotedValue(i == 8 ? '\'' : Typography.quote);
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.lenient || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        }
        StringBuilder stringBuilder2 = new StringBuilder("JSON forbids NaN and infinities: ");
        stringBuilder2.append(parseDouble);
        stringBuilder2.append(locationString());
        throw new MalformedJsonException(stringBuilder2.toString());
    }

    public long nextLong() throws java.io.IOException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r8 = this;
        r0 = r8.peeked;
        if (r0 != 0) goto L_0x0008;
    L_0x0004:
        r0 = r8.doPeek();
    L_0x0008:
        r1 = 15;
        r2 = 0;
        if (r0 != r1) goto L_0x001e;
    L_0x000d:
        r8.peeked = r2;
        r0 = r8.pathIndices;
        r1 = r8.stackSize;
        r1 = r1 + -1;
        r2 = r0[r1];
        r2 = r2 + 1;
        r0[r1] = r2;
        r0 = r8.peekedLong;
        return r0;
    L_0x001e:
        r1 = 16;
        if (r0 != r1) goto L_0x0037;
    L_0x0022:
        r0 = new java.lang.String;
        r1 = r8.buffer;
        r3 = r8.pos;
        r4 = r8.peekedNumberLength;
        r0.<init>(r1, r3, r4);
        r8.peekedString = r0;
        r0 = r8.pos;
        r1 = r8.peekedNumberLength;
        r0 = r0 + r1;
        r8.pos = r0;
        goto L_0x008e;
    L_0x0037:
        r1 = 10;
        r3 = 8;
        if (r0 == r3) goto L_0x0063;
    L_0x003d:
        r4 = 9;
        if (r0 == r4) goto L_0x0063;
    L_0x0041:
        if (r0 != r1) goto L_0x0044;
    L_0x0043:
        goto L_0x0063;
    L_0x0044:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r2 = "Expected a long but was ";
        r1.<init>(r2);
        r2 = r8.peek();
        r1.append(r2);
        r2 = r8.locationString();
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0063:
        if (r0 != r1) goto L_0x006c;
    L_0x0065:
        r0 = r8.nextUnquotedValue();
        r8.peekedString = r0;
        goto L_0x0079;
    L_0x006c:
        if (r0 != r3) goto L_0x0071;
    L_0x006e:
        r0 = 39;
        goto L_0x0073;
    L_0x0071:
        r0 = 34;
    L_0x0073:
        r0 = r8.nextQuotedValue(r0);
        r8.peekedString = r0;
    L_0x0079:
        r0 = r8.peekedString;	 Catch:{ NumberFormatException -> 0x008e }
        r0 = java.lang.Long.parseLong(r0);	 Catch:{ NumberFormatException -> 0x008e }
        r8.peeked = r2;	 Catch:{ NumberFormatException -> 0x008e }
        r3 = r8.pathIndices;	 Catch:{ NumberFormatException -> 0x008e }
        r4 = r8.stackSize;	 Catch:{ NumberFormatException -> 0x008e }
        r4 = r4 + -1;	 Catch:{ NumberFormatException -> 0x008e }
        r5 = r3[r4];	 Catch:{ NumberFormatException -> 0x008e }
        r5 = r5 + 1;	 Catch:{ NumberFormatException -> 0x008e }
        r3[r4] = r5;	 Catch:{ NumberFormatException -> 0x008e }
        return r0;
    L_0x008e:
        r0 = 11;
        r8.peeked = r0;
        r0 = r8.peekedString;
        r0 = java.lang.Double.parseDouble(r0);
        r3 = (long) r0;
        r5 = (double) r3;
        r7 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
        if (r7 == 0) goto L_0x00bb;
    L_0x009e:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r2 = "Expected a long but was ";
        r1.<init>(r2);
        r2 = r8.peekedString;
        r1.append(r2);
        r2 = r8.locationString();
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00bb:
        r0 = 0;
        r8.peekedString = r0;
        r8.peeked = r2;
        r0 = r8.pathIndices;
        r1 = r8.stackSize;
        r1 = r1 + -1;
        r2 = r0[r1];
        r2 = r2 + 1;
        r0[r1] = r2;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextLong():long");
    }

    private String nextQuotedValue(char c) throws IOException {
        int i;
        int i2;
        char[] cArr = this.buffer;
        StringBuilder stringBuilder = null;
        loop0:
        while (true) {
            i = this.pos;
            int i3 = this.limit;
            int i4 = i;
            while (i4 < i3) {
                i2 = i4 + 1;
                char c2 = cArr[i4];
                if (c2 == c) {
                    break loop0;
                } else if (c2 == '\\') {
                    this.pos = i2;
                    i2 = (i2 - i) - 1;
                    if (stringBuilder == null) {
                        stringBuilder = new StringBuilder(Math.max((i2 + 1) << 1, 16));
                    }
                    stringBuilder.append(cArr, i, i2);
                    stringBuilder.append(readEscapeCharacter());
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i2;
                    }
                    i4 = i2;
                }
            }
            if (stringBuilder == null) {
                stringBuilder = new StringBuilder(Math.max((i4 - i) << 1, 16));
            }
            stringBuilder.append(cArr, i, i4 - i);
            this.pos = i4;
            if (!fillBuffer(1)) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Unterminated string");
                stringBuilder.append(locationString());
                throw new MalformedJsonException(stringBuilder.toString());
            }
        }
        this.pos = i2;
        i2 = (i2 - i) - 1;
        if (stringBuilder == null) {
            return new String(cArr, i, i2);
        }
        stringBuilder.append(cArr, i, i2);
        return stringBuilder.toString();
    }

    private String nextUnquotedValue() throws IOException {
        String str;
        int i = 0;
        StringBuilder stringBuilder = null;
        do {
            int i2 = 0;
            while (true) {
                if (this.pos + i2 < this.limit) {
                    switch (this.buffer[this.pos + i2]) {
                        case '\t':
                        case '\n':
                        case '\f':
                        case '\r':
                        case ' ':
                        case ',':
                        case ':':
                        case '[':
                        case ']':
                        case '{':
                        case '}':
                            break;
                        case '#':
                        case '/':
                        case ';':
                        case '=':
                        case '\\':
                            if (!this.lenient) {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                                stringBuilder.append(locationString());
                                throw new MalformedJsonException(stringBuilder.toString());
                            }
                            break;
                        default:
                            i2++;
                            break;
                    }
                } else if (i2 >= 1024) {
                    if (stringBuilder == null) {
                        stringBuilder = new StringBuilder(Math.max(i2, 16));
                    }
                    stringBuilder.append(this.buffer, this.pos, i2);
                    this.pos += i2;
                } else if (fillBuffer(i2 + 1)) {
                }
                i = i2;
                if (stringBuilder != null) {
                    str = new String(this.buffer, this.pos, i);
                } else {
                    stringBuilder.append(this.buffer, this.pos, i);
                    str = stringBuilder.toString();
                }
                this.pos += i;
                return str;
            }
        } while (fillBuffer(1));
        if (stringBuilder != null) {
            stringBuilder.append(this.buffer, this.pos, i);
            str = stringBuilder.toString();
        } else {
            str = new String(this.buffer, this.pos, i);
        }
        this.pos += i;
        return str;
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        while (true) {
            int i = this.pos;
            int i2 = this.limit;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.pos = i3;
                    return;
                } else if (c2 == '\\') {
                    this.pos = i3;
                    readEscapeCharacter();
                    break;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i3;
                    }
                    i = i3;
                }
            }
            this.pos = i;
            if (!fillBuffer(1)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Unterminated string");
                stringBuilder.append(locationString());
                throw new MalformedJsonException(stringBuilder.toString());
            }
        }
    }

    public int nextInt() throws java.io.IOException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = r7.peeked;
        if (r0 != 0) goto L_0x0008;
    L_0x0004:
        r0 = r7.doPeek();
    L_0x0008:
        r1 = 15;
        r2 = 0;
        if (r0 != r1) goto L_0x0043;
    L_0x000d:
        r0 = r7.peekedLong;
        r0 = (int) r0;
        r3 = r7.peekedLong;
        r5 = (long) r0;
        r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r1 == 0) goto L_0x0034;
    L_0x0017:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r2 = "Expected an int but was ";
        r1.<init>(r2);
        r2 = r7.peekedLong;
        r1.append(r2);
        r2 = r7.locationString();
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0034:
        r7.peeked = r2;
        r1 = r7.pathIndices;
        r2 = r7.stackSize;
        r2 = r2 + -1;
        r3 = r1[r2];
        r3 = r3 + 1;
        r1[r2] = r3;
        return r0;
    L_0x0043:
        r1 = 16;
        if (r0 != r1) goto L_0x005c;
    L_0x0047:
        r0 = new java.lang.String;
        r1 = r7.buffer;
        r3 = r7.pos;
        r4 = r7.peekedNumberLength;
        r0.<init>(r1, r3, r4);
        r7.peekedString = r0;
        r0 = r7.pos;
        r1 = r7.peekedNumberLength;
        r0 = r0 + r1;
        r7.pos = r0;
        goto L_0x00b3;
    L_0x005c:
        r1 = 10;
        r3 = 8;
        if (r0 == r3) goto L_0x0088;
    L_0x0062:
        r4 = 9;
        if (r0 == r4) goto L_0x0088;
    L_0x0066:
        if (r0 != r1) goto L_0x0069;
    L_0x0068:
        goto L_0x0088;
    L_0x0069:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r2 = "Expected an int but was ";
        r1.<init>(r2);
        r2 = r7.peek();
        r1.append(r2);
        r2 = r7.locationString();
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0088:
        if (r0 != r1) goto L_0x0091;
    L_0x008a:
        r0 = r7.nextUnquotedValue();
        r7.peekedString = r0;
        goto L_0x009e;
    L_0x0091:
        if (r0 != r3) goto L_0x0096;
    L_0x0093:
        r0 = 39;
        goto L_0x0098;
    L_0x0096:
        r0 = 34;
    L_0x0098:
        r0 = r7.nextQuotedValue(r0);
        r7.peekedString = r0;
    L_0x009e:
        r0 = r7.peekedString;	 Catch:{ NumberFormatException -> 0x00b3 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x00b3 }
        r7.peeked = r2;	 Catch:{ NumberFormatException -> 0x00b3 }
        r1 = r7.pathIndices;	 Catch:{ NumberFormatException -> 0x00b3 }
        r3 = r7.stackSize;	 Catch:{ NumberFormatException -> 0x00b3 }
        r3 = r3 + -1;	 Catch:{ NumberFormatException -> 0x00b3 }
        r4 = r1[r3];	 Catch:{ NumberFormatException -> 0x00b3 }
        r4 = r4 + 1;	 Catch:{ NumberFormatException -> 0x00b3 }
        r1[r3] = r4;	 Catch:{ NumberFormatException -> 0x00b3 }
        return r0;
    L_0x00b3:
        r0 = 11;
        r7.peeked = r0;
        r0 = r7.peekedString;
        r0 = java.lang.Double.parseDouble(r0);
        r3 = (int) r0;
        r4 = (double) r3;
        r6 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r6 == 0) goto L_0x00e0;
    L_0x00c3:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r2 = "Expected an int but was ";
        r1.<init>(r2);
        r2 = r7.peekedString;
        r1.append(r2);
        r2 = r7.locationString();
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00e0:
        r0 = 0;
        r7.peekedString = r0;
        r7.peeked = r2;
        r0 = r7.pathIndices;
        r1 = r7.stackSize;
        r1 = r1 + -1;
        r2 = r0[r1];
        r2 = r2 + 1;
        r0[r1] = r2;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextInt():int");
    }

    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == 3) {
                push(1);
                i++;
            } else if (i2 == 1) {
                push(3);
                i++;
            } else if (i2 == 4) {
                this.stackSize--;
                i--;
            } else if (i2 == 2) {
                this.stackSize--;
                i--;
            } else {
                if (i2 != 14) {
                    if (i2 != 10) {
                        if (i2 != 8) {
                            if (i2 != 12) {
                                if (i2 != 9) {
                                    if (i2 != 13) {
                                        if (i2 == 16) {
                                            this.pos += this.peekedNumberLength;
                                        }
                                    }
                                }
                                skipQuotedValue(Typography.quote);
                            }
                        }
                        skipQuotedValue('\'');
                    }
                }
                do {
                    i2 = 0;
                    while (this.pos + i2 < this.limit) {
                        switch (this.buffer[this.pos + i2]) {
                            case '\t':
                            case '\n':
                            case '\f':
                            case '\r':
                            case ' ':
                            case ',':
                            case ':':
                            case '[':
                            case ']':
                            case '{':
                            case '}':
                                break;
                            case '#':
                            case '/':
                            case ';':
                            case '=':
                            case '\\':
                                if (!this.lenient) {
                                    StringBuilder stringBuilder = new StringBuilder();
                                    stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                                    stringBuilder.append(locationString());
                                    throw new MalformedJsonException(stringBuilder.toString());
                                }
                                break;
                            default:
                                i2++;
                        }
                        this.pos += i2;
                    }
                    this.pos += i2;
                } while (fillBuffer(1));
            }
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.pathNames[this.stackSize - 1] = "null";
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            Object obj = new int[(this.stackSize << 1)];
            Object obj2 = new int[(this.stackSize << 1)];
            Object obj3 = new String[(this.stackSize << 1)];
            System.arraycopy(this.stack, 0, obj, 0, this.stackSize);
            System.arraycopy(this.pathIndices, 0, obj2, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, obj3, 0, this.stackSize);
            this.stack = obj;
            this.pathIndices = obj2;
            this.pathNames = obj3;
        }
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    private boolean fillBuffer(int i) throws IOException {
        Object obj = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(obj, this.pos, obj, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.in.read(obj, this.limit, 1024 - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit += read;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && obj[0] == ByteOrderMark.UTF_BOM) {
                this.pos++;
                this.lineStart++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!fillBuffer(1)) {
                    break;
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
            } else if (!(c == ' ' || c == '\r' || c == '\t')) {
                StringBuilder stringBuilder;
                if (c == '/') {
                    this.pos = i3;
                    if (i3 == i2) {
                        this.pos--;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c;
                        }
                    }
                    if (this.lenient) {
                        char c2 = cArr[this.pos];
                        if (c2 == '*') {
                            this.pos++;
                            if (skipTo("*/")) {
                                i = this.pos + 2;
                                i2 = this.limit;
                            } else {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Unterminated comment");
                                stringBuilder.append(locationString());
                                throw new MalformedJsonException(stringBuilder.toString());
                            }
                        } else if (c2 != '/') {
                            return c;
                        } else {
                            this.pos++;
                            skipToEndOfLine();
                            i = this.pos;
                            i2 = this.limit;
                        }
                    } else {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    }
                } else if (c == '#') {
                    this.pos = i3;
                    if (this.lenient) {
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                    } else {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    }
                } else {
                    this.pos = i3;
                    return c;
                }
            }
            i = i3;
        }
        if (!z) {
            return true;
        }
        StringBuilder stringBuilder2 = new StringBuilder("End of input");
        stringBuilder2.append(locationString());
        throw new EOFException(stringBuilder2.toString());
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                break;
            }
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos;
                return;
            }
        } while (c != '\r');
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            int i = 0;
            if (this.pos + length > this.limit) {
                if (!fillBuffer(length)) {
                    return false;
                }
            }
            if (this.buffer[this.pos] == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos + 1;
            } else {
                while (i < length) {
                    if (this.buffer[this.pos + i] == str.charAt(i)) {
                        i++;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append(locationString());
        return stringBuilder.toString();
    }

    final String locationString() {
        int i = this.lineNumber + 1;
        int i2 = (this.pos - this.lineStart) + 1;
        StringBuilder stringBuilder = new StringBuilder(" at line ");
        stringBuilder.append(i);
        stringBuilder.append(" column ");
        stringBuilder.append(i2);
        stringBuilder.append(" path ");
        stringBuilder.append(getPath());
        return stringBuilder.toString();
    }

    public String getPath() {
        StringBuilder stringBuilder = new StringBuilder("$");
        int i = this.stackSize;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.stack[i2]) {
                case 1:
                case 2:
                    stringBuilder.append('[');
                    stringBuilder.append(this.pathIndices[i2]);
                    stringBuilder.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    stringBuilder.append('.');
                    if (this.pathNames[i2] == null) {
                        break;
                    }
                    stringBuilder.append(this.pathNames[i2]);
                    break;
                default:
                    break;
            }
        }
        return stringBuilder.toString();
    }

    private char readEscapeCharacter() throws IOException {
        StringBuilder stringBuilder;
        if (this.pos != this.limit || fillBuffer(1)) {
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos;
            } else if (!(c == Typography.quote || c == '\'' || c == '/' || c == '\\')) {
                if (c == 'b') {
                    return '\b';
                }
                if (c == 'f') {
                    return '\f';
                }
                if (c == 'n') {
                    return '\n';
                }
                if (c == 'r') {
                    return '\r';
                }
                switch (c) {
                    case 't':
                        return '\t';
                    case 'u':
                        if (this.pos + 4 <= this.limit || fillBuffer(4)) {
                            c = '\u0000';
                            int i2 = this.pos;
                            int i3 = i2 + 4;
                            while (i2 < i3) {
                                char c2 = this.buffer[i2];
                                c = (char) (c << 4);
                                if (c2 >= '0' && c2 <= '9') {
                                    c = (char) (c + (c2 - 48));
                                } else if (c2 >= 'a' && c2 <= 'f') {
                                    c = (char) (c + ((c2 - 97) + 10));
                                } else if (c2 < 'A' || c2 > 'F') {
                                    StringBuilder stringBuilder2 = new StringBuilder("\\u");
                                    stringBuilder2.append(new String(this.buffer, this.pos, 4));
                                    throw new NumberFormatException(stringBuilder2.toString());
                                } else {
                                    c = (char) (c + ((c2 - 65) + 10));
                                }
                                i2++;
                            }
                            this.pos += 4;
                            return c;
                        }
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Unterminated escape sequence");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                    default:
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Invalid escape sequence");
                        stringBuilder.append(locationString());
                        throw new MalformedJsonException(stringBuilder.toString());
                }
            }
            return c;
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append("Unterminated escape sequence");
        stringBuilder.append(locationString());
        throw new MalformedJsonException(stringBuilder.toString());
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            int i = 0;
            while (i < NON_EXECUTE_PREFIX.length) {
                if (this.buffer[this.pos + i] == NON_EXECUTE_PREFIX[i]) {
                    i++;
                } else {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }

    private boolean isLiteral(char c) throws IOException {
        switch (c) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                break;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                if (this.lenient == '\u0000') {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Use JsonReader.setLenient(true) to accept malformed JSON");
                    stringBuilder.append(locationString());
                    throw new MalformedJsonException(stringBuilder.toString());
                }
                break;
            default:
                return true;
        }
        return false;
    }
}
