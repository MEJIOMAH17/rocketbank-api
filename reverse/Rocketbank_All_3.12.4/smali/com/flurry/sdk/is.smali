.class public Lcom/flurry/sdk/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/hs;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "is"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/flurry/sdk/ip;
    .locals 2

    .line 265
    sget-object v0, Lcom/flurry/sdk/ip;->a:Lcom/flurry/sdk/ip;

    .line 267
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const-class v1, Lcom/flurry/sdk/ip;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ip;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/flurry/sdk/hp;Lorg/json/JSONArray;)V
    .locals 8

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 208
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "string"

    .line 213
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :cond_0
    new-instance v4, Lcom/flurry/sdk/hv;

    invoke-direct {v4}, Lcom/flurry/sdk/hv;-><init>()V

    const-string v5, "string"

    const-string v6, ""

    .line 220
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    .line 221
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v4, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    .line 225
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_2

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string v4, "com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger"

    .line 231
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 234
    new-instance v4, Lcom/flurry/sdk/hw;

    invoke-direct {v4}, Lcom/flurry/sdk/hw;-><init>()V

    const-string v5, "event_name"

    const-string v6, ""

    .line 235
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/flurry/sdk/hw;->a:Ljava/lang/String;

    const-string v5, "event_parameter_name"

    const-string v6, ""

    .line 236
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    const-string v5, "event_parameter_values"

    .line 238
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v6, v1

    .line 243
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-string v7, ""

    .line 245
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 249
    :cond_3
    new-array v5, v1, [Ljava/lang/String;

    .line 252
    :cond_4
    iput-object v5, v4, Lcom/flurry/sdk/hw;->d:[Ljava/lang/String;

    .line 254
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 259
    :cond_6
    iput-object v2, p0, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    :cond_7
    return-void
.end method

.method private static a(Lcom/flurry/sdk/hq;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    new-instance v3, Lcom/flurry/sdk/hp;

    invoke-direct {v3}, Lcom/flurry/sdk/hp;-><init>()V

    const-string v4, "partner"

    const-string v5, ""

    .line 167
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    const-string v4, "events"

    .line 169
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    invoke-static {v3, v4}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/hp;Lorg/json/JSONArray;)V

    const-string v4, "method"

    .line 172
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/is;->a(Ljava/lang/String;)Lcom/flurry/sdk/ip;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->d:Lcom/flurry/sdk/ip;

    const-string v4, "uri_template"

    const-string v5, ""

    .line 173
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    const-string v4, "body_template"

    .line 175
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "string"

    const-string v6, "null"

    .line 177
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    iput-object v4, v3, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    :cond_0
    const-string v4, "max_redirects"

    const/4 v5, 0x5

    .line 183
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->g:I

    const-string v4, "connect_timeout"

    const/16 v5, 0x14

    .line 184
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->h:I

    const-string v4, "request_timeout"

    .line 185
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/flurry/sdk/hp;->i:I

    const-string v4, "callback_id"

    const-wide/16 v5, -0x1

    .line 186
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/hp;->a:J

    const-string v4, "headers"

    .line 188
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "map"

    .line 190
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 192
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/flurry/sdk/hp;->j:Ljava/util/Map;

    .line 196
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 199
    :cond_3
    iput-object v0, p0, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    :cond_4
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/lr;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const/4 p0, 0x5

    .line 103
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v2, "Proton response string: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance p0, Lcom/flurry/sdk/hs;

    invoke-direct {p0}, Lcom/flurry/sdk/hs;-><init>()V

    .line 107
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "issued_at"

    const-wide/16 v2, -0x1

    .line 108
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/hs;->a:J

    const-string v0, "refresh_ttl"

    const-wide/16 v2, 0xe10

    .line 109
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/hs;->b:J

    const-string v0, "expiration_ttl"

    const-wide/32 v2, 0x15180

    .line 110
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/hs;->c:J

    const-string v0, "global_settings"

    .line 1122
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1124
    new-instance v2, Lcom/flurry/sdk/hz;

    invoke-direct {v2}, Lcom/flurry/sdk/hz;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/hs;->d:Lcom/flurry/sdk/hz;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v2, p0, Lcom/flurry/sdk/hs;->d:Lcom/flurry/sdk/hz;

    const-string v3, "log_level"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;)Lcom/flurry/sdk/ia;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/hz;->a:Lcom/flurry/sdk/ia;

    :cond_1
    const-string v0, "pulse"

    .line 1131
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1133
    new-instance v2, Lcom/flurry/sdk/hq;

    invoke-direct {v2}, Lcom/flurry/sdk/hq;-><init>()V

    if-eqz v0, :cond_2

    const-string v3, "callbacks"

    .line 1136
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1137
    invoke-static {v2, v3}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/hq;Lorg/json/JSONArray;)V

    const-string v3, "max_callback_retries"

    const/4 v4, 0x3

    .line 1139
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/flurry/sdk/hq;->b:I

    const-string v3, "max_callback_attempts_per_report"

    const/16 v4, 0xf

    .line 1140
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/flurry/sdk/hq;->c:I

    const-string v3, "max_report_delay_seconds"

    const/16 v4, 0x258

    .line 1141
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/flurry/sdk/hq;->d:I

    const-string v3, "agent_report_url"

    const-string v4, ""

    .line 1142
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    .line 1145
    :cond_2
    iput-object v2, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    const-string v0, "analytics"

    .line 1149
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1151
    new-instance v1, Lcom/flurry/sdk/ic;

    invoke-direct {v1}, Lcom/flurry/sdk/ic;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    if-eqz v0, :cond_3

    .line 1153
    iget-object v1, p0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    const-string v2, "analytics_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/flurry/sdk/ic;->b:Z

    .line 1154
    iget-object v1, p0, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    const-string v2, "max_session_properties"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/flurry/sdk/ic;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception while deserialize: "

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Lcom/flurry/sdk/ia;
    .locals 2

    .line 277
    sget-object v0, Lcom/flurry/sdk/ia;->f:Lcom/flurry/sdk/ia;

    .line 279
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const-class v1, Lcom/flurry/sdk/ia;

    invoke-static {v1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ia;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/flurry/sdk/is;->b(Ljava/io/InputStream;)Lcom/flurry/sdk/hs;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2091
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Serialize not supported for response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
