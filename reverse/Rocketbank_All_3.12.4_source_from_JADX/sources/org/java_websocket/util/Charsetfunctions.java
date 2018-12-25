package org.java_websocket.util;

import android.support.v4.view.PointerIconCompat;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import org.java_websocket.exceptions.InvalidDataException;

public final class Charsetfunctions {
    public static CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;

    public static byte[] utf8Bytes(String str) {
        try {
            return str.getBytes("UTF8");
        } catch (String str2) {
            throw new RuntimeException(str2);
        }
    }

    public static byte[] asciiBytes(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (String str2) {
            throw new RuntimeException(str2);
        }
    }

    public static String stringAscii$55a39fc4(byte[] bArr, int i) {
        try {
            return new String(bArr, 0, i, "ASCII");
        } catch (byte[] bArr2) {
            throw new RuntimeException(bArr2);
        }
    }

    public static String stringUtf8(ByteBuffer byteBuffer) throws InvalidDataException {
        CharsetDecoder newDecoder = Charset.forName("UTF8").newDecoder();
        newDecoder.onMalformedInput(codingErrorAction);
        newDecoder.onUnmappableCharacter(codingErrorAction);
        try {
            byteBuffer.mark();
            String charBuffer = newDecoder.decode(byteBuffer).toString();
            byteBuffer.reset();
            return charBuffer;
        } catch (Throwable e) {
            throw new InvalidDataException((int) PointerIconCompat.TYPE_CROSSHAIR, e);
        }
    }
}
