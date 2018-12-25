.class public Lcom/flurry/sdk/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "iw"


# instance fields
.field public a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJJ",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iy;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/jm;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    .line 28
    iput-object v5, v1, Lcom/flurry/sdk/iw;->a:[B

    const/4 v6, 0x6

    .line 43
    :try_start_0
    new-instance v7, Lcom/flurry/sdk/jx;

    invoke-direct {v7}, Lcom/flurry/sdk/jx;-><init>()V

    .line 44
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    new-instance v9, Ljava/security/DigestOutputStream;

    invoke-direct {v9, v8, v7}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 46
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v11, 0x1e

    .line 48
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v11, 0x0

    .line 51
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/16 v12, 0x0

    .line 54
    invoke-virtual {v10, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 55
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v12, 0x3

    .line 57
    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 58
    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-wide/from16 v13, p14

    .line 59
    invoke-virtual {v10, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object/from16 v13, p1

    .line 60
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v13, p2

    .line 61
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 64
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->size()I

    move-result v13

    .line 65
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/flurry/sdk/jm;

    iget v15, v15, Lcom/flurry/sdk/jm;->c:I

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 69
    array-length v15, v14

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v13, p3

    .line 76
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move/from16 v13, p4

    .line 79
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move-wide/from16 v13, p5

    .line 81
    invoke-virtual {v10, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-wide/from16 v13, p7

    .line 82
    invoke-virtual {v10, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 86
    invoke-virtual {v10, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v13, "device.model"

    .line 87
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.brand"

    .line 90
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.id"

    .line 93
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "version.release"

    .line 96
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.device"

    .line 99
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v13, "build.product"

    .line 102
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 103
    sget-object v13, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p11, :cond_1

    .line 106
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v11

    .line 107
    :goto_1
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p11, :cond_3

    .line 110
    sget-object v13, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v14, "sending referrer values because it exists"

    invoke-static {v12, v13, v14}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 113
    sget-object v14, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "Referrer Entry:  "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v12, v14, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "referrer key is :"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v5, v14}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 119
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 120
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    sget-object v14, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v15, "referrer value is :"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v14, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 127
    :cond_3
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz p12, :cond_4

    .line 130
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v11

    .line 132
    :goto_4
    sget-object v5, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v13, "optionsMapSize is:  "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v5, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p12, :cond_6

    .line 137
    sget-object v5, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v13, "sending launch options"

    invoke-static {v12, v5, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 140
    sget-object v13, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Launch Options Key:  "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 146
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    sget-object v14, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v15, "Launch Options value is :"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v14, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz p13, :cond_7

    .line 153
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v11

    .line 155
    :goto_6
    sget-object v5, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v13, "numOriginAttributions is:  "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v5, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p13, :cond_b

    .line 160
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 161
    sget-object v4, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Origin Atttribute Key:  "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 164
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    sget-object v4, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Origin Attribute Map Size for "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":  "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 169
    sget-object v13, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Origin Atttribute for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_8

    :cond_9
    const-string v13, ""

    :goto_8
    invoke-virtual {v10, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_9

    :cond_a
    const-string v5, ""

    :goto_9
    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    .line 177
    :cond_b
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 1097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 177
    invoke-static {v2}, Lcom/flurry/sdk/lo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 179
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v11

    :goto_a
    if-ge v3, v2, :cond_c

    move-object/from16 v4, p9

    .line 183
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/iy;

    .line 1255
    iget-object v5, v5, Lcom/flurry/sdk/iy;->a:[B

    .line 184
    invoke-virtual {v10, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 188
    :cond_c
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 191
    invoke-virtual {v9, v11}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 192
    invoke-virtual {v7}, Lcom/flurry/sdk/jx;->a()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 194
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 195
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {v10}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v5, v10

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    .line 197
    :goto_b
    :try_start_2
    sget-object v3, Lcom/flurry/sdk/iw;->b:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v6, v3, v4, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 199
    invoke-static {v5}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    const/4 v5, 0x0

    .line 202
    :goto_c
    iput-object v5, v1, Lcom/flurry/sdk/iw;->a:[B

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v10, v5

    .line 199
    :goto_d
    invoke-static {v10}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v2
.end method
