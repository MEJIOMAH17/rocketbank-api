package org.java_websocket.framing;

import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidFrameException;

public interface CloseFrame extends Framedata {
    int getCloseCode() throws InvalidFrameException;

    String getMessage() throws InvalidDataException;
}
