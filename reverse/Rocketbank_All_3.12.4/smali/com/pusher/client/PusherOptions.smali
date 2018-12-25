.class public Lcom/pusher/client/PusherOptions;
.super Ljava/lang/Object;
.source "PusherOptions.java"


# static fields
.field private static final DEFAULT_ACTIVITY_TIMEOUT:J = 0x1d4c0L

.field private static final DEFAULT_PONG_TIMEOUT:J = 0x7530L

.field private static final LIB_DEV_VERSION:Ljava/lang/String; = "0.0.0-dev"

.field public static final LIB_VERSION:Ljava/lang/String;

.field private static final PUSHER_DOMAIN:Ljava/lang/String; = "pusher.com"

.field private static final SRC_LIB_DEV_VERSION:Ljava/lang/String; = "@version@"

.field private static final URI_SUFFIX:Ljava/lang/String;

.field private static final WSS_PORT:I = 0x1bb

.field private static final WSS_SCHEME:Ljava/lang/String; = "wss"

.field private static final WS_PORT:I = 0x50

.field private static final WS_SCHEME:Ljava/lang/String; = "ws"


# instance fields
.field private activityTimeout:J

.field private authorizer:Lcom/pusher/client/Authorizer;

.field private encrypted:Z

.field private host:Ljava/lang/String;

.field private pongTimeout:J

.field private proxy:Ljava/net/Proxy;

.field private wsPort:I

.field private wssPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/pusher/client/PusherOptions;->readVersionFromProperties()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?client=java-client&protocol=5&version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ws.pusherapp.com"

    .line 31
    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    const/16 v0, 0x50

    .line 32
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    const/16 v0, 0x1bb

    .line 33
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    const-wide/32 v0, 0x1d4c0

    .line 35
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    const-wide/16 v0, 0x7530

    .line 36
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    .line 38
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method private static readVersionFromProperties()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 228
    const-class v2, Lcom/pusher/client/PusherOptions;

    const-string v3, "/pusher.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "version"

    .line 230
    invoke-virtual {v1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@version@"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0.0.0-dev"

    :cond_0
    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_2

    if-eqz v2, :cond_1

    .line 249
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :cond_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 254
    :catch_2
    :cond_3
    throw v0

    :catch_3
    :goto_1
    if-eqz v0, :cond_4

    .line 249
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_4
    :goto_2
    const-string v0, "0.0.0"

    return-object v0
.end method


# virtual methods
.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s://%s:%s/app/%s%s"

    const/4 v1, 0x5

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    if-eqz v2, :cond_0

    const-string v2, "wss"

    goto :goto_0

    :cond_0
    const-string v2, "ws"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    sget-object v2, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivityTimeout()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    return-wide v0
.end method

.method public getAuthorizer()Lcom/pusher/client/Authorizer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object v0
.end method

.method public getPongTimeout()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    return v0
.end method

.method public setActivityTimeout(J)Lcom/pusher/client/PusherOptions;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 152
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_0
    iput-wide p1, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    return-object p0
.end method

.method public setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pusher.com"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    const/16 p1, 0x50

    .line 132
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    const/16 p1, 0x1bb

    .line 133
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    return-object p0
.end method

.method public setEncrypted(Z)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/pusher/client/PusherOptions;->encrypted:Z

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setPongTimeout(J)Lcom/pusher/client/PusherOptions;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 177
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pong timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_0
    iput-wide p1, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/pusher/client/PusherOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 211
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "proxy must not be null (instead use Proxy.NO_PROXY)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public setWsPort(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 111
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    return-object p0
.end method

.method public setWssPort(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 126
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    return-object p0
.end method
