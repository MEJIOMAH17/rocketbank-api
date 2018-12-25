.class public Lcom/pusher/client/channel/User;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field private final id:Ljava/lang/String;

.field private final jsonData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/User;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/pusher/client/channel/User;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 99
    instance-of v0, p1, Lcom/pusher/client/channel/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    check-cast p1, Lcom/pusher/client/channel/User;

    .line 101
    invoke-virtual {p0}, Lcom/pusher/client/channel/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pusher/client/channel/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pusher/client/channel/User;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pusher/client/channel/User;->getInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/pusher/client/channel/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/pusher/client/channel/User;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/pusher/client/channel/User;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[User id=%s, data=%s]"

    const/4 v1, 0x2

    .line 88
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pusher/client/channel/User;->id:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/pusher/client/channel/User;->jsonData:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
