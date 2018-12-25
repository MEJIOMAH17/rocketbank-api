package ru.rocketbank.core.network.adapter;

import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.operation.FriendRequestType;

/* compiled from: FriendsTypeDeserializer.kt */
public final class FriendsTypeDeserializer extends TypeAdapter<FriendRequestType> {
    public static final Companion Companion = new Companion();
    private static final String FRIEND_TRANSFER_TYPE_EXTERNAL = "transfer_external";
    private static final String FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN = "request_external_in";
    private static final String FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT = "request_external_out";
    private static final String FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN = "request_internal_in";
    private static final String FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT = "request_internal_out";

    /* compiled from: FriendsTypeDeserializer.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getFRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN() {
            return FriendsTypeDeserializer.FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN;
        }

        public final String getFRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT() {
            return FriendsTypeDeserializer.FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT;
        }

        public final String getFRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN() {
            return FriendsTypeDeserializer.FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN;
        }

        public final String getFRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT() {
            return FriendsTypeDeserializer.FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT;
        }

        public final String getFRIEND_TRANSFER_TYPE_EXTERNAL() {
            return FriendsTypeDeserializer.FRIEND_TRANSFER_TYPE_EXTERNAL;
        }
    }

    public final void write(JsonWriter jsonWriter, FriendRequestType friendRequestType) {
    }

    public final FriendRequestType read(JsonReader jsonReader) {
        String str = null;
        JsonToken peek = jsonReader != null ? jsonReader.peek() : null;
        if (peek == null) {
            Intrinsics.throwNpe();
        }
        if (JsonToken.NULL == JsonToken.valueOf(peek.name())) {
            if (jsonReader != null) {
                jsonReader.nextNull();
            }
            return FriendRequestType.None;
        }
        if (jsonReader != null) {
            str = jsonReader.nextString();
        }
        return deserialize(str);
    }

    public final FriendRequestType deserialize(String str) {
        if (str != null) {
            if (Intrinsics.areEqual(str, FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_IN)) {
                str = FriendRequestType.InternalIn;
            } else if (Intrinsics.areEqual(str, FRIEND_TRANSFER_TYPE_REQUEST_INTERNAL_OUT)) {
                str = FriendRequestType.InternalOut;
            } else if (Intrinsics.areEqual(str, FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_IN)) {
                str = FriendRequestType.ExternalIn;
            } else if (Intrinsics.areEqual(str, FRIEND_TRANSFER_TYPE_REQUEST_EXTERNAL_OUT)) {
                str = FriendRequestType.ExternalOut;
            } else if (Intrinsics.areEqual(str, FRIEND_TRANSFER_TYPE_EXTERNAL)) {
                str = FriendRequestType.TransferExternal;
            } else {
                Log.e("DSR", "Unknown friend request type ".concat(String.valueOf(str)));
                str = FriendRequestType.Unknown;
            }
            if (str != null) {
                return str;
            }
        }
        return FriendRequestType.None;
    }
}
