.class public final Lru/rocketbank/core/network/adapter/GeoObjectListAdapterDeserializer;
.super Ljava/lang/Object;
.source "GeoObjectListAdapterDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoObjectListAdapterDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoObjectListAdapterDeserializer.kt\nru/rocketbank/core/network/adapter/GeoObjectListAdapterDeserializer\n*L\n1#1,46:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/core/network/adapter/GeoObjectListAdapterDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;"
        }
    .end annotation

    const-string p2, "json"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    instance-of p2, p1, Lcom/google/gson/JsonObject;

    if-eqz p2, :cond_e

    .line 1089
    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "response"

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string p2, "json.asJsonObject[\"response\"]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3056
    instance-of p2, p1, Lcom/google/gson/JsonObject;

    if-eqz p2, :cond_d

    .line 2089
    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "GeoObjectCollection"

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string p2, "json.asJsonObject[\"respo\u2026ct[\"GeoObjectCollection\"]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4056
    instance-of p2, p1, Lcom/google/gson/JsonObject;

    if-eqz p2, :cond_c

    .line 3089
    check-cast p1, Lcom/google/gson/JsonObject;

    const-string p2, "metaDataProperty"

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string p3, "geoCollection[\"metaDataProperty\"]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5056
    instance-of p3, p2, Lcom/google/gson/JsonObject;

    if-eqz p3, :cond_b

    .line 4089
    check-cast p2, Lcom/google/gson/JsonObject;

    const-string p3, "GeocoderResponseMetaData"

    .line 21
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string p3, "geoCollection[\"metaDataP\u2026eocoderResponseMetaData\"]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6056
    instance-of p3, p2, Lcom/google/gson/JsonObject;

    if-eqz p3, :cond_a

    .line 5089
    check-cast p2, Lcom/google/gson/JsonObject;

    const-string p3, "found"

    .line 21
    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string p3, "geoCollection[\"metaDataP\u2026   .asJsonObject[\"found\"]"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    const-string p3, "featureMember"

    .line 25
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string p3, "geoCollection[\"featureMember\"]"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7047
    instance-of p3, p1, Lcom/google/gson/JsonArray;

    if-eqz p3, :cond_9

    .line 6105
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 26
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    const-string v0, "member"

    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8056
    instance-of v0, p2, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_7

    .line 7089
    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v0, "GeoObject"

    .line 30
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string v0, "member.asJsonObject[\"GeoObject\"]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9056
    instance-of v0, p2, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_6

    .line 8089
    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v0, "member.asJsonObject[\"GeoObject\"].asJsonObject"

    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10056
    instance-of v0, p2, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_5

    .line 9089
    move-object v0, p2

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "metaDataProperty"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026bject[\"metaDataProperty\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11056
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_4

    .line 10089
    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "GeocoderMetaData"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026bject[\"GeocoderMetaData\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12056
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_3

    .line 11089
    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "AddressDetails"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026nObject[\"AddressDetails\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13056
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_2

    .line 12089
    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "Country"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026 .asJsonObject[\"Country\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14056
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_1

    .line 13089
    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "AddressLine"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026JsonObject[\"AddressLine\"]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapsGeoObject\n          \u2026                .asString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Point"

    .line 39
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string v1, "mapsGeoObject[\"Point\"]"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15056
    instance-of v1, p2, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 14089
    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v1, "pos"

    .line 39
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-string v1, "mapsGeoObject[\"Point\"].asJsonObject[\"pos\"]"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "mapsGeoObject[\"Point\"].a\u2026sonObject[\"pos\"].asString"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 p2, 0x1

    new-array v3, p2, [Ljava/lang/String;

    const-string v1, " "

    const/4 v8, 0x0

    aput-object v1, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 41
    new-instance p2, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;

    invoke-direct {p2, v0, v2}, Lru/rocketbank/core/network/model/yandex/maps/GeoObject;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 42
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14091
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13091
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a JSON Object: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12091
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a JSON Object: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11091
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a JSON Object: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10091
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not a JSON Object: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9091
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8091
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7091
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object p3

    .line 6107
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Array: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5091
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4091
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3091
    :cond_c
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2091
    :cond_d
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1091
    :cond_e
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Not a JSON Object: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
