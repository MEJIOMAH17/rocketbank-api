.class public Lcom/flurry/sdk/in;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "com.flurry.sdk.in"

.field private static c:Lcom/flurry/sdk/in;


# instance fields
.field public a:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/io;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/io;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/in;
    .locals 8

    const-class v0, Lcom/flurry/sdk/in;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/in;->c:Lcom/flurry/sdk/in;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/flurry/sdk/in;

    invoke-direct {v1}, Lcom/flurry/sdk/in;-><init>()V

    .line 67
    sput-object v1, Lcom/flurry/sdk/in;->c:Lcom/flurry/sdk/in;

    .line 1073
    new-instance v2, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 1097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".yflurrypulselogging."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v5

    .line 2101
    iget-object v5, v5, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 1281
    invoke-static {v5}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0x10

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ".yflurrypulselogging."

    const/4 v5, 0x1

    new-instance v6, Lcom/flurry/sdk/in$1;

    invoke-direct {v6, v1}, Lcom/flurry/sdk/in$1;-><init>(Lcom/flurry/sdk/in;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v2, v1, Lcom/flurry/sdk/in;->d:Lcom/flurry/sdk/jy;

    .line 1080
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v2

    const-string v3, "UseHttps"

    .line 1082
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/flurry/sdk/in;->f:Z

    const/4 v2, 0x4

    .line 1083
    sget-object v3, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, UseHttps = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/flurry/sdk/in;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v2, v1, Lcom/flurry/sdk/in;->d:Lcom/flurry/sdk/jy;

    invoke-virtual {v2}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    .line 1086
    iget-object v2, v1, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1087
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    .line 69
    :cond_0
    sget-object v1, Lcom/flurry/sdk/in;->c:Lcom/flurry/sdk/in;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/in;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized a([B)V
    .locals 5

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 10079
    iget-boolean v0, v0, Lcom/flurry/sdk/jk;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x5

    .line 226
    sget-object v0, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 230
    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 10285
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/in;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10286
    iget-object v0, p0, Lcom/flurry/sdk/in;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "https://data.flurry.com/pcr.do"

    :goto_0
    const/4 v1, 0x4

    .line 236
    sget-object v2, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PulseLoggingManager: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/flurry/sdk/kl;

    invoke-direct {v1}, Lcom/flurry/sdk/kl;-><init>()V

    .line 11134
    iput-object v0, v1, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    const v0, 0x186a0

    .line 12029
    iput v0, v1, Lcom/flurry/sdk/lx;->w:I

    .line 241
    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 12142
    iput-object v0, v1, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    const/4 v0, 0x1

    .line 12191
    iput-boolean v0, v1, Lcom/flurry/sdk/kn;->j:Z

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 243
    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0}, Lcom/flurry/sdk/kv;-><init>()V

    .line 13040
    iput-object v0, v1, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 14036
    iput-object p1, v1, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 246
    new-instance p1, Lcom/flurry/sdk/in$2;

    invoke-direct {p1, p0}, Lcom/flurry/sdk/in$2;-><init>(Lcom/flurry/sdk/in;)V

    .line 14048
    iput-object p1, v1, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 269
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x3

    .line 231
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v1, "No report need be sent"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 224
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/flurry/sdk/in;)Lcom/flurry/sdk/jy;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/flurry/sdk/in;->d:Lcom/flurry/sdk/jy;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 123
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 132
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 3101
    iget-object v1, v1, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/jn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x3

    .line 141
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    invoke-static {}, Lcom/flurry/sdk/jn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/je;->d()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    .line 3127
    iget-object v4, v4, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 151
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 152
    new-instance v6, Lcom/flurry/sdk/ht;

    invoke-direct {v6}, Lcom/flurry/sdk/ht;-><init>()V

    .line 153
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/jm;

    iget v7, v7, Lcom/flurry/sdk/jm;->c:I

    iput v7, v6, Lcom/flurry/sdk/ht;->a:I

    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/jm;

    iget-boolean v7, v7, Lcom/flurry/sdk/jm;->d:Z

    if-eqz v7, :cond_1

    .line 155
    new-instance v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v6, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    goto :goto_1

    .line 158
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/flurry/sdk/lr;->b([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    .line 160
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/ht;

    .line 168
    iget v5, v4, Lcom/flurry/sdk/ht;->a:I

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 171
    iget-object v4, v4, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 172
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 173
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    sget-object v1, Lcom/flurry/sdk/ig;->b:Lcom/flurry/sdk/ig;

    .line 4027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 179
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/flurry/sdk/ig;->c:Lcom/flurry/sdk/ig;

    .line 5027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 183
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/flurry/sdk/ig;->d:Lcom/flurry/sdk/ig;

    .line 6027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 187
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/ig;

    .line 7027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 191
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 192
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/flurry/sdk/ig;->f:Lcom/flurry/sdk/ig;

    .line 8027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 195
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/flurry/sdk/ig;->g:Lcom/flurry/sdk/ig;

    .line 9027
    iget v1, v1, Lcom/flurry/sdk/ig;->h:I

    .line 199
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 200
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    iget-object v1, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/io;

    .line 10025
    iget-object v4, v4, Lcom/flurry/sdk/io;->a:[B

    .line 205
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_3

    .line 208
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 209
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 210
    invoke-virtual {v4, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 211
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    .line 212
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    return-object v1

    .line 119
    :cond_5
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 217
    :goto_5
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v0, v2, v4, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 220
    :goto_6
    invoke-static {v3}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/im;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/io;

    invoke-virtual {p1}, Lcom/flurry/sdk/im;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/flurry/sdk/io;-><init>([B)V

    .line 97
    iget-object p1, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    .line 99
    sget-object v0, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v1, "Saving persistent Pulse logging data."

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/flurry/sdk/in;->d:Lcom/flurry/sdk/jy;

    iget-object v0, p0, Lcom/flurry/sdk/in;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    const/4 p1, 0x6

    .line 103
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v1, "Error when generating pulse log report in addReport part"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 95
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/in;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/in;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x6

    .line 276
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v2, "Report not send due to exception in generate data"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 273
    :goto_0
    monitor-exit p0

    throw v0
.end method
