.class public Lcom/flurry/sdk/iy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iy$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "iy"


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/iy;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/iz;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x7

    .line 100
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1047
    iget-object v0, p1, Lcom/flurry/sdk/iz;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1055
    iget-wide v3, p1, Lcom/flurry/sdk/iz;->b:J

    .line 102
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1063
    iget-wide v3, p1, Lcom/flurry/sdk/iz;->c:J

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1071
    iget-wide v3, p1, Lcom/flurry/sdk/iz;->d:J

    .line 104
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const/4 v3, -0x1

    .line 110
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1087
    iget-object v4, p1, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 112
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 113
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2087
    iget-object v4, p1, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2095
    :goto_0
    iget-object v4, p1, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3095
    iget-object v4, p1, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3103
    :goto_1
    iget-object v4, p1, Lcom/flurry/sdk/iz;->h:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 130
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 132
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 133
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 4079
    :cond_3
    :goto_3
    iget-object v4, p1, Lcom/flurry/sdk/iz;->e:Ljava/util/Map;

    if-nez v4, :cond_4

    .line 142
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    .line 144
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4

    .line 4111
    :cond_5
    :goto_5
    iget-object v4, p1, Lcom/flurry/sdk/iz;->i:Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4119
    iget-object v4, p1, Lcom/flurry/sdk/iz;->j:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4127
    iget v4, p1, Lcom/flurry/sdk/iz;->k:I

    .line 154
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4135
    iget v4, p1, Lcom/flurry/sdk/iz;->l:I

    .line 155
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4143
    iget-object v4, p1, Lcom/flurry/sdk/iz;->m:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4151
    iget-object v4, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    if-nez v4, :cond_6

    .line 159
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_6

    .line 161
    :cond_6
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 5151
    iget-object v4, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 162
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 6151
    iget-object v4, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 163
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 7151
    iget-object v4, p1, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 164
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 7159
    :goto_6
    iget v4, p1, Lcom/flurry/sdk/iz;->o:I

    .line 167
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 169
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7167
    iget-byte v4, p1, Lcom/flurry/sdk/iz;->p:B

    .line 170
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7175
    iget-object v4, p1, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    if-nez v4, :cond_7

    .line 172
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_7

    .line 174
    :cond_7
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8175
    iget-object v0, p1, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 8183
    :goto_7
    iget-object v0, p1, Lcom/flurry/sdk/iz;->r:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 180
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_9

    .line 182
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 183
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 185
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iu;

    iget v4, v4, Lcom/flurry/sdk/iu;->a:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    .line 8191
    :cond_9
    :goto_9
    iget-object v0, p1, Lcom/flurry/sdk/iz;->s:Ljava/util/List;

    if-nez v0, :cond_a

    .line 191
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_b

    .line 193
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iv;

    .line 195
    invoke-virtual {v4}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_a

    .line 8199
    :cond_b
    :goto_b
    iget-boolean v0, p1, Lcom/flurry/sdk/iz;->t:Z

    .line 198
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8215
    iget-object v0, p1, Lcom/flurry/sdk/iz;->v:Ljava/util/List;

    if-eqz v0, :cond_d

    move v4, v5

    move v6, v4

    move v7, v6

    .line 205
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_e

    .line 206
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/it;

    .line 9031
    invoke-virtual {v8}, Lcom/flurry/sdk/it;->a()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v6, v8

    const v8, 0x27100

    if-le v6, v8, :cond_c

    const/4 v4, 0x5

    .line 208
    sget-object v6, Lcom/flurry/sdk/iy;->b:Ljava/lang/String;

    const-string v8, "Error Log size exceeded. No more event details logged."

    invoke-static {v4, v6, v8}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    move v7, v5

    .line 9207
    :cond_e
    :goto_d
    iget p1, p1, Lcom/flurry/sdk/iz;->u:I

    .line 217
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    move p1, v5

    :goto_e
    if-ge p1, v7, :cond_f

    .line 220
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/it;

    invoke-virtual {v4}, Lcom/flurry/sdk/it;->a()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 236
    :cond_f
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 243
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/iy;->a:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_10

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_f

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_10

    :catch_1
    move-exception p1

    :goto_f
    const/4 v1, 0x6

    .line 247
    :try_start_2
    sget-object v2, Lcom/flurry/sdk/iy;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    :goto_10
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/iy;->a:[B

    return-void
.end method
