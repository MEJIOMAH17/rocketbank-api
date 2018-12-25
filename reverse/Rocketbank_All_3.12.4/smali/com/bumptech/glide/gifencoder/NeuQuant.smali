.class final Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 123
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v1, 0x20

    .line 132
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    new-array p1, v0, [[I

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v0, :cond_0

    .line 151
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput-object v1, p3, p2

    .line 152
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object p3, p3, p2

    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0xc

    .line 153
    div-int/2addr v2, v0

    aput v2, p3, v1

    const/4 v1, 0x1

    aput v2, p3, v1

    aput v2, p3, p1

    .line 154
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v0, p3, p2

    .line 155
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final colorMap()[B
    .locals 10

    const/16 v0, 0x300

    .line 160
    new-array v0, v0, [B

    const/16 v1, 0x100

    .line 161
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 163
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v5, v4

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_1

    .line 166
    aget v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    .line 167
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    aget v8, v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    add-int/lit8 v5, v7, 0x1

    .line 168
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v5, 0x1

    .line 169
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v8, v6

    const/4 v8, 0x2

    aget v6, v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final inxbuild()V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    const/4 v5, 0x1

    if-ge v1, v4, :cond_5

    .line 189
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v1

    .line 191
    aget v7, v6, v5

    add-int/lit8 v8, v1, 0x1

    move v10, v1

    move v9, v7

    move v7, v8

    :goto_1
    if-ge v7, v4, :cond_1

    .line 194
    iget-object v11, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v11, v11, v7

    .line 195
    aget v12, v11, v5

    if-ge v12, v9, :cond_0

    .line 197
    aget v9, v11, v5

    move v10, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v4, v10

    if-eq v1, v10, :cond_2

    .line 203
    aget v7, v4, v0

    .line 204
    aget v10, v6, v0

    aput v10, v4, v0

    .line 205
    aput v7, v6, v0

    .line 206
    aget v7, v4, v5

    .line 207
    aget v10, v6, v5

    aput v10, v4, v5

    .line 208
    aput v7, v6, v5

    const/4 v7, 0x2

    .line 209
    aget v10, v4, v7

    .line 210
    aget v11, v6, v7

    aput v11, v4, v7

    .line 211
    aput v10, v6, v7

    const/4 v7, 0x3

    .line 212
    aget v10, v4, v7

    .line 213
    aget v11, v6, v7

    aput v11, v4, v7

    .line 214
    aput v10, v6, v7

    :cond_2
    if-eq v9, v2, :cond_4

    .line 218
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v9, :cond_3

    .line 220
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v1, v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    move v2, v9

    :cond_4
    move v1, v8

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v1, 0xff

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v0, v2

    add-int/2addr v2, v5

    :goto_3
    if-ge v2, v4, :cond_6

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final learn()V
    .locals 30

    move-object/from16 v0, p0

    .line 240
    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v2, 0x5e5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 241
    iput v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 242
    :cond_0
    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    sub-int/2addr v1, v3

    const/4 v4, 0x3

    div-int/2addr v1, v4

    const/16 v5, 0x1e

    add-int/2addr v5, v1

    iput v5, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 245
    iget v5, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 246
    iget v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    iget v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/2addr v7, v4

    div-int/2addr v6, v7

    .line 247
    div-int/lit8 v7, v6, 0x64

    const/16 v8, 0x800

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    const/16 v12, 0x400

    if-ge v10, v11, :cond_1

    .line 255
    iget-object v11, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v13, v10, v10

    rsub-int v13, v13, 0x400

    shl-int/lit8 v13, v13, 0x8

    div-int/2addr v13, v12

    mul-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget v10, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    if-ge v10, v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 261
    :cond_2
    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v4, v4, 0x1f3

    if-eqz v4, :cond_3

    const/16 v2, 0x5d9

    goto :goto_1

    .line 264
    :cond_3
    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v4, v4, 0x1eb

    if-eqz v4, :cond_4

    const/16 v2, 0x5c1

    goto :goto_1

    .line 267
    :cond_4
    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v4, v4, 0x1e7

    if-eqz v4, :cond_5

    const/16 v2, 0x5b5

    :cond_5
    :goto_1
    move v13, v7

    move v10, v8

    move v8, v12

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v4, v6, :cond_17

    .line 276
    aget-byte v14, v1, v7

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x4

    add-int/lit8 v15, v7, 0x1

    .line 277
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x4

    add-int/lit8 v16, v7, 0x2

    .line 278
    aget-byte v12, v1, v16

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x4

    const v16, 0x7fffffff

    move/from16 v21, v16

    move/from16 v22, v21

    const/4 v3, 0x0

    const/16 v16, -0x1

    const/16 v20, -0x1

    :goto_3
    const/16 v9, 0x100

    const/16 v24, 0x2

    if-ge v3, v9, :cond_b

    .line 1477
    iget-object v9, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v9, v9, v3

    const/16 v23, 0x0

    .line 1478
    aget v25, v9, v23

    move-object/from16 v26, v1

    sub-int v1, v25, v14

    if-gez v1, :cond_6

    neg-int v1, v1

    :cond_6
    const/16 v18, 0x1

    .line 1481
    aget v25, v9, v18

    move/from16 v27, v6

    sub-int v6, v25, v15

    if-gez v6, :cond_7

    neg-int v6, v6

    :cond_7
    add-int/2addr v1, v6

    .line 1485
    aget v6, v9, v24

    sub-int/2addr v6, v12

    if-gez v6, :cond_8

    neg-int v6, v6

    :cond_8
    add-int/2addr v1, v6

    move/from16 v6, v21

    if-ge v1, v6, :cond_9

    move/from16 v21, v1

    move/from16 v16, v3

    goto :goto_4

    :cond_9
    move/from16 v21, v6

    .line 1493
    :goto_4
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v6, v6, v3

    shr-int/lit8 v6, v6, 0xc

    sub-int/2addr v1, v6

    move/from16 v6, v22

    if-ge v1, v6, :cond_a

    move/from16 v22, v1

    move/from16 v20, v3

    goto :goto_5

    :cond_a
    move/from16 v22, v6

    .line 1498
    :goto_5
    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v1, v1, v3

    shr-int/lit8 v1, v1, 0xa

    .line 1499
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v9, v6, v3

    sub-int/2addr v9, v1

    aput v9, v6, v3

    .line 1500
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v9, v6, v3

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v9, v1

    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v26

    move/from16 v6, v27

    goto :goto_3

    :cond_b
    move-object/from16 v26, v1

    move/from16 v27, v6

    .line 1502
    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v3, v1, v16

    add-int/lit8 v3, v3, 0x40

    aput v3, v1, v16

    .line 1503
    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v3, v1, v16

    const/high16 v6, 0x10000

    sub-int/2addr v3, v6

    aput v3, v1, v16

    .line 2451
    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v20

    const/4 v3, 0x0

    .line 2452
    aget v6, v1, v3

    aget v16, v1, v3

    sub-int v16, v16, v14

    mul-int v9, v8, v16

    const/16 v3, 0x400

    div-int/2addr v9, v3

    sub-int/2addr v6, v9

    const/4 v9, 0x0

    aput v6, v1, v9

    const/4 v6, 0x1

    .line 2453
    aget v9, v1, v6

    aget v16, v1, v6

    sub-int v16, v16, v15

    mul-int v6, v8, v16

    div-int/2addr v6, v3

    sub-int/2addr v9, v6

    const/4 v6, 0x1

    aput v9, v1, v6

    .line 2454
    aget v6, v1, v24

    aget v9, v1, v24

    sub-int/2addr v9, v12

    mul-int/2addr v9, v8

    div-int/2addr v9, v3

    sub-int/2addr v6, v9

    aput v6, v1, v24

    if-eqz v11, :cond_11

    sub-int v1, v20, v11

    const/4 v6, -0x1

    if-ge v1, v6, :cond_c

    move v1, v6

    :cond_c
    add-int v9, v20, v11

    const/16 v6, 0x100

    if-le v9, v6, :cond_d

    goto :goto_6

    :cond_d
    move v6, v9

    :goto_6
    add-int/lit8 v9, v20, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v3, v20

    const/16 v16, 0x1

    :goto_7
    if-lt v9, v6, :cond_e

    if-le v3, v1, :cond_11

    :cond_e
    move/from16 v28, v11

    .line 3422
    iget-object v11, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v17, v16, 0x1

    aget v11, v11, v16

    const/high16 v16, 0x40000

    if-ge v9, v6, :cond_f

    move/from16 v29, v6

    .line 3424
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v19, v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    .line 3426
    :try_start_0
    aget v20, v6, v9

    aget v21, v6, v9

    sub-int v21, v21, v14

    mul-int v21, v21, v11

    div-int v21, v21, v16

    sub-int v20, v20, v21

    aput v20, v6, v9

    const/4 v9, 0x1

    .line 3427
    aget v18, v6, v9

    aget v20, v6, v9

    sub-int v20, v20, v15

    mul-int v20, v20, v11

    div-int v20, v20, v16

    sub-int v18, v18, v20

    aput v18, v6, v9

    .line 3428
    aget v9, v6, v24

    aget v20, v6, v24

    sub-int v20, v20, v12

    mul-int v20, v20, v11

    div-int v20, v20, v16

    sub-int v9, v9, v20

    aput v9, v6, v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move/from16 v9, v19

    goto :goto_8

    :cond_f
    move/from16 v29, v6

    :goto_8
    if-le v3, v1, :cond_10

    .line 3433
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v19, v3, -0x1

    aget-object v3, v6, v3

    const/16 v23, 0x0

    .line 3435
    :try_start_1
    aget v6, v3, v23

    aget v20, v3, v23

    sub-int v20, v20, v14

    mul-int v20, v20, v11

    div-int v20, v20, v16

    sub-int v6, v6, v20

    aput v6, v3, v23

    const/4 v6, 0x1

    .line 3436
    aget v18, v3, v6

    aget v20, v3, v6

    sub-int v20, v20, v15

    mul-int v20, v20, v11

    div-int v20, v20, v16

    sub-int v18, v18, v20

    aput v18, v3, v6

    .line 3437
    aget v6, v3, v24

    aget v20, v3, v24

    sub-int v20, v20, v12

    mul-int v11, v11, v20

    div-int v11, v11, v16

    sub-int/2addr v6, v11

    aput v6, v3, v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move/from16 v16, v17

    move/from16 v3, v19

    goto :goto_9

    :cond_10
    const/16 v23, 0x0

    move/from16 v16, v17

    :goto_9
    move/from16 v11, v28

    move/from16 v6, v29

    goto/16 :goto_7

    :cond_11
    move/from16 v28, v11

    const/16 v23, 0x0

    add-int/2addr v7, v2

    if-lt v7, v5, :cond_12

    .line 287
    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int/2addr v7, v1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    if-nez v13, :cond_13

    const/4 v13, 0x1

    .line 292
    :cond_13
    rem-int v1, v4, v13

    if-nez v1, :cond_16

    .line 293
    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v1, v8, v1

    sub-int/2addr v8, v1

    .line 294
    div-int/lit8 v1, v10, 0x1e

    sub-int/2addr v10, v1

    shr-int/lit8 v9, v10, 0x6

    const/4 v1, 0x1

    if-gt v9, v1, :cond_14

    move/from16 v11, v23

    goto :goto_a

    :cond_14
    move v11, v9

    :goto_a
    move/from16 v3, v23

    :goto_b
    if-ge v3, v11, :cond_15

    .line 299
    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v9, v11, v11

    mul-int v12, v3, v3

    sub-int v12, v9, v12

    shl-int/lit8 v12, v12, 0x8

    div-int/2addr v12, v9

    mul-int/2addr v12, v8

    aput v12, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    move v3, v1

    move-object/from16 v1, v26

    move/from16 v6, v27

    goto :goto_c

    :cond_16
    move-object/from16 v1, v26

    move/from16 v6, v27

    move/from16 v11, v28

    const/4 v3, 0x1

    :goto_c
    const/16 v12, 0x400

    goto/16 :goto_2

    :cond_17
    return-void
.end method

.method public final map(III)I
    .locals 12

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v0, v0, p2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    move v4, v3

    move v3, v2

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-lt v0, v5, :cond_2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v0, v5, :cond_7

    .line 324
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v10, v10, v0

    .line 325
    aget v11, v10, v9

    sub-int/2addr v11, p2

    if-lt v11, v4, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-gez v11, :cond_4

    neg-int v11, v11

    .line 332
    :cond_4
    aget v5, v10, v8

    sub-int/2addr v5, p1

    if-gez v5, :cond_5

    neg-int v5, v5

    :cond_5
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 337
    aget v5, v10, v7

    sub-int/2addr v5, p3

    if-gez v5, :cond_6

    neg-int v5, v5

    :cond_6
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 343
    aget v3, v10, v6

    move v4, v11

    :cond_7
    :goto_2
    if-ltz v1, :cond_0

    .line 349
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v5, v1

    .line 350
    aget v9, v5, v9

    sub-int v9, p2, v9

    if-lt v9, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x1

    if-gez v9, :cond_9

    neg-int v9, v9

    .line 357
    :cond_9
    aget v8, v5, v8

    sub-int/2addr v8, p1

    if-gez v8, :cond_a

    neg-int v8, v8

    :cond_a
    add-int/2addr v9, v8

    if-ge v9, v4, :cond_0

    .line 362
    aget v7, v5, v7

    sub-int/2addr v7, p3

    if-gez v7, :cond_b

    neg-int v7, v7

    :cond_b
    add-int/2addr v7, v9

    if-ge v7, v4, :cond_0

    .line 368
    aget v3, v5, v6

    move v4, v7

    goto :goto_0
.end method

.method public final unbiasnet()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v0

    .line 395
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
