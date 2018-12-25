package org.java_websocket.framing;

import java.nio.ByteBuffer;
import java.util.Arrays;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.util.Charsetfunctions;

public class FramedataImpl1 implements FrameBuilder {
    protected static byte[] emptyarray = new byte[0];
    protected boolean fin;
    protected Opcode optcode;
    protected boolean transferemasked;
    private ByteBuffer unmaskedpayload;

    public FramedataImpl1(Opcode opcode) {
        this.optcode = opcode;
        this.unmaskedpayload = ByteBuffer.wrap(emptyarray);
    }

    public FramedataImpl1(Framedata framedata) {
        this.fin = framedata.isFin();
        this.optcode = framedata.getOpcode();
        this.unmaskedpayload = framedata.getPayloadData();
        this.transferemasked = framedata.getTransfereMasked();
    }

    public final boolean isFin() {
        return this.fin;
    }

    public final Opcode getOpcode() {
        return this.optcode;
    }

    public final boolean getTransfereMasked() {
        return this.transferemasked;
    }

    public ByteBuffer getPayloadData() {
        return this.unmaskedpayload;
    }

    public final void setFin(boolean z) {
        this.fin = z;
    }

    public final void setOptcode(Opcode opcode) {
        this.optcode = opcode;
    }

    public void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        this.unmaskedpayload = byteBuffer;
    }

    public final void setTransferemasked(boolean z) {
        this.transferemasked = z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Framedata{ optcode:");
        stringBuilder.append(this.optcode);
        stringBuilder.append(", fin:");
        stringBuilder.append(this.fin);
        stringBuilder.append(", payloadlength:[pos:");
        stringBuilder.append(this.unmaskedpayload.position());
        stringBuilder.append(", len:");
        stringBuilder.append(this.unmaskedpayload.remaining());
        stringBuilder.append("], payload:");
        stringBuilder.append(Arrays.toString(Charsetfunctions.utf8Bytes(new String(this.unmaskedpayload.array()))));
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
