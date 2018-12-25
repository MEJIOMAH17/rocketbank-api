package org.java_websocket.framing;

import android.support.v4.view.PointerIconCompat;
import java.nio.ByteBuffer;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.util.Charsetfunctions;

public final class CloseFrameBuilder extends FramedataImpl1 implements CloseFrame {
    static final ByteBuffer emptybytebuffer = ByteBuffer.allocate(0);
    private int code;
    private String reason;

    public CloseFrameBuilder() {
        super(Opcode.CLOSING);
        setFin(true);
    }

    public CloseFrameBuilder(byte b) throws InvalidDataException {
        super(Opcode.CLOSING);
        setFin((byte) 1);
        setCodeAndMessage(1000, "");
    }

    public CloseFrameBuilder(int i, String str) throws InvalidDataException {
        super(Opcode.CLOSING);
        setFin(true);
        setCodeAndMessage(i, str);
    }

    private void setCodeAndMessage(int i, String str) throws InvalidDataException {
        if (str == null) {
            str = "";
        }
        if (i == PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW) {
            str = "";
            i = 1005;
        }
        if (i != 1005) {
            str = Charsetfunctions.utf8Bytes(str);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i);
            allocate.position(2);
            i = ByteBuffer.allocate(2 + str.length);
            i.put(allocate);
            i.put(str);
            i.rewind();
            super.setPayload(i);
            initCloseCode();
            initMessage();
        } else if (str.length() > 0) {
            throw new InvalidDataException(1002, "A close frame must have a closecode if it has a reason");
        }
    }

    private void initCloseCode() throws InvalidFrameException {
        this.code = 1005;
        ByteBuffer payloadData = super.getPayloadData();
        payloadData.mark();
        if (payloadData.remaining() >= 2) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.position(2);
            allocate.putShort(payloadData.getShort());
            allocate.position(0);
            this.code = allocate.getInt();
            if (this.code == PointerIconCompat.TYPE_CELL || this.code == PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW || this.code == 1005 || this.code > 4999 || this.code < 1000 || this.code == PointerIconCompat.TYPE_WAIT) {
                StringBuilder stringBuilder = new StringBuilder("closecode must not be sent over the wire: ");
                stringBuilder.append(this.code);
                throw new InvalidFrameException(stringBuilder.toString());
            }
        }
        payloadData.reset();
    }

    public final int getCloseCode() {
        return this.code;
    }

    private void initMessage() throws InvalidDataException {
        if (this.code == 1005) {
            this.reason = Charsetfunctions.stringUtf8(super.getPayloadData());
            return;
        }
        ByteBuffer payloadData = super.getPayloadData();
        int position = payloadData.position();
        try {
            payloadData.position(payloadData.position() + 2);
            this.reason = Charsetfunctions.stringUtf8(payloadData);
            payloadData.position(position);
        } catch (Throwable e) {
            throw new InvalidFrameException(e);
        } catch (Throwable th) {
            payloadData.position(position);
        }
    }

    public final String getMessage() {
        return this.reason;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("code: ");
        stringBuilder.append(this.code);
        return stringBuilder.toString();
    }

    public final void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        super.setPayload(byteBuffer);
        initCloseCode();
        initMessage();
    }

    public final ByteBuffer getPayloadData() {
        if (this.code == 1005) {
            return emptybytebuffer;
        }
        return super.getPayloadData();
    }
}
