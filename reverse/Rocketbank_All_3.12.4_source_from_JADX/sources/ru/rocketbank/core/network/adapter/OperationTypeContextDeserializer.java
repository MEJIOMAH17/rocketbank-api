package ru.rocketbank.core.network.adapter;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.operation.OperationContextType;

/* compiled from: OperationTypeContextDeserializer.kt */
public final class OperationTypeContextDeserializer extends TypeAdapter<OperationContextType> {
    public final void write(JsonWriter jsonWriter, OperationContextType operationContextType) {
    }

    public final OperationContextType read(JsonReader jsonReader) {
        String str = null;
        JsonToken peek = jsonReader != null ? jsonReader.peek() : null;
        if (peek == null) {
            Intrinsics.throwNpe();
        }
        if (JsonToken.NULL == JsonToken.valueOf(peek.name())) {
            if (jsonReader != null) {
                jsonReader.nextNull();
            }
            return OperationContextType.None;
        }
        if (jsonReader != null) {
            str = jsonReader.nextString();
        }
        return deserialize(str);
    }

    private final OperationContextType deserialize(String str) {
        if (str != null) {
            for (OperationContextType operationContextType : OperationContextType.values()) {
                if (Intrinsics.areEqual(operationContextType.getText(), str)) {
                    break;
                }
            }
            OperationContextType operationContextType2 = null;
            if (operationContextType2 == null) {
                operationContextType2 = OperationContextType.Unknown;
            }
            if (operationContextType2 != null) {
                return operationContextType2;
            }
        }
        return OperationContextType.None;
    }
}
